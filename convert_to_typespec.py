#!/usr/bin/env python3
"""
Bilibili API Markdown to TypeSpec Converter
Converts all Markdown API documentation to TypeSpec format
"""

import os
import re
import json
from pathlib import Path
from typing import List, Dict, Tuple, Optional

class MarkdownParser:
    """Parse Markdown API documentation"""
    
    def __init__(self, content: str, filepath: str):
        self.content = content
        self.filepath = filepath
        self.apis = []
        
    def parse(self) -> List[Dict]:
        """Parse all APIs from markdown file"""
        # Split by API sections (## headers)
        sections = re.split(r'\n## ', self.content)
        
        for i, section in enumerate(sections):
            if i == 0:
                continue  # Skip the first part (title)
            
            api_data = self._parse_api_section('## ' + section)
            if api_data:
                self.apis.append(api_data)
        
        return self.apis
    
    def _parse_api_section(self, section: str) -> Optional[Dict]:
        """Parse a single API section"""
        lines = section.split('\n')
        
        # Get API title
        title_match = re.match(r'##\s+(.+)', lines[0])
        if not title_match:
            return None
        
        title = title_match.group(1).strip()
        
        # Find API URL
        url = None
        method = 'GET'
        for line in lines:
            url_match = re.match(r'>\s+(https?://[^\s]+)', line)
            if url_match:
                url = url_match.group(1)
                break
        
        if not url:
            return None
        
        # Extract path from URL
        path_match = re.search(r'https?://[^/]+(/[^\s?]*)', url)
        path = path_match.group(1) if path_match else '/'
        
        # Find method
        for line in lines:
            method_match = re.search(r'\*请求方式[：:]\s*(\w+)\*', line)
            if method_match:
                method = method_match.group(1).upper()
                break
        
        # Parse parameters
        params = self._parse_parameters(section)
        
        # Parse response
        response = self._parse_response(section)
        
        return {
            'title': title,
            'path': path,
            'method': method,
            'url': url,
            'params': params,
            'response': response
        }
    
    def _parse_parameters(self, section: str) -> List[Dict]:
        """Parse parameter tables"""
        params = []
        
        # Find parameter tables
        in_table = False
        param_type = 'query'  # Default to query params
        
        lines = section.split('\n')
        for i, line in enumerate(lines):
            # Detect parameter section
            if 'url参数' in line or 'URL参数' in line:
                param_type = 'query'
                in_table = False
            elif '正文参数' in line or 'POST参数' in line or 'body参数' in line:
                param_type = 'body'
                in_table = False
            
            # Parse table rows
            if '|' in line and '参数名' not in line and '---' not in line:
                parts = [p.strip() for p in line.split('|') if p.strip()]
                if len(parts) >= 3:
                    param_name = parts[0]
                    param_data_type = parts[1] if len(parts) > 1 else 'str'
                    description = parts[2] if len(parts) > 2 else ''
                    required = len(parts) > 3 and '必要' in parts[3]
                    
                    if param_name and param_name not in ['参数名', '字段']:
                        params.append({
                            'name': param_name,
                            'type': self._convert_type(param_data_type),
                            'in': param_type,
                            'required': required,
                            'description': description
                        })
        
        return params
    
    def _parse_response(self, section: str) -> Dict:
        """Parse response structure"""
        response = {
            'models': []
        }
        
        lines = section.split('\n')
        current_model = None
        
        for i, line in enumerate(lines):
            # Detect model definitions
            model_match = re.search(r'`([^`]+)`\s*[中的]*对象[：:]?', line)
            if model_match:
                model_name = model_match.group(1)
                current_model = {
                    'name': model_name,
                    'fields': []
                }
                response['models'].append(current_model)
                continue
            
            # Parse table rows for current model
            if current_model and '|' in line and '字段' not in line and '---' not in line:
                parts = [p.strip() for p in line.split('|') if p.strip()]
                if len(parts) >= 3:
                    field_name = parts[0]
                    field_type = parts[1] if len(parts) > 1 else 'str'
                    description = parts[2] if len(parts) > 2 else ''
                    
                    if field_name and field_name not in ['字段', '参数名']:
                        current_model['fields'].append({
                            'name': field_name,
                            'type': self._convert_type(field_type),
                            'description': description
                        })
        
        return response
    
    def _convert_type(self, md_type: str) -> str:
        """Convert Markdown type to TypeSpec type"""
        md_type = md_type.lower().strip()
        
        type_map = {
            'num': 'int64',
            'number': 'int64',
            'int': 'int32',
            'str': 'string',
            'string': 'string',
            'bool': 'boolean',
            'boolean': 'boolean',
            'obj': 'Record<unknown>',
            'object': 'Record<unknown>',
            'arr': 'unknown[]',
            'array': 'unknown[]',
            'null': 'null',
        }
        
        return type_map.get(md_type, 'unknown')


class TypeSpecGenerator:
    """Generate TypeSpec definitions from parsed API data"""
    
    def __init__(self, module_name: str):
        self.module_name = module_name
        self.namespace = self._get_namespace(module_name)
        
    def _get_namespace(self, module_name: str) -> str:
        """Convert module path to namespace"""
        parts = module_name.split('/')
        # Capitalize each part
        capitalized = [p.capitalize().replace('_', '') for p in parts if p]
        return '.'.join(capitalized)
    
    def generate(self, apis: List[Dict]) -> str:
        """Generate TypeSpec file content"""
        lines = []
        
        # Imports
        lines.append('import "@typespec/http";')
        lines.append('import "@typespec/rest";')
        lines.append('')
        lines.append('using TypeSpec.Http;')
        lines.append('using TypeSpec.Rest;')
        lines.append('')
        
        # Namespace
        lines.append(f'namespace BilibiliAPI.{self.namespace};')
        lines.append('')
        
        # Generate interfaces and models for each API
        for api in apis:
            interface_name = self._to_interface_name(api['title'])
            
            # Interface
            lines.append(f'/**')
            lines.append(f' * {api["title"]}')
            lines.append(f' */')
            lines.append(f'@route("{api["path"]}")')
            lines.append(f'@tag("{self.namespace}")')
            lines.append(f'interface {interface_name} {{')
            
            # Operation
            method_decorator = f'@{api["method"].lower()}'
            lines.append(f'  {method_decorator}')
            lines.append(f'  @doc("{api["title"]}")')
            
            # Build operation signature
            operation_name = self._to_operation_name(api['title'])
            params_str = self._generate_params(api['params'])
            
            response_type = 'ApiResponse<unknown>'
            if api['response']['models']:
                first_model = api['response']['models'][0]
                model_name = self._to_model_name(first_model['name'])
                response_type = f'ApiResponse<{model_name}>'
            
            lines.append(f'  {operation_name}({params_str}): {response_type};')
            lines.append('}')
            lines.append('')
            
            # Models
            for model in api['response']['models']:
                model_lines = self._generate_model(model)
                lines.extend(model_lines)
                lines.append('')
        
        return '\n'.join(lines)
    
    def _to_interface_name(self, title: str) -> str:
        """Convert title to interface name"""
        # Remove special characters and capitalize
        name = re.sub(r'[^\w\s]', '', title)
        name = ''.join(word.capitalize() for word in name.split())
        return name or 'ApiInterface'
    
    def _to_operation_name(self, title: str) -> str:
        """Convert title to operation name"""
        name = re.sub(r'[^\w\s]', '', title)
        words = name.split()
        if not words:
            return 'operation'
        return words[0].lower() + ''.join(word.capitalize() for word in words[1:])
    
    def _to_model_name(self, name: str) -> str:
        """Convert model name to PascalCase"""
        name = re.sub(r'[^\w\s]', '', name)
        return ''.join(word.capitalize() for word in name.split()) or 'DataModel'
    
    def _to_field_name(self, name: str) -> str:
        """Convert field name to camelCase or keep as is"""
        # Handle invalid identifiers
        if not name:
            return 'field'
        
        # If starts with digit, prefix with underscore
        if name[0].isdigit():
            name = f'_{name}'
        
        # Replace invalid characters with underscores
        name = re.sub(r'[^\w]', '_', name)
        
        # If it's a reserved keyword or invalid, quote it
        if name in ['-', '+', '*', '/'] or not name[0].isalpha() and name[0] != '_':
            return f'`{name}`'
        
        return name
    
    def _generate_params(self, params: List[Dict]) -> str:
        """Generate parameter list for operation"""
        if not params:
            return ''
        
        param_strs = []
        for param in params:
            param_name = self._sanitize_identifier(param['name'])
            decorator = f'@{param["in"]}'
            optional = '' if param['required'] else '?'
            desc_text = self._escape_string(param.get('description', ''))
            desc = f'@doc("{desc_text}") ' if desc_text else ''
            param_strs.append(f'\n    {decorator} {desc}{param_name}{optional}: {param["type"]}')
        
        return ','.join(param_strs) + ',\n  '
    
    def _sanitize_identifier(self, name: str) -> str:
        """Sanitize identifier to be valid TypeSpec"""
        if not name:
            return 'field'
        
        # TypeSpec reserved keywords
        reserved = {'model', 'namespace', 'interface', 'enum', 'union', 'using', 'import', 
                   'extends', 'is', 'alias', 'op', 'return', 'void', 'never', 'unknown', 
                   'true', 'false', 'null', 'if', 'else', 'for', 'while'}
        
        # Replace invalid characters
        name = re.sub(r'[^\w]', '_', name)
        
        # If starts with digit, prefix with 'field_'
        if name and name[0].isdigit():
            name = f'field_{name}'
        
        # If reserved keyword, append underscore
        if name.lower() in reserved:
            name = f'{name}_'
        
        # If empty or invalid, use default
        if not name or (not name[0].isalpha() and name[0] != '_'):
            return 'field'
        
        return name
    
    def _escape_string(self, text: str) -> str:
        """Escape string for use in TypeSpec"""
        if not text:
            return ''
        # Escape quotes and backslashes
        text = text.replace('\\', '\\\\')
        text = text.replace('"', '\\"')
        # Remove problematic characters
        text = text.replace('\n', ' ')
        text = text.replace('\r', ' ')
        return text
    
    def _generate_model(self, model: Dict) -> List[str]:
        """Generate model definition"""
        lines = []
        
        model_name = self._to_model_name(model['name'])
        
        # Avoid reserved keywords in model names
        if model_name.lower() in {'model', 'data', 'interface', 'enum'}:
            model_name = f'{model_name}Model'
        
        lines.append(f'/**')
        lines.append(f' * {model["name"]} 对象')
        lines.append(f' */')
        lines.append(f'@doc("{model["name"]} 数据模型")')
        lines.append(f'model {model_name} {{')
        
        for field in model['fields']:
            desc_text = self._escape_string(field.get('description', ''))
            if desc_text:
                lines.append(f'  @doc("{desc_text}")')
            field_name = self._sanitize_identifier(field['name'])
            lines.append(f'  {field_name}?: {field["type"]};')
            lines.append('')
        
        lines.append('}')
        
        return lines


def convert_markdown_to_typespec(md_path: Path, output_base: Path):
    """Convert a single Markdown file to TypeSpec"""
    print(f"Converting: {md_path}")
    
    # Read markdown file
    with open(md_path, 'r', encoding='utf-8') as f:
        content = f.read()
    
    # Parse
    parser = MarkdownParser(content, str(md_path))
    apis = parser.parse()
    
    if not apis:
        print(f"  No APIs found in {md_path}")
        return
    
    # Get module path
    rel_path = md_path.relative_to('docs')
    module_path = str(rel_path.parent) if rel_path.parent != Path('.') else ''
    
    # Generate TypeSpec
    generator = TypeSpecGenerator(module_path)
    typespec_content = generator.generate(apis)
    
    # Create output directory
    output_dir = output_base / rel_path.parent
    output_dir.mkdir(parents=True, exist_ok=True)
    
    # Write TypeSpec file
    output_file = output_dir / (rel_path.stem + '.tsp')
    with open(output_file, 'w', encoding='utf-8') as f:
        f.write(typespec_content)
    
    print(f"  Generated: {output_file}")
    return str(output_file.relative_to(output_base))


def main():
    """Main conversion function"""
    docs_dir = Path('docs')
    output_dir = Path('typespec')
    
    # Find all markdown files
    md_files = sorted(docs_dir.rglob('*.md'))
    
    print(f"Found {len(md_files)} Markdown files to convert")
    print("=" * 60)
    
    converted_files = []
    
    for md_file in md_files:
        try:
            result = convert_markdown_to_typespec(md_file, output_dir)
            if result:
                converted_files.append(result)
        except Exception as e:
            print(f"  ERROR: {e}")
    
    print("=" * 60)
    print(f"Conversion complete! Converted {len(converted_files)} files")
    
    # Generate main.tsp with all imports
    generate_main_tsp(converted_files, output_dir)


def generate_main_tsp(converted_files: List[str], output_dir: Path):
    """Generate main.tsp file with all imports"""
    print("\nGenerating main.tsp with imports...")
    
    lines = []
    
    # Header
    lines.append('import "@typespec/http";')
    lines.append('import "@typespec/rest";')
    lines.append('import "@typespec/openapi3";')
    lines.append('')
    
    # Import all converted files
    for file_path in sorted(converted_files):
        lines.append(f'import "./{file_path}";')
    
    lines.append('')
    lines.append('using TypeSpec.Http;')
    lines.append('using TypeSpec.Rest;')
    lines.append('')
    
    # Namespace and common models
    lines.append('/**')
    lines.append(' * Bilibili API Collection')
    lines.append(' * ')
    lines.append(' * This specification describes the unofficial Bilibili API endpoints')
    lines.append(' * collected and documented by the community.')
    lines.append(' * ')
    lines.append(' * @see https://github.com/SocialSisterYi/bilibili-API-collect')
    lines.append(' */')
    lines.append('@service(#{')
    lines.append('  title: "Bilibili API",')
    lines.append('})')
    lines.append('@server("https://api.bilibili.com", "Production server")')
    lines.append('@server("https://passport.bilibili.com", "Passport/Login server")')
    lines.append('namespace BilibiliAPI;')
    lines.append('')
    lines.append('/**')
    lines.append(' * Common response wrapper for most Bilibili APIs')
    lines.append(' */')
    lines.append('@doc("Standard API response wrapper")')
    lines.append('model ApiResponse<T> {')
    lines.append('  @doc("Response code. 0 means success")')
    lines.append('  code: int32;')
    lines.append('  ')
    lines.append('  @doc("Response message or error message")')
    lines.append('  message: string;')
    lines.append('  ')
    lines.append('  @doc("Time to live (usually 1)")')
    lines.append('  ttl: int32;')
    lines.append('  ')
    lines.append('  @doc("Response data payload")')
    lines.append('  data?: T;')
    lines.append('}')
    lines.append('')
    
    # Write main.tsp
    main_file = output_dir / 'main.tsp'
    with open(main_file, 'w', encoding='utf-8') as f:
        f.write('\n'.join(lines))
    
    print(f"Generated {main_file}")


if __name__ == '__main__':
    main()
