import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Search;

/**
 * 获取默认搜索内容（web端）
 */
@route("/x/web-interface/wbi/search/default")
@tag("Search")
interface 获取默认搜索内容web端 {
  @get
  @doc("获取默认搜索内容（web端）")
  获取默认搜索内容web端(
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("搜索seid") seid?: string,
    @query @doc("默认搜索id") id?: int64,
    @query @doc("0") type?: int64,
    @query @doc("显示文字") show_name?: string,
    @query @doc("空") name?: string,
    @query @doc("跳转类型") goto_type?: int64,
    @query @doc("搜索目标id") goto_value?: string,
    @query @doc("搜索目标跳转url") url?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("搜索seid")
  seid?: string;

  @doc("默认搜索id")
  id?: int64;

  @doc("0")
  type?: int64;

  @doc("显示文字")
  show_name?: string;

  @doc("空")
  name?: string;

  @doc("跳转类型")
  goto_type?: int64;

  @doc("搜索目标id")
  goto_value?: string;

  @doc("搜索目标跳转url")
  url?: string;

}

/**
 * 获取热搜列表
 */
@route("/x/web-interface/wbi/search/square")
@tag("Search")
interface 获取热搜列表 {
  @get
  @doc("获取热搜列表")
  获取热搜列表(
    @query @doc("-") _?: unknown,
    @query @doc("结果限制") limit: int64,
    @query @doc("平台标识") platform: string,
    @query @doc("-") _?: unknown,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("数据本体") data?: Record<unknown>,
    @query @doc("-") _?: unknown,
    @query @doc("热搜榜单") trending?: Record<unknown>,
    @query @doc("-") _?: unknown,
    @query @doc("标题") title?: string,
    @query @doc("跟踪 ID?") trackid?: string,
    @query @doc("热搜列表") list?: unknown[],
    @query @doc("空") top_list?: unknown[],
    @query @doc("内容") 项?: unknown,
    @query @doc("-") _?: unknown,
    @query @doc("热搜 1") field_0?: Record<unknown>,
    @query @doc("热搜 2") field_1?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("热搜 (n+1)") n?: Record<unknown>,
    @query @doc("-") _?: unknown,
    @query @doc("关键词") keyword?: string,
    @query @doc("显示文字") show_name?: string,
    @query @doc("图标 URL") icon?: string,
    @query @doc("空") uri?: string,
    @query @doc("空") goto?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("-")
  _?: unknown;

  @doc("热搜榜单")
  trending?: Record<unknown>;

}

/**
 * trending 对象
 */
@doc("trending 数据模型")
model Trending {
  @doc("-")
  _?: unknown;

  @doc("标题")
  title?: string;

  @doc("跟踪 ID?")
  trackid?: string;

  @doc("热搜列表")
  list?: unknown[];

  @doc("空")
  top_list?: unknown[];

  @doc("内容")
  项?: unknown;

  @doc("-")
  _?: unknown;

  @doc("热搜 1")
  field_0?: Record<unknown>;

  @doc("热搜 2")
  field_1?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("热搜 (n+1)")
  n?: Record<unknown>;

  @doc("-")
  _?: unknown;

  @doc("关键词")
  keyword?: string;

  @doc("显示文字")
  show_name?: string;

  @doc("图标 URL")
  icon?: string;

  @doc("空")
  uri?: string;

  @doc("空")
  goto?: string;

}

/**
 * 获取热搜列表（web端）
 */
@route("/main/hotword")
@tag("Search")
interface 获取热搜列表web端 {
  @get
  @doc("获取热搜列表（web端）")
  获取热搜列表web端(
    @query @doc("？？？") exp_str?: string,
    @query @doc("返回值") code?: int64,
    @query @doc("详细搜索用时") cost?: Record<unknown>,
    @query @doc("搜索seid") seid?: string,
    @query @doc("榜单统计时间") timestamp?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("热搜列表") list?: unknown[],
    @query @doc("内容") 项?: unknown,
    @query @doc("榜单第1名") field_0?: Record<unknown>,
    @query @doc("榜单第（n+1）名") n?: Record<unknown>,
    @query @doc("榜单第10名") field_10?: Record<unknown>,
    @query @doc("空") status?: string,
    @query @doc("热词id") hot_id?: int64,
    @query @doc("关键词") keyword?: string,
    @query @doc("资源id") resource_id?: int64,
    @query @doc("0") goto_type?: int64,
    @query @doc("null") res?: unknown[],
    @query @doc("完整关键词") show_name?: string,
    @query @doc("名次") pos?: int64,
    @query @doc("条目属性") word_type?: int64,
    @query @doc("名次") id?: int64,
    @query @doc("空") goto_value?: string,
    @query @doc("null") live_id?: unknown[],
    @query @doc("空") name_type?: string,
    @query @doc("图标url") icon?: string,
  ): ApiResponse<unknown>;
}

/**
 * 获取热搜列表（手机端）
 */
@route("/x/v2/search/trending/ranking")
@tag("Search")
interface 获取热搜列表手机端 {
  @get
  @doc("获取热搜列表（手机端）")
  获取热搜列表手机端(
    @query @doc("热搜数量") limit: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("返回值") ttl?: int64,
    @query @doc("不知用途") trackid?: int64,
    @query @doc("热搜列表") list?: unknown[],
    @query @doc("内容") 项?: unknown,
    @query @doc("榜单第1名") field_0?: Record<unknown>,
    @query @doc("榜单第（n+1）名") n?: Record<unknown>,
    @query @doc("榜单第20名") field_20_limit?: Record<unknown>,
    @query @doc("名次") position?: int64,
    @query @doc("关键词") keyword?: string,
    @query @doc("完整关键词") show_name?: string,
    @query @doc("条目属性") word_type?: int64,
    @query @doc("图标url") icon?: string,
    @query @doc("热词id") hot_id?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("不知用途")
  trackid?: int64;

  @doc("热搜列表")
  list?: unknown[];

  @doc("内容")
  项?: unknown;

  @doc("榜单第1名")
  field_0?: Record<unknown>;

  @doc("榜单第（n+1）名")
  n?: Record<unknown>;

  @doc("榜单第20名")
  field_20_limit?: Record<unknown>;

  @doc("名次")
  position?: int64;

  @doc("关键词")
  keyword?: string;

  @doc("完整关键词")
  show_name?: string;

  @doc("条目属性")
  word_type?: int64;

  @doc("图标url")
  icon?: string;

  @doc("热词id")
  hot_id?: int64;

}
