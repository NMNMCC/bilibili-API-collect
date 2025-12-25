import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Search;

/**
 * 综合搜索（web端）
 */
@route("/x/web-interface/wbi/search/all/v2")
@tag("Search")
interface 综合搜索web端 {
  @get
  @doc("综合搜索（web端）")
  综合搜索web端(
    @query @doc("需要搜索的关键词") keyword: string,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("搜索id") seid?: string,
    @query @doc("页数") page?: int64,
    @query @doc("每页条数") page_size?: int64,
    @query @doc("总条数") numResults?: int64,
    @query @doc("分页数") numPages?: int64,
    @query @doc("空") suggest_keyword?: string,
    @query @doc("search") rqt_type?: string,
    @query @doc("详细搜索用时") cost_time?: Record<unknown>,
    @query @doc("？？？") exp_list?: Record<unknown>,
    @query @doc("0") egg_hit?: int64,
    @query @doc("分类页数信息") pageinfo?: Record<unknown>,
    @query @doc("分类结果数目信息") top_tlist?: Record<unknown>,
    @query @doc("0") show_column?: int64,
    @query @doc("返回结果类型列表") show_module_list?: unknown[],
    @query @doc("结果列表") result?: unknown[],
    @query @doc("-") pgc?: Record<unknown>,
    @query @doc("直播数") live_room?: Record<unknown>,
    @query @doc("相簿数") photo?: Record<unknown>,
    @query @doc("话题数") topic?: Record<unknown>,
    @query @doc("视频数") video?: Record<unknown>,
    @query @doc("-") user?: Record<unknown>,
    @query @doc("用户数") bili_user?: Record<unknown>,
    @query @doc("电影数") media_ft?: Record<unknown>,
    @query @doc("专栏数") article?: Record<unknown>,
    @query @doc("番剧数") media_bangumi?: Record<unknown>,
    @query @doc("-") special?: Record<unknown>,
    @query @doc("-") operation_card?: Record<unknown>,
    @query @doc("-") upuser?: Record<unknown>,
    @query @doc("-") movie?: Record<unknown>,
    @query @doc("-") live_all?: Record<unknown>,
    @query @doc("-") tv?: Record<unknown>,
    @query @doc("直播间数") live?: Record<unknown>,
    @query @doc("-") bangumi?: Record<unknown>,
    @query @doc("活动数") activity?: Record<unknown>,
    @query @doc("-") live_master?: Record<unknown>,
    @query @doc("主播数") live_user?: Record<unknown>,
    @query @doc("总计数量") numResults?: int64,
    @query @doc("总计数量") total?: int64,
    @query @doc("分页数量") pages?: int64,
    @query @doc("-") pgc?: int64,
    @query @doc("直播数") live_room?: int64,
    @query @doc("相簿数") photo?: int64,
    @query @doc("话题数") topic?: int64,
    @query @doc("视频数") video?: int64,
    @query @doc("-") user?: int64,
    @query @doc("用户数") bili_user?: int64,
    @query @doc("电影数") media_ft?: int64,
    @query @doc("专栏数") article?: int64,
    @query @doc("番剧数") media_bangumi?: int64,
    @query @doc("-") card?: int64,
    @query @doc("-") operation_card?: int64,
    @query @doc("-") upuser?: int64,
    @query @doc("-") movie?: int64,
    @query @doc("-") live_all?: int64,
    @query @doc("-") tv?: int64,
    @query @doc("直播间数") live?: int64,
    @query @doc("-") special?: int64,
    @query @doc("-") bangumi?: int64,
    @query @doc("活动数") activity?: int64,
    @query @doc("-") live_master?: int64,
    @query @doc("主播数") live_user?: int64,
    @query @doc("内容") 项?: unknown,
    @query @doc("activity") field_0?: string,
    @query @doc("web_game") field_1?: string,
    @query @doc("card") field_2?: string,
    @query @doc("media_bangumi") field_3?: string,
    @query @doc("media_ft") field_4?: string,
    @query @doc("bili_user") field_5?: string,
    @query @doc("user") field_6?: string,
    @query @doc("star") field_7?: string,
    @query @doc("video") field_8?: string,
    @query @doc("内容") 项?: unknown,
    @query @doc("-") field_0?: Record<unknown>,
    @query @doc("游戏结果") field_1?: Record<unknown>,
    @query @doc("-") field_2?: Record<unknown>,
    @query @doc("番剧结果") field_3?: Record<unknown>,
    @query @doc("电影结果") field_4?: Record<unknown>,
    @query @doc("用户结果") field_5?: Record<unknown>,
    @query @doc("-") field_6?: Record<unknown>,
    @query @doc("-") field_7?: Record<unknown>,
    @query @doc("视频结果") field_8?: Record<unknown>,
    @query @doc("结果类型") result_type?: string,
    @query @doc("搜索结果") data?: unknown[],
    @query @doc("内容") 项?: unknown,
    @query @doc("搜索结果1") field_0?: Record<unknown>,
    @query @doc("搜索结果（n+1）") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("搜索id")
  seid?: string;

  @doc("页数")
  page?: int64;

  @doc("每页条数")
  page_size?: int64;

  @doc("总条数")
  numResults?: int64;

  @doc("分页数")
  numPages?: int64;

  @doc("空")
  suggest_keyword?: string;

  @doc("search")
  rqt_type?: string;

  @doc("详细搜索用时")
  cost_time?: Record<unknown>;

  @doc("？？？")
  exp_list?: Record<unknown>;

  @doc("0")
  egg_hit?: int64;

  @doc("分类页数信息")
  pageinfo?: Record<unknown>;

  @doc("分类结果数目信息")
  top_tlist?: Record<unknown>;

  @doc("0")
  show_column?: int64;

  @doc("返回结果类型列表")
  show_module_list?: unknown[];

  @doc("结果列表")
  result?: unknown[];

}

/**
 * cost_time 对象
 */
@doc("cost_time 数据模型")
model Cost_time {
}

/**
 * pageinfo 对象
 */
@doc("pageinfo 数据模型")
model Pageinfo {
  @doc("-")
  pgc?: Record<unknown>;

  @doc("直播数")
  live_room?: Record<unknown>;

  @doc("相簿数")
  photo?: Record<unknown>;

  @doc("话题数")
  topic?: Record<unknown>;

  @doc("视频数")
  video?: Record<unknown>;

  @doc("-")
  user?: Record<unknown>;

  @doc("用户数")
  bili_user?: Record<unknown>;

  @doc("电影数")
  media_ft?: Record<unknown>;

  @doc("专栏数")
  article?: Record<unknown>;

  @doc("番剧数")
  media_bangumi?: Record<unknown>;

  @doc("-")
  special?: Record<unknown>;

  @doc("-")
  operation_card?: Record<unknown>;

  @doc("-")
  upuser?: Record<unknown>;

  @doc("-")
  movie?: Record<unknown>;

  @doc("-")
  live_all?: Record<unknown>;

  @doc("-")
  tv?: Record<unknown>;

  @doc("直播间数")
  live?: Record<unknown>;

  @doc("-")
  bangumi?: Record<unknown>;

  @doc("活动数")
  activity?: Record<unknown>;

  @doc("-")
  live_master?: Record<unknown>;

  @doc("主播数")
  live_user?: Record<unknown>;

  @doc("总计数量")
  numResults?: int64;

  @doc("总计数量")
  total?: int64;

  @doc("分页数量")
  pages?: int64;

}

/**
 * top_tlist 对象
 */
@doc("top_tlist 数据模型")
model Top_tlist {
  @doc("-")
  pgc?: int64;

  @doc("直播数")
  live_room?: int64;

  @doc("相簿数")
  photo?: int64;

  @doc("话题数")
  topic?: int64;

  @doc("视频数")
  video?: int64;

  @doc("-")
  user?: int64;

  @doc("用户数")
  bili_user?: int64;

  @doc("电影数")
  media_ft?: int64;

  @doc("专栏数")
  article?: int64;

  @doc("番剧数")
  media_bangumi?: int64;

  @doc("-")
  card?: int64;

  @doc("-")
  operation_card?: int64;

  @doc("-")
  upuser?: int64;

  @doc("-")
  movie?: int64;

  @doc("-")
  live_all?: int64;

  @doc("-")
  tv?: int64;

  @doc("直播间数")
  live?: int64;

  @doc("-")
  special?: int64;

  @doc("-")
  bangumi?: int64;

  @doc("活动数")
  activity?: int64;

  @doc("-")
  live_master?: int64;

  @doc("主播数")
  live_user?: int64;

  @doc("内容")
  项?: unknown;

  @doc("activity")
  field_0?: string;

  @doc("web_game")
  field_1?: string;

  @doc("card")
  field_2?: string;

  @doc("media_bangumi")
  field_3?: string;

  @doc("media_ft")
  field_4?: string;

  @doc("bili_user")
  field_5?: string;

  @doc("user")
  field_6?: string;

  @doc("star")
  field_7?: string;

  @doc("video")
  field_8?: string;

  @doc("内容")
  项?: unknown;

  @doc("-")
  field_0?: Record<unknown>;

  @doc("游戏结果")
  field_1?: Record<unknown>;

  @doc("-")
  field_2?: Record<unknown>;

  @doc("番剧结果")
  field_3?: Record<unknown>;

  @doc("电影结果")
  field_4?: Record<unknown>;

  @doc("用户结果")
  field_5?: Record<unknown>;

  @doc("-")
  field_6?: Record<unknown>;

  @doc("-")
  field_7?: Record<unknown>;

  @doc("视频结果")
  field_8?: Record<unknown>;

  @doc("结果类型")
  result_type?: string;

  @doc("搜索结果")
  data?: unknown[];

  @doc("内容")
  项?: unknown;

  @doc("搜索结果1")
  field_0?: Record<unknown>;

  @doc("搜索结果（n+1）")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

}

/**
 * 分类搜索（web端）
 */
@route("/x/web-interface/wbi/search/type")
@tag("Search")
interface 分类搜索web端 {
  @get
  @doc("分类搜索（web端）")
  分类搜索web端(
    @query @doc("搜索目标类型") search_type: string,
    @query @doc("需要搜索的关键词") keyword: string,
    @query @doc("用户粉丝数及等级排序顺序") order_sort: int64,
    @query @doc("用户分类筛选") user_type: int64,
    @query @doc("视频时长筛选") duration: int64,
    @query @doc("视频分区筛选") tids: int64,
    @query @doc("页码") page: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("搜索seid") seid?: int64,
    @query @doc("当前页码") page?: int64,
    @query @doc("每页条数") pagesize?: int64,
    @query @doc("总条数") numResults?: int64,
    @query @doc("总计分页数") numPages?: int64,
    @query @doc("空") suggest_keyword?: string,
    @query @doc("search") rqt_type?: string,
    @query @doc("详细搜索用时") cost_time?: Record<unknown>,
    @query @doc("？？？") exp_list?: Record<unknown>,
    @query @doc("0") egg_hit?: int64,
    @query @doc("副分页信息") pageinfo?: Record<unknown>,
    @query @doc("结果列表") result?: unknown,
    @query @doc("0") show_column?: int64,
    @query @doc("直播间信息") live_room?: Record<unknown>,
    @query @doc("主播信息") live_user?: Record<unknown>,
    @query @doc("总计页数") numPages?: int64,
    @query @doc("总计项数") numResults?: int64,
    @query @doc("总计项数") total?: int64,
    @query @doc("总计页数") pages?: int64,
    @query @doc("直播间信息") live_room?: unknown[],
    @query @doc("主播信息") live_user?: unknown[],
    @query @doc("内容") 项?: unknown,
    @query @doc("直播间搜索结果1") field_0?: Record<unknown>,
    @query @doc("直播间搜索结果（n+1）") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("内容") 项?: unknown,
    @query @doc("主播搜索结果1") field_0?: Record<unknown>,
    @query @doc("主播搜索结果（n+1）") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("内容") 项?: unknown,
    @query @doc("搜索结果1") field_0?: Record<unknown>,
    @query @doc("搜索结果（n+1）") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("搜索seid")
  seid?: int64;

  @doc("当前页码")
  page?: int64;

  @doc("每页条数")
  pagesize?: int64;

  @doc("总条数")
  numResults?: int64;

  @doc("总计分页数")
  numPages?: int64;

  @doc("空")
  suggest_keyword?: string;

  @doc("search")
  rqt_type?: string;

  @doc("详细搜索用时")
  cost_time?: Record<unknown>;

  @doc("？？？")
  exp_list?: Record<unknown>;

  @doc("0")
  egg_hit?: int64;

  @doc("副分页信息")
  pageinfo?: Record<unknown>;

  @doc("结果列表")
  result?: unknown;

  @doc("0")
  show_column?: int64;

}

/**
 * cost_time 对象
 */
@doc("cost_time 数据模型")
model Cost_time {
}

/**
 * pageinfo 对象
 */
@doc("pageinfo 数据模型")
model Pageinfo {
  @doc("直播间信息")
  live_room?: Record<unknown>;

  @doc("主播信息")
  live_user?: Record<unknown>;

}

/**
 * live_user 对象
 */
@doc("live_user 数据模型")
model Live_user {
  @doc("总计页数")
  numPages?: int64;

  @doc("总计项数")
  numResults?: int64;

  @doc("总计项数")
  total?: int64;

  @doc("总计页数")
  pages?: int64;

}

/**
 * result 对象
 */
@doc("result 数据模型")
model Result {
  @doc("直播间信息")
  live_room?: unknown[];

  @doc("主播信息")
  live_user?: unknown[];

  @doc("内容")
  项?: unknown;

  @doc("直播间搜索结果1")
  field_0?: Record<unknown>;

  @doc("直播间搜索结果（n+1）")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("内容")
  项?: unknown;

  @doc("主播搜索结果1")
  field_0?: Record<unknown>;

  @doc("主播搜索结果（n+1）")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("内容")
  项?: unknown;

  @doc("搜索结果1")
  field_0?: Record<unknown>;

  @doc("搜索结果（n+1）")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

}
