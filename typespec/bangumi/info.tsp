import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Bangumi;

/**
 * 剧集基本信息（mdid方式）
 */
@route("/pgc/review/user")
@tag("Bangumi")
interface 剧集基本信息mdid方式 {
  @get
  @doc("剧集基本信息（mdid方式）")
  剧集基本信息mdid方式(
    @query @doc("剧集mdid") media_id: string,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("信息本体") result?: Record<unknown>,
    @query @doc("剧集信息") media?: Record<unknown>,
    @query @doc("用户操作信息") review?: Record<unknown>,
    @query @doc("地区") areas?: unknown[],
    @query @doc("封面图片url") cover?: string,
    @query @doc("横板封面图片url") horizontal_picture?: string,
    @query @doc("剧集mdid") media_id?: int64,
    @query @doc("最新一话信息") new_ep?: Record<unknown>,
    @query @doc("评分信息") rating?: Record<unknown>,
    @query @doc("剧集ssid") season_id?: int64,
    @query @doc("剧集详情页连接") share_url?: unknown,
    @query @doc("标题") title?: string,
    @query @doc("剧集类型id") type?: int64,
    @query @doc("剧集类型") type_name?: string,
    @query @doc("内容") 项?: unknown,
    @query @doc("地区信息1") field_0?: Record<unknown>,
    @query @doc("地区信息（n+1）") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("所属地区编号") id?: int64,
    @query @doc("所属地区名称") name?: string,
    @query @doc("最新一话的epid") id?: int64,
    @query @doc("最新一话名称") index?: string,
    @query @doc("最新一话显示名称") index_show?: string,
    @query @doc("总计评分人数") count?: int64,
    @query @doc("评分") score?: int64,
    @query @doc("0") is_coin?: int64,
    @query @doc("1") is_open?: int64,
  ): ApiResponse<Result>;
}

/**
 * result 对象
 */
@doc("result 数据模型")
model Result {
  @doc("剧集信息")
  media?: Record<unknown>;

  @doc("用户操作信息")
  review?: Record<unknown>;

}

/**
 * media 对象
 */
@doc("media 数据模型")
model Media {
  @doc("地区")
  areas?: unknown[];

  @doc("封面图片url")
  cover?: string;

  @doc("横板封面图片url")
  horizontal_picture?: string;

  @doc("剧集mdid")
  media_id?: int64;

  @doc("最新一话信息")
  new_ep?: Record<unknown>;

  @doc("评分信息")
  rating?: Record<unknown>;

  @doc("剧集ssid")
  season_id?: int64;

  @doc("剧集详情页连接")
  share_url?: unknown;

  @doc("标题")
  title?: string;

  @doc("剧集类型id")
  type?: int64;

  @doc("剧集类型")
  type_name?: string;

  @doc("内容")
  项?: unknown;

  @doc("地区信息1")
  field_0?: Record<unknown>;

  @doc("地区信息（n+1）")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("所属地区编号")
  id?: int64;

  @doc("所属地区名称")
  name?: string;

}

/**
 * new_ep 对象
 */
@doc("new_ep 数据模型")
model New_ep {
  @doc("最新一话的epid")
  id?: int64;

  @doc("最新一话名称")
  index?: string;

  @doc("最新一话显示名称")
  index_show?: string;

}

/**
 * rating 对象
 */
@doc("rating 数据模型")
model Rating {
  @doc("总计评分人数")
  count?: int64;

  @doc("评分")
  score?: int64;

}

/**
 * review 对象
 */
@doc("review 数据模型")
model Review {
  @doc("0")
  is_coin?: int64;

  @doc("1")
  is_open?: int64;

}

/**
 * 获取剧集明细（web端）（ssid/epid方式）
 */
@route("/pgc/view/web/season")
@tag("Bangumi")
interface 获取剧集明细web端ssidepid方式 {
  @get
  @doc("获取剧集明细（web端）（ssid/epid方式）")
  获取剧集明细web端ssidepid方式(
    @query @doc("番剧ssid") season_id: int64,
    @query @doc("剧集epid") ep_id: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("信息本体") result?: Record<unknown>,
    @query @doc("参与的活动") activity?: Record<unknown>,
    @query @doc("空") alias_?: string,
    @query @doc("网页背景图片url") bkg_cover?: string,
    @query @doc("剧集封面图片url") cover?: string,
    @query @doc("正片剧集列表") episodes?: unknown[],
    @query @doc("简介") evaluate?: string,
    @query @doc("空") jp_title?: string,
    @query @doc("简介页面url") link?: string,
    @query @doc("剧集mdid") media_id?: int64,
    @query @doc("2") mode?: int64,
    @query @doc("更新信息") new_ep?: Record<unknown>,
    @query @doc("会员&付费信息") payment?: Record<unknown>,
    @query @doc("付费包信息") payPack?: Record<unknown>,
    @query @doc("发布信息") publish?: Record<unknown>,
    @query @doc("评分信息") rating?: Record<unknown>,
    @query @doc("备案号") record?: string,
    @query @doc("属性标志信息") rights?: Record<unknown>,
    @query @doc("番剧ssid") season_id?: int64,
    @query @doc("剧集标题") season_title?: string,
    @query @doc("同系列所有季信息") seasons?: unknown[],
    @query @doc("花絮、PV、番外等非正片内容") section?: unknown[],
    @query @doc("系列信息") series?: Record<unknown>,
    @query @doc("《{标题}》+{备注}") share_copy?: string,
    @query @doc("备注") share_sub_title?: string,
    @query @doc("番剧播放页面url") share_url?: string,
    @query @doc("网页全屏标志") show?: Record<unknown>,
    @query @doc("1,2,3,4,5,7") show_season_type?: int64,
    @query @doc("方形封面图片url") square_cover?: string,
    @query @doc("制作人员信息") staff?: string,
    @query @doc("状态数") stat?: Record<unknown>,
    @query @doc("标签") styles?: unknown[],
    @query @doc("剧集副标题") subtitle?: string,
    @query @doc("剧集标题") title?: string,
    @query @doc("总计正片集数") total?: int64,
    @query @doc("剧集类型") type?: int64,
    @query @doc("UP主信息") up_info?: Record<unknown>,
    @query @doc("空") head_bg_url?: string,
    @query @doc("活动id") id?: int64,
    @query @doc("活动标题") title?: string,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("所属地区编号") id?: int64,
    @query @doc("所属地区名称") name?: string,
    @query @doc("内容") 项?: unknown,
    @query @doc("正片第1集") field_0?: Record<unknown>,
    @query @doc("正片第（n+1）集") n?: Record<unknown>,
    @query @doc("单集稿件avid") aid?: int64,
    @query @doc("标签文字") badge?: string,
    @query @doc("单集稿件bvid") bvid?: string,
    @query @doc("视频cid") cid?: int64,
    @query @doc("单集封面url") cover?: string,
    @query @doc("分辨率信息") dimension?: Record<unknown>,
    @query @doc("单集epid") id?: int64,
    @query @doc("单集网页url") link?: string,
    @query @doc("单集完整标题") long_title?: string,
    @query @doc("发布时间") pub_time?: int64,
    @query @doc("0") pv?: int64,
    @query @doc("空") release_date?: string,
    @query @doc("《{标题}》+第n话+｛单集完整标题｝") share_copy?: string,
    @query @doc("单集网页url") share_url?: string,
    @query @doc("单集网页url短链接") short_link?: string,
    @query @doc("单集副标题") subtitle?: string,
    @query @doc("单集标题") title?: string,
    @query @doc("单集vid") vid?: string,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("更新备注") desc?: string,
    @query @doc("最新一话epid") id?: int64,
    @query @doc("是否最新发布") is_new?: int64,
    @query @doc("最新一话标题") title?: string,
    @query @doc("折扣") discount?: int64,
    @query @doc("支付相关") pay_type?: Record<unknown>,
    @query @doc("售价") price?: string,
    @query @doc("推广信息") promotion?: string,
    @query @doc("大会员折扣") vip_discount?: int64,
    @query @doc("大会员售价") vip_price?: string,
    @query @doc("大会员推广信息") vip_promotion?: string,
    @query @doc("启用折扣") allow_discount?: int64,
    @query @doc("启用票券") allow_ticket?: int64,
    @query @doc("启用时间限制") allow_time_limit?: int64,
    @query @doc("启用大会员折扣") allow_vip_discount?: int64,
    @query @doc("禁止使用B币券") forbid_bb?: int64,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("完结状态") is_finish?: int64,
    @query @doc("是否发布") is_started?: int64,
    @query @doc("发布时间") pub_time?: string,
    @query @doc("发布时间文字介绍") pub_time_show?: string,
    @query @doc("0") unknow_pub_date?: int64,
    @query @doc("0") weekday?: int64,
    @query @doc("总计评分人数") count?: int64,
    @query @doc("评分") score?: int64,
    @query @doc("版权标志") copyright?: string,
    @query @doc("内容") 项?: unknown,
    @query @doc("同系列剧集1") field_0?: Record<unknown>,
    @query @doc("同系列剧集（n+1）") n?: Record<unknown>,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("内容") 项?: unknown,
    @query @doc("其他内容块1") field_0?: Record<unknown>,
    @query @doc("其他内容块（n+1）") n?: Record<unknown>,
    @query @doc("0") episode_id?: int64,
    @query @doc("板块内容") episodes?: unknown[],
    @query @doc("板块id？") id?: int64,
    @query @doc("板块标题") title?: string,
    @query @doc("？") type?: int64,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("系列id") series_id?: int64,
    @query @doc("系列名") series_title?: string,
    @query @doc("是否全屏") wide_screen?: int64,
    @query @doc("投币数") coins?: int64,
    @query @doc("弹幕数") danmakus?: int64,
    @query @doc("收藏数") favorites?: int64,
    @query @doc("点赞数") likes?: int64,
    @query @doc("评论数") reply?: int64,
    @query @doc("分享数") share?: int64,
    @query @doc("播放数") views?: int64,
    @query @doc("头像图片url") avatar?: string,
    @query @doc("粉丝数") follower?: int64,
    @query @doc("0") is_follow?: int64,
    @query @doc("UP主mid") mid?: int64,
    @query @doc("0") theme_type?: int64,
    @query @doc("UP主昵称") uname?: string,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("剧集ssid") season_id: string,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("信息本体") result?: Record<unknown>,
    @query @doc("正片信息") main_section?: Record<unknown>,
    @query @doc("花絮、PV等") section?: unknown[],
    @query @doc("分集信息") episodes?: unknown[],
    @query @doc("分组id") id?: int64,
    @query @doc("0：正片<br/>1：PV&其他<br/>2：OP&ED") type?: int64,
    @query @doc("视频av号") aid?: int64,
    @query @doc("0") badge_type?: int64,
    @query @doc("分集cid") cid?: int64,
    @query @doc("分集封面") cover?: string,
    @query @doc("bangumi") from?: string,
    @query @doc("分集epId") id?: int64,
    @query @doc("0") is_premiere?: int64,
    @query @doc("长标题") long_title?: string,
    @query @doc("分集播放页url") share_url?: string,
    @query @doc("2") status?: int64,
    @query @doc("短标题") title?: string,
  ): ApiResponse<Result>;
}

/**
 * result 对象
 */
@doc("result 数据模型")
model Result {
  @doc("参与的活动")
  activity?: Record<unknown>;

  @doc("空")
  alias_?: string;

  @doc("网页背景图片url")
  bkg_cover?: string;

  @doc("剧集封面图片url")
  cover?: string;

  @doc("正片剧集列表")
  episodes?: unknown[];

  @doc("简介")
  evaluate?: string;

  @doc("空")
  jp_title?: string;

  @doc("简介页面url")
  link?: string;

  @doc("剧集mdid")
  media_id?: int64;

  @doc("2")
  mode?: int64;

  @doc("更新信息")
  new_ep?: Record<unknown>;

  @doc("会员&付费信息")
  payment?: Record<unknown>;

  @doc("付费包信息")
  payPack?: Record<unknown>;

  @doc("发布信息")
  publish?: Record<unknown>;

  @doc("评分信息")
  rating?: Record<unknown>;

  @doc("备案号")
  record?: string;

  @doc("属性标志信息")
  rights?: Record<unknown>;

  @doc("番剧ssid")
  season_id?: int64;

  @doc("剧集标题")
  season_title?: string;

  @doc("同系列所有季信息")
  seasons?: unknown[];

  @doc("花絮、PV、番外等非正片内容")
  section?: unknown[];

  @doc("系列信息")
  series?: Record<unknown>;

  @doc("《{标题}》+{备注}")
  share_copy?: string;

  @doc("备注")
  share_sub_title?: string;

  @doc("番剧播放页面url")
  share_url?: string;

  @doc("网页全屏标志")
  show?: Record<unknown>;

  @doc("1,2,3,4,5,7")
  show_season_type?: int64;

  @doc("方形封面图片url")
  square_cover?: string;

  @doc("制作人员信息")
  staff?: string;

  @doc("状态数")
  stat?: Record<unknown>;

  @doc("标签")
  styles?: unknown[];

  @doc("剧集副标题")
  subtitle?: string;

  @doc("剧集标题")
  title?: string;

  @doc("总计正片集数")
  total?: int64;

  @doc("剧集类型")
  type?: int64;

  @doc("UP主信息")
  up_info?: Record<unknown>;

}

/**
 * activity 对象
 */
@doc("activity 数据模型")
model Activity {
  @doc("空")
  head_bg_url?: string;

  @doc("活动id")
  id?: int64;

  @doc("活动标题")
  title?: string;

  @doc("所属地区编号")
  id?: int64;

  @doc("所属地区名称")
  name?: string;

  @doc("内容")
  项?: unknown;

  @doc("正片第1集")
  field_0?: Record<unknown>;

  @doc("正片第（n+1）集")
  n?: Record<unknown>;

  @doc("单集稿件avid")
  aid?: int64;

  @doc("标签文字")
  badge?: string;

  @doc("单集稿件bvid")
  bvid?: string;

  @doc("视频cid")
  cid?: int64;

  @doc("单集封面url")
  cover?: string;

  @doc("分辨率信息")
  dimension?: Record<unknown>;

  @doc("单集epid")
  id?: int64;

  @doc("单集网页url")
  link?: string;

  @doc("单集完整标题")
  long_title?: string;

  @doc("发布时间")
  pub_time?: int64;

  @doc("0")
  pv?: int64;

  @doc("空")
  release_date?: string;

  @doc("《{标题}》+第n话+｛单集完整标题｝")
  share_copy?: string;

  @doc("单集网页url")
  share_url?: string;

  @doc("单集网页url短链接")
  short_link?: string;

  @doc("单集副标题")
  subtitle?: string;

  @doc("单集标题")
  title?: string;

  @doc("单集vid")
  vid?: string;

}

/**
 * badge_info 对象
 */
@doc("badge_info 数据模型")
model Badge_info {
}

/**
 * dimension 对象
 */
@doc("dimension 数据模型")
model Dimension {
}

/**
 * interaction 对象
 */
@doc("interaction 数据模型")
model Interaction {
}

/**
 * rights 对象
 */
@doc("rights 数据模型")
model Rights {
}

/**
 * skip 对象
 */
@doc("skip 数据模型")
model Skip {
}

/**
 * skip 对象
 */
@doc("skip 数据模型")
model Skip {
}

/**
 * skip 对象
 */
@doc("skip 数据模型")
model Skip {
}

/**
 * freya 对象
 */
@doc("freya 数据模型")
model Freya {
}

/**
 * icon_font 对象
 */
@doc("icon_font 数据模型")
model Icon_font {
}

/**
 * multi_view_info 对象
 */
@doc("multi_view_info 数据模型")
model Multi_view_info {
}

/**
 * new_ep 对象
 */
@doc("new_ep 数据模型")
model New_ep {
  @doc("更新备注")
  desc?: string;

  @doc("最新一话epid")
  id?: int64;

  @doc("是否最新发布")
  is_new?: int64;

  @doc("最新一话标题")
  title?: string;

}

/**
 * payment 对象
 */
@doc("payment 数据模型")
model Payment {
  @doc("折扣")
  discount?: int64;

  @doc("支付相关")
  pay_type?: Record<unknown>;

  @doc("售价")
  price?: string;

  @doc("推广信息")
  promotion?: string;

  @doc("大会员折扣")
  vip_discount?: int64;

  @doc("大会员售价")
  vip_price?: string;

  @doc("大会员推广信息")
  vip_promotion?: string;

}

/**
 * pay_type 对象
 */
@doc("pay_type 数据模型")
model Pay_type {
  @doc("启用折扣")
  allow_discount?: int64;

  @doc("启用票券")
  allow_ticket?: int64;

  @doc("启用时间限制")
  allow_time_limit?: int64;

  @doc("启用大会员折扣")
  allow_vip_discount?: int64;

  @doc("禁止使用B币券")
  forbid_bb?: int64;

}

/**
 * payPack 对象
 */
@doc("payPack 数据模型")
model Paypack {
}

/**
 * play_strategy 对象
 */
@doc("play_strategy 数据模型")
model Play_strategy {
}

/**
 * positive 对象
 */
@doc("positive 数据模型")
model Positive {
}

/**
 * publish 对象
 */
@doc("publish 数据模型")
model Publish {
  @doc("完结状态")
  is_finish?: int64;

  @doc("是否发布")
  is_started?: int64;

  @doc("发布时间")
  pub_time?: string;

  @doc("发布时间文字介绍")
  pub_time_show?: string;

  @doc("0")
  unknow_pub_date?: int64;

  @doc("0")
  weekday?: int64;

}

/**
 * rating 对象
 */
@doc("rating 数据模型")
model Rating {
  @doc("总计评分人数")
  count?: int64;

  @doc("评分")
  score?: int64;

}

/**
 * rights 对象
 */
@doc("rights 数据模型")
model Rights {
  @doc("版权标志")
  copyright?: string;

  @doc("内容")
  项?: unknown;

  @doc("同系列剧集1")
  field_0?: Record<unknown>;

  @doc("同系列剧集（n+1）")
  n?: Record<unknown>;

}

/**
 * badge_info 对象
 */
@doc("badge_info 数据模型")
model Badge_info {
}

/**
 * icon_font 对象
 */
@doc("icon_font 数据模型")
model Icon_font {
}

/**
 * new_ep 对象
 */
@doc("new_ep 数据模型")
model New_ep {
}

/**
 * stat 对象
 */
@doc("stat 数据模型")
model Stat {
  @doc("内容")
  项?: unknown;

  @doc("其他内容块1")
  field_0?: Record<unknown>;

  @doc("其他内容块（n+1）")
  n?: Record<unknown>;

  @doc("0")
  episode_id?: int64;

  @doc("板块内容")
  episodes?: unknown[];

  @doc("板块id？")
  id?: int64;

  @doc("板块标题")
  title?: string;

  @doc("？")
  type?: int64;

}

/**
 * badge_info 对象
 */
@doc("badge_info 数据模型")
model Badge_info {
}

/**
 * dimension 对象
 */
@doc("dimension 数据模型")
model Dimension {
}

/**
 * icon_font 对象
 */
@doc("icon_font 数据模型")
model Icon_font {
}

/**
 * interaction 对象
 */
@doc("interaction 数据模型")
model Interaction {
}

/**
 * report 对象
 */
@doc("report 数据模型")
model Report {
}

/**
 * rights 对象
 */
@doc("rights 数据模型")
model Rights {
}

/**
 * skip 对象
 */
@doc("skip 数据模型")
model Skip {
}

/**
 * ed 对象
 */
@doc("ed 数据模型")
model Ed {
}

/**
 * op 对象
 */
@doc("op 数据模型")
model Op {
}

/**
 * stat_for_unity 对象
 */
@doc("stat_for_unity 数据模型")
model Stat_for_unity {
}

/**
 * result 对象
 */
@doc("result 数据模型")
model Result {
}

/**
 * danmaku 对象
 */
@doc("danmaku 数据模型")
model Danmaku {
}

/**
 * vt 对象
 */
@doc("vt 数据模型")
model Vt {
}

/**
 * stat 对象
 */
@doc("stat 数据模型")
model Stat {
}

/**
 * up_info 对象
 */
@doc("up_info 数据模型")
model Up_info {
}

/**
 * report 对象
 */
@doc("report 数据模型")
model Report {
}

/**
 * series 对象
 */
@doc("series 数据模型")
model Series {
  @doc("系列id")
  series_id?: int64;

  @doc("系列名")
  series_title?: string;

}

/**
 * show 对象
 */
@doc("show 数据模型")
model Show {
  @doc("是否全屏")
  wide_screen?: int64;

}

/**
 * stat 对象
 */
@doc("stat 数据模型")
model Stat {
  @doc("投币数")
  coins?: int64;

  @doc("弹幕数")
  danmakus?: int64;

  @doc("收藏数")
  favorites?: int64;

  @doc("点赞数")
  likes?: int64;

  @doc("评论数")
  reply?: int64;

  @doc("分享数")
  share?: int64;

  @doc("播放数")
  views?: int64;

}

/**
 * up_info 对象
 */
@doc("up_info 数据模型")
model Up_info {
  @doc("头像图片url")
  avatar?: string;

  @doc("粉丝数")
  follower?: int64;

  @doc("0")
  is_follow?: int64;

  @doc("UP主mid")
  mid?: int64;

  @doc("0")
  theme_type?: int64;

  @doc("UP主昵称")
  uname?: string;

}

/**
 * pendant 对象
 */
@doc("pendant 数据模型")
model Pendant {
}

/**
 * vip_label 对象
 */
@doc("vip_label 数据模型")
model Vip_label {
}

/**
 * user_status 对象
 */
@doc("user_status 数据模型")
model User_status {
  @doc("剧集ssid")
  season_id?: string;

  @doc("返回值")
  code?: int64;

  @doc("错误信息")
  message?: string;

  @doc("信息本体")
  result?: Record<unknown>;

}

/**
 * result 对象
 */
@doc("result 数据模型")
model Result {
  @doc("正片信息")
  main_section?: Record<unknown>;

  @doc("花絮、PV等")
  section?: unknown[];

}

/**
 * main_section 对象
 */
@doc("main_section 数据模型")
model Main_section {
  @doc("分集信息")
  episodes?: unknown[];

  @doc("分组id")
  id?: int64;

  @doc("0：正片<br/>1：PV&其他<br/>2：OP&ED")
  type?: int64;

  @doc("视频av号")
  aid?: int64;

  @doc("0")
  badge_type?: int64;

  @doc("分集cid")
  cid?: int64;

  @doc("分集封面")
  cover?: string;

  @doc("bangumi")
  from?: string;

  @doc("分集epId")
  id?: int64;

  @doc("0")
  is_premiere?: int64;

  @doc("长标题")
  long_title?: string;

  @doc("分集播放页url")
  share_url?: string;

  @doc("2")
  status?: int64;

  @doc("短标题")
  title?: string;

}

/**
 * badge_info 对象
 */
@doc("badge_info 数据模型")
model Badge_info {
}

/**
 * main_section 对象
 */
@doc("main_section 数据模型")
model Main_section {
}
