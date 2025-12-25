import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Creativecenter;

/**
 * 获取稿件列表
 */
@route("/x2/creative/web/archives/sp")
@tag("Creativecenter")
interface 获取稿件列表 {
  @get
  @doc("获取稿件列表")
  获取稿件列表(
    @query @doc("页码") pn: int64,
    @query @doc("每页数量") ps: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("作用尚不明确") class?: null,
    @query @doc("稿件列表") arc_audits?: unknown[],
    @query @doc("分页信息") page?: Record<unknown>,
    @query @doc("1") play_type?: int64,
    @query @doc("-") _?: unknown,
    @query @doc("稿件信息") Archive?: Record<unknown>,
    @query @doc("稿件统计信息") stat?: Record<unknown>,
    @query @doc("0") state_panel?: int64,
    @query @doc("空") parent_tname?: string,
    @query @doc("空") typename?: string,
    @query @doc("0") open_appeal?: int64,
    @query @doc("是否可加入合集") season_add_state?: int64,
    @query @doc("-") _?: unknown,
    @query @doc("av 号") aid?: int64,
    @query @doc("bv 号") bvid?: string,
    @query @doc("0") mid?: int64,
    @query @doc("0") tid?: int64,
    @query @doc("稿件标题") title?: string,
    @query @doc("空") author?: string,
    @query @doc("封面图") cover?: string,
    @query @doc("空") reject_reason?: string,
    @query @doc("空") reject_reason_url?: string,
    @query @doc("空") tag?: string,
    @query @doc("0") duration?: int64,
    @query @doc("0") copyright?: int64,
    @query @doc("0") no_reprint?: int64,
    @query @doc("0") ugcpay?: int64,
    @query @doc("0") order_id?: int64,
    @query @doc("空") order_name?: string,
    @query @doc("0") adorder_id?: int64,
    @query @doc("空") adorder_name?: string,
    @query @doc("空") adorder_no?: string,
    @query @doc("0") online_time?: int64,
    @query @doc("稿件简介") desc?: string,
    @query @doc("0") mission_id?: int64,
    @query @doc("空") mission_name?: string,
    @query @doc("0") attribute?: int64,
    @query @doc("0") state?: int64,
    @query @doc("空") state_desc?: string,
    @query @doc("0") state_panel?: int64,
    @query @doc("空") source?: string,
    @query @doc("0") desc_format_id?: int64,
    @query @doc("空") dynamic?: string,
    @query @doc("0") dtime?: int64,
    @query @doc("0") ptime?: int64,
    @query @doc("0") ctime?: int64,
    @query @doc("0") interactive?: int64,
    @query @doc("0") no_background?: int64,
    @query @doc("0") dynamic_video?: int64,
    @query @doc("0") no_public?: int64,
    @query @doc("0") is_360?: int64,
    @query @doc("0") is_dolby?: int64,
    @query @doc("0") lossless_music?: int64,
    @query @doc("0") bs_editor?: int64,
    @query @doc("0") up_from?: int64,
    @query @doc("0") topic_id?: int64,
    @query @doc("空") topic_name?: string,
    @query @doc("0") topic_stat?: int64,
    @query @doc("0") premiere?: int64,
    @query @doc("0") is_ugcpay_v2?: int64,
    @query @doc("0") charging_pay?: int64,
    @query @doc("空") neutral_mark?: string,
    @query @doc("空") cover43?: string,
    @query @doc("false") had_passed?: boolean,
    @query @doc("0") is_staff?: int64,
    @query @doc("0") is_pugv?: int64,
    @query @doc("0") upower_mode?: int64,
    @query @doc("0") upower_unit_price?: int64,
    @query @doc("-") _?: unknown,
    @query @doc("av 号") aid?: int64,
    @query @doc("播放量") view?: int64,
    @query @doc("弹幕数") danmaku?: int64,
    @query @doc("评论数") reply?: int64,
    @query @doc("收藏数") favorite?: int64,
    @query @doc("硬币数") coin?: int64,
    @query @doc("分享数") share?: int64,
    @query @doc("0") now_rank?: int64,
    @query @doc("0") his_rank?: int64,
    @query @doc("点赞数") like?: int64,
    @query @doc("点踩数") dislike?: int64,
    @query @doc("0") vt?: int64,
    @query @doc("播放量") vv?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("作用尚不明确")
  class?: null;

  @doc("稿件列表")
  arc_audits?: unknown[];

  @doc("分页信息")
  page?: Record<unknown>;

  @doc("1")
  play_type?: int64;

  @doc("-")
  _?: unknown;

  @doc("稿件信息")
  Archive?: Record<unknown>;

  @doc("稿件统计信息")
  stat?: Record<unknown>;

  @doc("0")
  state_panel?: int64;

  @doc("空")
  parent_tname?: string;

  @doc("空")
  typename?: string;

  @doc("0")
  open_appeal?: int64;

  @doc("是否可加入合集")
  season_add_state?: int64;

}

/**
 * Archive 对象
 */
@doc("Archive 数据模型")
model Archive {
  @doc("-")
  _?: unknown;

  @doc("av 号")
  aid?: int64;

  @doc("bv 号")
  bvid?: string;

  @doc("0")
  mid?: int64;

  @doc("0")
  tid?: int64;

  @doc("稿件标题")
  title?: string;

  @doc("空")
  author?: string;

  @doc("封面图")
  cover?: string;

  @doc("空")
  reject_reason?: string;

  @doc("空")
  reject_reason_url?: string;

  @doc("空")
  tag?: string;

  @doc("0")
  duration?: int64;

  @doc("0")
  copyright?: int64;

  @doc("0")
  no_reprint?: int64;

  @doc("0")
  ugcpay?: int64;

  @doc("0")
  order_id?: int64;

  @doc("空")
  order_name?: string;

  @doc("0")
  adorder_id?: int64;

  @doc("空")
  adorder_name?: string;

  @doc("空")
  adorder_no?: string;

  @doc("0")
  online_time?: int64;

  @doc("稿件简介")
  desc?: string;

  @doc("0")
  mission_id?: int64;

  @doc("空")
  mission_name?: string;

  @doc("0")
  attribute?: int64;

  @doc("0")
  state?: int64;

  @doc("空")
  state_desc?: string;

  @doc("0")
  state_panel?: int64;

  @doc("空")
  source?: string;

  @doc("0")
  desc_format_id?: int64;

  @doc("空")
  dynamic?: string;

  @doc("0")
  dtime?: int64;

  @doc("0")
  ptime?: int64;

  @doc("0")
  ctime?: int64;

  @doc("0")
  interactive?: int64;

  @doc("0")
  no_background?: int64;

  @doc("0")
  dynamic_video?: int64;

  @doc("0")
  no_public?: int64;

  @doc("0")
  is_360?: int64;

  @doc("0")
  is_dolby?: int64;

  @doc("0")
  lossless_music?: int64;

  @doc("0")
  bs_editor?: int64;

  @doc("0")
  up_from?: int64;

  @doc("0")
  topic_id?: int64;

  @doc("空")
  topic_name?: string;

  @doc("0")
  topic_stat?: int64;

  @doc("0")
  premiere?: int64;

  @doc("0")
  is_ugcpay_v2?: int64;

  @doc("0")
  charging_pay?: int64;

  @doc("空")
  neutral_mark?: string;

  @doc("空")
  cover43?: string;

  @doc("false")
  had_passed?: boolean;

  @doc("0")
  is_staff?: int64;

  @doc("0")
  is_pugv?: int64;

  @doc("0")
  upower_mode?: int64;

  @doc("0")
  upower_unit_price?: int64;

}

/**
 * stat 对象
 */
@doc("stat 数据模型")
model Stat {
  @doc("-")
  _?: unknown;

  @doc("av 号")
  aid?: int64;

  @doc("播放量")
  view?: int64;

  @doc("弹幕数")
  danmaku?: int64;

  @doc("评论数")
  reply?: int64;

  @doc("收藏数")
  favorite?: int64;

  @doc("硬币数")
  coin?: int64;

  @doc("分享数")
  share?: int64;

  @doc("0")
  now_rank?: int64;

  @doc("0")
  his_rank?: int64;

  @doc("点赞数")
  like?: int64;

  @doc("点踩数")
  dislike?: int64;

  @doc("0")
  vt?: int64;

  @doc("播放量")
  vv?: int64;

}

/**
 * 视频基础信息
 */
@route("/x/web/archive/videos")
@tag("Creativecenter")
interface 视频基础信息 {
  @get
  @doc("视频基础信息")
  视频基础信息(
    @query @doc("av 号") aid: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("稿件信息") archive?: Record<unknown>,
    @query @doc("视频信息") videos?: unknown[],
    @query @doc("av 号") aid?: int64,
    @query @doc("bvid") bvid?: string,
    @query @doc("标题") title?: string,
    @query @doc("分P cid") cid?: int64,
    @query @doc("分P 序号") index?: int64,
    @query @doc("分P 标题") title?: string,
    @query @doc("0") duration?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("稿件信息")
  archive?: Record<unknown>;

  @doc("视频信息")
  videos?: unknown[];

}

/**
 * archive 对象
 */
@doc("archive 数据模型")
model Archive {
  @doc("av 号")
  aid?: int64;

  @doc("bvid")
  bvid?: string;

  @doc("标题")
  title?: string;

  @doc("分P cid")
  cid?: int64;

  @doc("分P 序号")
  index?: int64;

  @doc("分P 标题")
  title?: string;

  @doc("0")
  duration?: int64;

}
