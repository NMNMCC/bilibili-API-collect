import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Videoranking;

/**
 * 获取分区最新视频列表
 */
@route("/x/web-interface/dynamic/region")
@tag("Videoranking")
interface 获取分区最新视频列表 {
  @get
  @doc("获取分区最新视频列表")
  获取分区最新视频列表(
    @query @doc("页码") pn: int64,
    @query @doc("每页项数") ps: int64,
    @query @doc("目标分区tid") rid: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("视频列表") archives?: unknown[],
    @query @doc("页面信息") page?: Record<unknown>,
    @query @doc("内容") 项?: unknown,
    @query @doc("视频1") field_0?: Record<unknown>,
    @query @doc("视频(n+1)") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("总计视频数") count?: int64,
    @query @doc("当前页码") num?: int64,
    @query @doc("每页项数") size?: int64,
    @query @doc("视频数") ps: int64,
    @query @doc("列数") pn: int64,
    @query @doc("目标分区id") rid: int64,
    @query @doc("目标标签id") tag_id: int64,
    @query @doc("视频数") ps: int64,
    @query @doc("页码") pn: int64,
    @query @doc("目标分区id") rid: int64,
    @query @doc("类型?") type: int64,
    @query @doc("主页版本") main_ver: string,
    @query @doc("搜索类型") search_type: string,
    @query @doc("查看类型?") view_type: string,
    @query @doc("版权?") copy_right: int64,
    @query @doc("标签?") new_web_tag: int64,
    @query @doc("排序方式") order: string,
    @query @doc("分区id") cate_id: int64,
    @query @doc("页码") page: int64,
    @query @doc("视频数") pagesize: int64,
    @query @doc("起始时间") time_from: int64,
    @query @doc("结束时间") time_to: int64,
    @query @doc("返回值") code: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("作用尚不明确") exp_list?: null,
    @query @doc("显示模块列表?") show_module_list?: unknown[],
    @query @doc("结果本体") result?: unknown[],
    @query @doc("0") show_column?: int64,
    @query @doc("search") rqt_type?: string,
    @query @doc("页码") numPages?: int64,
    @query @doc("视频数") numResults?: int64,
    @query @doc("空") crr_query?: string,
    @query @doc("视频数") pagesize?: int64,
    @query @doc("空") suggest_keyword?: int64,
    @query @doc("作用尚不明确") egg_info?: null,
    @query @doc("0") cache?: int64,
    @query @doc("1") exp_bits?: int64,
    @query @doc("空") exp_str?: string,
    @query @doc("一串字符串中的数字") seid?: string,
    @query @doc("结果信息") msg?: string,
    @query @doc("0") egg_hit?: int64,
    @query @doc("页码") page?: int64,
    @query @doc("内容") 项?: unknown,
    @query @doc("tips") field_0?: string,
    @query @doc("brand_ad") field_1?: string,
    @query @doc("esports") field_2?: string,
    @query @doc("activity") field_3?: string,
    @query @doc("web_game") field_4?: string,
    @query @doc("card") field_5?: string,
    @query @doc("media_bangumi") field_6?: string,
    @query @doc("media_ft") field_7?: string,
    @query @doc("bili_user") field_8?: string,
    @query @doc("user") field_9?: string,
    @query @doc("star") field_10?: string,
    @query @doc("video") field_11?: string,
    @query @doc("发布时间") pubdate?: string,
    @query @doc("封面图") pic?: string,
    @query @doc("标签") tag?: string,
    @query @doc("时长") duration?: int64,
    @query @doc("aid") id?: int64,
    @query @doc("排序分数?") rank_score?: int64,
    @query @doc("是否有角标?") badgepay?: boolean,
    @query @doc("发送时间?") senddate?: int64,
    @query @doc("UP主名") author?: string,
    @query @doc("评论数") review?: int64,
    @query @doc("UP主mid") mid?: int64,
    @query @doc("是否为联合投稿") is_union_video?: int64,
    @query @doc("排序索引号") rank_index?: int64,
    @query @doc("类型") type?: string,
    @query @doc("0") arcrank?: string,
    @query @doc("播放数") play?: string,
    @query @doc("排序偏移?") rank_offset?: int64,
    @query @doc("简介") description?: string,
    @query @doc("弹幕数?") video_review?: int64,
    @query @doc("是否付费?") is_pay?: int64,
    @query @doc("收藏数") favorites?: int64,
    @query @doc("视频播放页URL") arcurl?: string,
    @query @doc("bvid") bvid?: string,
    @query @doc("标题") title?: string,
    @query @doc("0") vt?: int64,
    @query @doc("0") enable_vt?: int64,
    @query @doc("空") vt_display?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("视频列表")
  archives?: unknown[];

  @doc("页面信息")
  page?: Record<unknown>;

  @doc("内容")
  项?: unknown;

  @doc("视频1")
  field_0?: Record<unknown>;

  @doc("视频(n+1)")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

}

/**
 * page 对象
 */
@doc("page 数据模型")
model Page {
  @doc("总计视频数")
  count?: int64;

  @doc("当前页码")
  num?: int64;

  @doc("每页项数")
  size?: int64;

  @doc("视频数")
  ps?: int64;

  @doc("列数")
  pn?: int64;

  @doc("目标分区id")
  rid?: int64;

  @doc("目标标签id")
  tag_id?: int64;

  @doc("视频数")
  ps?: int64;

  @doc("页码")
  pn?: int64;

  @doc("目标分区id")
  rid?: int64;

  @doc("类型?")
  type?: int64;

  @doc("主页版本")
  main_ver?: string;

  @doc("搜索类型")
  search_type?: string;

  @doc("查看类型?")
  view_type?: string;

  @doc("版权?")
  copy_right?: int64;

  @doc("标签?")
  new_web_tag?: int64;

  @doc("排序方式")
  order?: string;

  @doc("分区id")
  cate_id?: int64;

  @doc("页码")
  page?: int64;

  @doc("视频数")
  pagesize?: int64;

  @doc("起始时间")
  time_from?: int64;

  @doc("结束时间")
  time_to?: int64;

  @doc("返回值")
  code?: int64;

  @doc("错误信息")
  message?: string;

  @doc("1")
  ttl?: int64;

  @doc("信息本体")
  data?: Record<unknown>;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("作用尚不明确")
  exp_list?: null;

  @doc("显示模块列表?")
  show_module_list?: unknown[];

  @doc("结果本体")
  result?: unknown[];

  @doc("0")
  show_column?: int64;

  @doc("search")
  rqt_type?: string;

  @doc("页码")
  numPages?: int64;

  @doc("视频数")
  numResults?: int64;

  @doc("空")
  crr_query?: string;

  @doc("视频数")
  pagesize?: int64;

  @doc("空")
  suggest_keyword?: int64;

  @doc("作用尚不明确")
  egg_info?: null;

  @doc("0")
  cache?: int64;

  @doc("1")
  exp_bits?: int64;

  @doc("空")
  exp_str?: string;

  @doc("一串字符串中的数字")
  seid?: string;

  @doc("结果信息")
  msg?: string;

  @doc("0")
  egg_hit?: int64;

  @doc("页码")
  page?: int64;

  @doc("内容")
  项?: unknown;

  @doc("tips")
  field_0?: string;

  @doc("brand_ad")
  field_1?: string;

  @doc("esports")
  field_2?: string;

  @doc("activity")
  field_3?: string;

  @doc("web_game")
  field_4?: string;

  @doc("card")
  field_5?: string;

  @doc("media_bangumi")
  field_6?: string;

  @doc("media_ft")
  field_7?: string;

  @doc("bili_user")
  field_8?: string;

  @doc("user")
  field_9?: string;

  @doc("star")
  field_10?: string;

  @doc("video")
  field_11?: string;

  @doc("发布时间")
  pubdate?: string;

  @doc("封面图")
  pic?: string;

  @doc("标签")
  tag?: string;

  @doc("时长")
  duration?: int64;

  @doc("aid")
  id?: int64;

  @doc("排序分数?")
  rank_score?: int64;

  @doc("是否有角标?")
  badgepay?: boolean;

  @doc("发送时间?")
  senddate?: int64;

  @doc("UP主名")
  author?: string;

  @doc("评论数")
  review?: int64;

  @doc("UP主mid")
  mid?: int64;

  @doc("是否为联合投稿")
  is_union_video?: int64;

  @doc("排序索引号")
  rank_index?: int64;

  @doc("类型")
  type?: string;

  @doc("0")
  arcrank?: string;

  @doc("播放数")
  play?: string;

  @doc("排序偏移?")
  rank_offset?: int64;

  @doc("简介")
  description?: string;

  @doc("弹幕数?")
  video_review?: int64;

  @doc("是否付费?")
  is_pay?: int64;

  @doc("收藏数")
  favorites?: int64;

  @doc("视频播放页URL")
  arcurl?: string;

  @doc("bvid")
  bvid?: string;

  @doc("标题")
  title?: string;

  @doc("0")
  vt?: int64;

  @doc("0")
  enable_vt?: int64;

  @doc("空")
  vt_display?: string;

}
