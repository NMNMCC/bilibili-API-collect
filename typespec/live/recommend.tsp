import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Live;

/**
 * 主页获取直播推荐
 */
@route("/xlive/web-interface/v1/webMain/getMoreRecList")
@tag("Live")
interface 主页获取直播推荐 {
  @get
  @doc("主页获取直播推荐")
  主页获取直播推荐(
    @query @doc("平台类型") platform: string,
    @query @doc("`333.1007`") web_location: string,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("推荐房间列表") recommend_room_list?: unknown[],
    @query @doc("置顶直播间号?") top_room_id?: int64,
    @query @doc("null") head_box?: unknown,
    @query @doc("分区 ID") area_v2_id?: int64,
    @query @doc("父分区 ID") area_v2_parent_id?: int64,
    @query @doc("分区名称") area_v2_name?: string,
    @query @doc("父分区名称") area_v2_parent_name?: string,
    @query @doc("广播类型?") broadcast_type?: int64,
    @query @doc("封面 URL") cover?: string,
    @query @doc("直播间链接") link?: string,
    @query @doc("观看人数") online?: int64,
    @query @doc("???") pendant_Info?: Record<unknown>,
    @query @doc("直播间 ID") roomid?: int64,
    @query @doc("直播间标题") title?: string,
    @query @doc("主播用户名") uname?: string,
    @query @doc("主播头像 URL") face?: string,
    @query @doc("认证信息") verify?: Record<unknown>,
    @query @doc("主播用户 mid") uid?: int64,
    @query @doc("关键帧 URL") keyframe?: string,
    @query @doc("是否自动播放?") is_auto_play?: int64,
    @query @doc("头像框类型?") head_box_type?: int64,
    @query @doc("标记?") flag?: int64,
    @query @doc("会话 ID?") session_id?: string,
    @query @doc("展示回调 URL?") show_callback?: string,
    @query @doc("点击回调 URL?") click_callback?: string,
    @query @doc("特殊 ID?") special_id?: int64,
    @query @doc("观看展示") watched_show?: Record<unknown>,
    @query @doc("是否为 NFT 头像?") is_nft?: int64,
    @query @doc("???") nft_dmark?: string,
    @query @doc("是否为广告") is_ad?: boolean,
    @query @doc("???") ad_transparent_content?: unknown,
    @query @doc("显示广告图标") show_ad_icon?: boolean,
    @query @doc("状态?") status?: boolean,
    @query @doc("0") followers?: int64,
    @query @doc("???") switch?: boolean,
    @query @doc("看过人数") num?: int64,
    @query @doc("小文本") text_small?: string,
    @query @doc("大文本") text_large?: string,
    @query @doc("图标 URL") icon?: string,
    @query @doc("0") icon_location?: int64,
    @query @doc("图标 URL") icon_web?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("推荐房间列表")
  recommend_room_list?: unknown[];

  @doc("置顶直播间号?")
  top_room_id?: int64;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("null")
  head_box?: unknown;

  @doc("分区 ID")
  area_v2_id?: int64;

  @doc("父分区 ID")
  area_v2_parent_id?: int64;

  @doc("分区名称")
  area_v2_name?: string;

  @doc("父分区名称")
  area_v2_parent_name?: string;

  @doc("广播类型?")
  broadcast_type?: int64;

  @doc("封面 URL")
  cover?: string;

  @doc("直播间链接")
  link?: string;

  @doc("观看人数")
  online?: int64;

  @doc("???")
  pendant_Info?: Record<unknown>;

  @doc("直播间 ID")
  roomid?: int64;

  @doc("直播间标题")
  title?: string;

  @doc("主播用户名")
  uname?: string;

  @doc("主播头像 URL")
  face?: string;

  @doc("认证信息")
  verify?: Record<unknown>;

  @doc("主播用户 mid")
  uid?: int64;

  @doc("关键帧 URL")
  keyframe?: string;

  @doc("是否自动播放?")
  is_auto_play?: int64;

  @doc("头像框类型?")
  head_box_type?: int64;

  @doc("标记?")
  flag?: int64;

  @doc("会话 ID?")
  session_id?: string;

  @doc("展示回调 URL?")
  show_callback?: string;

  @doc("点击回调 URL?")
  click_callback?: string;

  @doc("特殊 ID?")
  special_id?: int64;

  @doc("观看展示")
  watched_show?: Record<unknown>;

  @doc("是否为 NFT 头像?")
  is_nft?: int64;

  @doc("???")
  nft_dmark?: string;

  @doc("是否为广告")
  is_ad?: boolean;

  @doc("???")
  ad_transparent_content?: unknown;

  @doc("显示广告图标")
  show_ad_icon?: boolean;

  @doc("状态?")
  status?: boolean;

  @doc("0")
  followers?: int64;

}

/**
 * watched_show 对象
 */
@doc("watched_show 数据模型")
model Watched_show {
  @doc("???")
  switch?: boolean;

  @doc("看过人数")
  num?: int64;

  @doc("小文本")
  text_small?: string;

  @doc("大文本")
  text_large?: string;

  @doc("图标 URL")
  icon?: string;

  @doc("0")
  icon_location?: int64;

  @doc("图标 URL")
  icon_web?: string;

}
