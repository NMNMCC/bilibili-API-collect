# TypeSpec API Definitions

This directory contains TypeSpec definitions for the Bilibili API. TypeSpec is a language for describing APIs that can generate OpenAPI specifications, client SDKs, and documentation.

## Overview

TypeSpec provides a more structured and machine-readable format for API documentation compared to Markdown. This enables:

- **SDK Generation**: Automatically generate client libraries for multiple programming languages
- **OpenAPI Export**: Generate OpenAPI 3.0 specifications for use with various tools
- **Type Safety**: Strongly-typed API definitions with validation
- **Better Tooling**: IDE support, linting, and automated validation

## Project Structure

```
typespec/
├── main.tsp              # Main entry point with common models
├── user/
│   └── info.tsp         # User information APIs
├── login/
│   └── qrcode.tsp       # Login/authentication APIs
└── ...                   # Additional API modules
```

## Building

To compile TypeSpec definitions and generate OpenAPI specifications:

```bash
# Compile TypeSpec definitions
npm run typespec:compile

# Watch for changes and recompile automatically
npm run typespec:watch

# Format TypeSpec files
npm run typespec:format
```

The compiled OpenAPI specification will be output to `tsp-output/@typespec/openapi3/openapi.yaml`.

## Migration Status

The migration from Markdown to TypeSpec is currently in progress. This initial implementation includes:

- [x] TypeSpec project setup and configuration
- [x] Common models (ApiResponse, error codes)
- [x] User information API (user/info.tsp)
- [x] QR code login API (login/qrcode.tsp)
- [ ] Remaining API endpoints (195 total Markdown files to migrate)

## Contributing

When adding new API definitions:

1. Create a `.tsp` file in the appropriate subdirectory (matching the structure in `docs/`)
2. Define models using TypeSpec syntax
3. Define interface operations with proper HTTP decorators
4. Add imports to `main.tsp`
5. Compile and verify the output

See the [TypeSpec documentation](https://typespec.io/) for syntax and best practices.

## Relation to Markdown Documentation

The TypeSpec definitions complement the existing Markdown documentation:

- **Markdown**: Human-readable documentation with examples, explanations, and context
- **TypeSpec**: Machine-readable API definitions for tooling and SDK generation

Both formats will be maintained during the migration process. The Markdown documentation provides valuable context that TypeSpec cannot fully capture, while TypeSpec enables automated tooling and SDK generation that Markdown cannot provide.
