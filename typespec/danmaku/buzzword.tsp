import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Danmaku;

/**
 * 拉取名词解释列表
 */
@route("/x/v2/dm/buzzword/list")
@tag("Danmaku")
interface 拉取名词解释列表 {
  @get
  @doc("拉取名词解释列表")
  拉取名词解释列表(
    @query @doc("名词类型") type_id: int64,
    @query @doc("页码") pn: int64,
    @query @doc("每页项数") ps: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("数据本体") data?: Record<unknown>,
    @query @doc("类型信息") type?: Record<unknown>,
    @query @doc("词语列表") buzzwords?: unknown[],
    @query @doc("页面信息") page?: Record<unknown>,
    @query @doc("类型 id") id?: int64,
    @query @doc("类型名称") name?: string,
    @query @doc("拼音信息") name_pinyin?: Record<unknown>,
    @query @doc("内容") 项?: unknown,
    @query @doc("名词条目 1") field_0?: Record<unknown>,
    @query @doc("名词条目（n+1）") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("名词 id") id?: int64,
    @query @doc("名词") name?: string,
    @query @doc("拼音信息") name_pinyin?: Record<unknown>,
    @query @doc("名词图片 url") picture?: string,
    @query @doc("当前页码") num?: int64,
    @query @doc("每页项数") size?: int64,
    @query @doc("总计项数") total?: int64,
    @query @doc("(?)") cnt?: int64,
    @query @doc("拼音字串") 对应单个汉字_1?: string,
    @query @doc("拼音字串") 对应单个汉字_n?: string,
    @query @doc("……") __?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("类型信息")
  type?: Record<unknown>;

  @doc("词语列表")
  buzzwords?: unknown[];

  @doc("页面信息")
  page?: Record<unknown>;

}

/**
 * type 对象
 */
@doc("type 数据模型")
model Type {
  @doc("类型 id")
  id?: int64;

  @doc("类型名称")
  name?: string;

  @doc("拼音信息")
  name_pinyin?: Record<unknown>;

  @doc("内容")
  项?: unknown;

  @doc("名词条目 1")
  field_0?: Record<unknown>;

  @doc("名词条目（n+1）")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("名词 id")
  id?: int64;

  @doc("名词")
  name?: string;

  @doc("拼音信息")
  name_pinyin?: Record<unknown>;

  @doc("名词图片 url")
  picture?: string;

}

/**
 * page 对象
 */
@doc("page 数据模型")
model Page {
  @doc("当前页码")
  num?: int64;

  @doc("每页项数")
  size?: int64;

  @doc("总计项数")
  total?: int64;

  @doc("(?)")
  cnt?: int64;

}

/**
 * name_pinyin 对象
 */
@doc("name_pinyin 数据模型")
model Name_pinyin {
  @doc("拼音字串")
  对应单个汉字_1?: string;

  @doc("拼音字串")
  对应单个汉字_n?: string;

  @doc("……")
  __?: string;

}

/**
 * 查询名词解释详情
 */
@route("/x/v2/dm/buzzword/detail")
@tag("Danmaku")
interface 查询名词解释详情 {
  @get
  @doc("查询名词解释详情")
  查询名词解释详情(
    @query @doc("名词id") id: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("数据本体") data?: unknown,
    @query @doc("名词id") id?: int64,
    @query @doc("名词") name?: string,
    @query @doc("名词解释") description?: string,
    @query @doc("名词图片 url") picture?: string,
    @query @doc("父分类列表") types?: unknown[],
    @query @doc("近义词/相关词") related_words?: unknown[],
    @query @doc("相关 UP 列表") uppers?: unknown,
    @query @doc("相关 ucg 视频列表") related_ugc?: unknown,
    @query @doc("相关 pgc 视频列表") related_ogv?: unknown,
    @query @doc("推荐创作信息") guides?: Record<unknown>,
    @query @doc("推荐名词列表") related_buzzwords?: unknown[],
    @query @doc("关联话题信息") topic?: Record<unknown>,
    @query @doc("是否展示话题动态聚合") show_dynamic?: boolean,
    @query @doc("内容") 项?: unknown,
    @query @doc("父分类 1") field_0?: Record<unknown>,
    @query @doc("父分类（n+1）") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("类型 id") id?: int64,
    @query @doc("类型名称") name?: string,
    @query @doc("权重？") level?: int64,
    @query @doc("内容") 项?: unknown,
    @query @doc("近义词/相关词1") field_0?: string,
    @query @doc("近义词/相关词（n+1）") n?: string,
    @query @doc("……") __?: string,
    @query @doc("内容") 项?: unknown,
    @query @doc("相关 UP 1") field_0?: Record<unknown>,
    @query @doc("相关 UP（n+1）") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("UP 主 mid") id?: int64,
    @query @doc("UP 主昵称") name?: string,
    @query @doc("UP 主头像 url") face?: string,
    @query @doc("UP 主认证信息") official?: Record<unknown>,
    @query @doc("是否关注") followed?: boolean,
    @query @doc("粉丝数") fans_count?: int64,
    @query @doc("内容") 项?: unknown,
    @query @doc("相关 ucg 视频 1") field_0?: Record<unknown>,
    @query @doc("相关 ucg 视频（n+1）") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("稿件 avid") aid?: int64,
    @query @doc("视频 cid") cid?: int64,
    @query @doc("视频标题") name?: string,
    @query @doc("空") link?: string,
    @query @doc("播放数") play?: int64,
    @query @doc("弹幕数") danmaku?: int64,
    @query @doc("视频时长") duration?: int64,
    @query @doc("视频封面 url") cover?: string,
    @query @doc("内容") 项?: unknown,
    @query @doc("相关 pgc 视频 1") field_0?: Record<unknown>,
    @query @doc("相关 pgc 视频（n+1）") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("剧集 ssid") season_id?: int64,
    @query @doc("剧集标题") name?: string,
    @query @doc("播放数") play?: int64,
    @query @doc("追剧/番数") followed?: int64,
    @query @doc("是否追剧/番") is_followed?: boolean,
    @query @doc("最新一集信息") new_ep?: string,
    @query @doc("剧集封面 url") cover?: string,
    @query @doc("创作推介文案") description?: string,
    @query @doc("创作跳转按钮信息") contribute_tags?: unknown[],
    @query @doc("内容") 项?: unknown,
    @query @doc("创作跳转按钮 1") field_0?: Record<unknown>,
    @query @doc("创作跳转按钮（n+1）") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("按钮文案") title?: string,
    @query @doc("跳转 uri") link?: string,
    @query @doc("内容") 项?: unknown,
    @query @doc("推荐名词 1") field_0?: Record<unknown>,
    @query @doc("推荐名词（n+1）") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("名词 id") id?: int64,
    @query @doc("名词") name?: string,
    @query @doc("空") picture?: string,
    @query @doc("关联话题id") topic_id?: int64,
    @query @doc("关联话题名称") topic_name?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("名词id")
  id?: int64;

  @doc("名词")
  name?: string;

  @doc("名词解释")
  description?: string;

  @doc("名词图片 url")
  picture?: string;

  @doc("父分类列表")
  types?: unknown[];

  @doc("近义词/相关词")
  related_words?: unknown[];

  @doc("相关 UP 列表")
  uppers?: unknown;

  @doc("相关 ucg 视频列表")
  related_ugc?: unknown;

  @doc("相关 pgc 视频列表")
  related_ogv?: unknown;

  @doc("推荐创作信息")
  guides?: Record<unknown>;

  @doc("推荐名词列表")
  related_buzzwords?: unknown[];

  @doc("关联话题信息")
  topic?: Record<unknown>;

  @doc("是否展示话题动态聚合")
  show_dynamic?: boolean;

  @doc("内容")
  项?: unknown;

  @doc("父分类 1")
  field_0?: Record<unknown>;

  @doc("父分类（n+1）")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("类型 id")
  id?: int64;

  @doc("类型名称")
  name?: string;

  @doc("权重？")
  level?: int64;

  @doc("内容")
  项?: unknown;

  @doc("近义词/相关词1")
  field_0?: string;

  @doc("近义词/相关词（n+1）")
  n?: string;

  @doc("……")
  __?: string;

  @doc("内容")
  项?: unknown;

  @doc("相关 UP 1")
  field_0?: Record<unknown>;

  @doc("相关 UP（n+1）")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("UP 主 mid")
  id?: int64;

  @doc("UP 主昵称")
  name?: string;

  @doc("UP 主头像 url")
  face?: string;

  @doc("UP 主认证信息")
  official?: Record<unknown>;

  @doc("是否关注")
  followed?: boolean;

  @doc("粉丝数")
  fans_count?: int64;

  @doc("内容")
  项?: unknown;

  @doc("相关 ucg 视频 1")
  field_0?: Record<unknown>;

  @doc("相关 ucg 视频（n+1）")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("稿件 avid")
  aid?: int64;

  @doc("视频 cid")
  cid?: int64;

  @doc("视频标题")
  name?: string;

  @doc("空")
  link?: string;

  @doc("播放数")
  play?: int64;

  @doc("弹幕数")
  danmaku?: int64;

  @doc("视频时长")
  duration?: int64;

  @doc("视频封面 url")
  cover?: string;

  @doc("内容")
  项?: unknown;

  @doc("相关 pgc 视频 1")
  field_0?: Record<unknown>;

  @doc("相关 pgc 视频（n+1）")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("剧集 ssid")
  season_id?: int64;

  @doc("剧集标题")
  name?: string;

  @doc("播放数")
  play?: int64;

  @doc("追剧/番数")
  followed?: int64;

  @doc("是否追剧/番")
  is_followed?: boolean;

  @doc("最新一集信息")
  new_ep?: string;

  @doc("剧集封面 url")
  cover?: string;

}

/**
 * guides 对象
 */
@doc("guides 数据模型")
model Guides {
  @doc("创作推介文案")
  description?: string;

  @doc("创作跳转按钮信息")
  contribute_tags?: unknown[];

  @doc("内容")
  项?: unknown;

  @doc("创作跳转按钮 1")
  field_0?: Record<unknown>;

  @doc("创作跳转按钮（n+1）")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("按钮文案")
  title?: string;

  @doc("跳转 uri")
  link?: string;

  @doc("内容")
  项?: unknown;

  @doc("推荐名词 1")
  field_0?: Record<unknown>;

  @doc("推荐名词（n+1）")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("名词 id")
  id?: int64;

  @doc("名词")
  name?: string;

  @doc("空")
  picture?: string;

}

/**
 * topic 对象
 */
@doc("topic 数据模型")
model Topic {
  @doc("关联话题id")
  topic_id?: int64;

  @doc("关联话题名称")
  topic_name?: string;

}
