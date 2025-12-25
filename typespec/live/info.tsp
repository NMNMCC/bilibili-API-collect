import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Live;

/**
 * 获取直播间信息
 */
@route("/room/v1/Room/get_info")
@tag("Live")
interface 获取直播间信息 {
  @get
  @doc("获取直播间信息")
  获取直播间信息(
    @query @doc("直播间号") room_id: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("错误信息") msg?: string,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("主播mid") uid?: int64,
    @query @doc("直播间长号") room_id?: int64,
    @query @doc("直播间短号") short_id?: int64,
    @query @doc("关注数量") attention?: int64,
    @query @doc("观看人数") online?: int64,
    @query @doc("是否竖屏") is_portrait?: boolean,
    @query @doc("描述") description?: string,
    @query @doc("直播状态") live_status?: int64,
    @query @doc("分区id") area_id?: int64,
    @query @doc("父分区id") parent_area_id?: int64,
    @query @doc("父分区名称") parent_area_name?: string,
    @query @doc("旧版分区id") old_area_id?: int64,
    @query @doc("背景图片链接") background?: string,
    @query @doc("标题") title?: string,
    @query @doc("封面") user_cover?: string,
    @query @doc("关键帧") keyframe?: string,
    @query @doc("未知") is_strict_room?: boolean,
    @query @doc("直播开始时间") live_time?: string,
    @query @doc("标签") tags?: string,
    @query @doc("未知") is_anchor?: int64,
    @query @doc("禁言状态") room_silent_type?: string,
    @query @doc("禁言等级") room_silent_level?: int64,
    @query @doc("禁言时间") room_silent_second?: int64,
    @query @doc("分区名称") area_name?: string,
    @query @doc("未知") pardants?: string,
    @query @doc("未知") area_pardants?: string,
    @query @doc("热词") hot_words?: unknown,
    @query @doc("热词状态") hot_words_status?: int64,
    @query @doc("未知") verify?: string,
    @query @doc("头像框\\大v") new_pendants?: Record<unknown>,
    @query @doc("未知") up_session?: string,
    @query @doc("pk状态") pk_status?: int64,
    @query @doc("pk id") pk_id?: int64,
    @query @doc("未知") battle_id?: int64,
    @query @doc("头像框") frame?: Record<unknown>,
    @query @doc("同上") mobile_frame?: Record<unknown>,
    @query @doc("大v") badge?: Record<unknown>,
    @query @doc("同上") mobile_badge?: Record<unknown>,
    @query @doc("名称") name?: string,
    @query @doc("值") value?: string,
    @query @doc("位置") position?: int64,
    @query @doc("描述") desc?: string,
    @query @doc("分区") area?: int64,
    @query @doc("旧分区") area_old?: int64,
    @query @doc("背景色") bg_color?: string,
    @query @doc("背景图") bg_pic?: string,
    @query @doc("是否旧分区号") use_old_area?: boolean,
    @query @doc("类型") name?: string,
    @query @doc("位置") position?: int64,
    @query @doc("值") value?: string,
    @query @doc("描述") desc?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("主播mid")
  uid?: int64;

  @doc("直播间长号")
  room_id?: int64;

  @doc("直播间短号")
  short_id?: int64;

  @doc("关注数量")
  attention?: int64;

  @doc("观看人数")
  online?: int64;

  @doc("是否竖屏")
  is_portrait?: boolean;

  @doc("描述")
  description?: string;

  @doc("直播状态")
  live_status?: int64;

  @doc("分区id")
  area_id?: int64;

  @doc("父分区id")
  parent_area_id?: int64;

  @doc("父分区名称")
  parent_area_name?: string;

  @doc("旧版分区id")
  old_area_id?: int64;

  @doc("背景图片链接")
  background?: string;

  @doc("标题")
  title?: string;

  @doc("封面")
  user_cover?: string;

  @doc("关键帧")
  keyframe?: string;

  @doc("未知")
  is_strict_room?: boolean;

  @doc("直播开始时间")
  live_time?: string;

  @doc("标签")
  tags?: string;

  @doc("未知")
  is_anchor?: int64;

  @doc("禁言状态")
  room_silent_type?: string;

  @doc("禁言等级")
  room_silent_level?: int64;

  @doc("禁言时间")
  room_silent_second?: int64;

  @doc("分区名称")
  area_name?: string;

  @doc("未知")
  pardants?: string;

  @doc("未知")
  area_pardants?: string;

  @doc("热词")
  hot_words?: unknown;

  @doc("热词状态")
  hot_words_status?: int64;

  @doc("未知")
  verify?: string;

  @doc("头像框\\大v")
  new_pendants?: Record<unknown>;

  @doc("未知")
  up_session?: string;

  @doc("pk状态")
  pk_status?: int64;

  @doc("pk id")
  pk_id?: int64;

  @doc("未知")
  battle_id?: int64;

}

/**
 * new_pendants 对象
 */
@doc("new_pendants 数据模型")
model New_pendants {
  @doc("头像框")
  frame?: Record<unknown>;

  @doc("同上")
  mobile_frame?: Record<unknown>;

  @doc("大v")
  badge?: Record<unknown>;

  @doc("同上")
  mobile_badge?: Record<unknown>;

}

/**
 * frame 对象
 */
@doc("frame 数据模型")
model Frame {
  @doc("名称")
  name?: string;

  @doc("值")
  value?: string;

  @doc("位置")
  position?: int64;

  @doc("描述")
  desc?: string;

  @doc("分区")
  area?: int64;

  @doc("旧分区")
  area_old?: int64;

  @doc("背景色")
  bg_color?: string;

  @doc("背景图")
  bg_pic?: string;

  @doc("是否旧分区号")
  use_old_area?: boolean;

}

/**
 * badge 对象
 */
@doc("badge 数据模型")
model Badge {
  @doc("类型")
  name?: string;

  @doc("位置")
  position?: int64;

  @doc("值")
  value?: string;

  @doc("描述")
  desc?: string;

}

/**
 * studio_info 对象
 */
@doc("studio_info 数据模型")
model Studio_info {
}

/**
 * 获取用户对应的直播间状态
 */
@route("/room/v1/Room/getRoomInfoOld")
@tag("Live")
interface 获取用户对应的直播间状态 {
  @get
  @doc("获取用户对应的直播间状态")
  获取用户对应的直播间状态(
    @query @doc("目标用户mid") mid: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("直播间状态") roomStatus?: int64,
    @query @doc("轮播状态") roundStatus?: int64,
    @query @doc("直播状态") live_status?: int64,
    @query @doc("直播间网页url") url?: string,
    @query @doc("直播间标题") title?: string,
    @query @doc("直播间封面url") cover?: string,
    @query @doc("直播间人气") online?: int64,
    @query @doc("直播间id（短号）") roomid?: int64,
    @query @doc("0") broadcast_type?: int64,
    @query @doc("0") online_hidden?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("直播间状态")
  roomStatus?: int64;

  @doc("轮播状态")
  roundStatus?: int64;

  @doc("直播状态")
  live_status?: int64;

  @doc("直播间网页url")
  url?: string;

  @doc("直播间标题")
  title?: string;

  @doc("直播间封面url")
  cover?: string;

  @doc("直播间人气")
  online?: int64;

  @doc("直播间id（短号）")
  roomid?: int64;

  @doc("0")
  broadcast_type?: int64;

  @doc("0")
  online_hidden?: int64;

}

/**
 * 获取房间页初始化信息
 */
@route("/room/v1/Room/room_init")
@tag("Live")
interface 获取房间页初始化信息 {
  @get
  @doc("获取房间页初始化信息")
  获取房间页初始化信息(
    @query @doc("目标直播间号（短号）") id: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") msg?: string,
    @query @doc("错误信息") message?: string,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("直播间真实id") room_id?: int64,
    @query @doc("直播间id（短号）") short_id?: int64,
    @query @doc("主播用户mid") uid?: int64,
    @query @doc("是否p2p") need_p2p?: int64,
    @query @doc("是否隐藏") is_hidden?: boolean,
    @query @doc("是否锁定") is_locked?: boolean,
    @query @doc("是否竖屏") is_portrait?: boolean,
    @query @doc("直播状态") live_status?: int64,
    @query @doc("隐藏时间戳") hidden_till?: int64,
    @query @doc("锁定时间戳") lock_till?: int64,
    @query @doc("是否加密") encrypted?: boolean,
    @query @doc("加密房间是否通过密码验证") pwd_verified?: boolean,
    @query @doc("开播时间") live_time?: int64,
    @query @doc("未知") room_shield?: int64,
    @query @doc("是否为特殊直播间") is_sp?: int64,
    @query @doc("特殊直播间标志") special_type?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("直播间真实id")
  room_id?: int64;

  @doc("直播间id（短号）")
  short_id?: int64;

  @doc("主播用户mid")
  uid?: int64;

  @doc("是否p2p")
  need_p2p?: int64;

  @doc("是否隐藏")
  is_hidden?: boolean;

  @doc("是否锁定")
  is_locked?: boolean;

  @doc("是否竖屏")
  is_portrait?: boolean;

  @doc("直播状态")
  live_status?: int64;

  @doc("隐藏时间戳")
  hidden_till?: int64;

  @doc("锁定时间戳")
  lock_till?: int64;

  @doc("是否加密")
  encrypted?: boolean;

  @doc("加密房间是否通过密码验证")
  pwd_verified?: boolean;

  @doc("开播时间")
  live_time?: int64;

  @doc("未知")
  room_shield?: int64;

  @doc("是否为特殊直播间")
  is_sp?: int64;

  @doc("特殊直播间标志")
  special_type?: int64;

}

/**
 * 获取主播信息
 */
@route("/live_user/v1/Master/info")
@tag("Live")
interface 获取主播信息 {
  @get
  @doc("获取主播信息")
  获取主播信息(
    @query @doc("目标用户mid") uid: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") msg?: string,
    @query @doc("错误信息") message?: string,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("主播信息") info?: Record<unknown>,
    @query @doc("经验等级") exp?: Record<unknown>,
    @query @doc("主播粉丝数") follower_num?: int64,
    @query @doc("直播间id（短号）") room_id?: int64,
    @query @doc("粉丝勋章名") medal_name?: string,
    @query @doc("主播荣誉数") glory_count?: int64,
    @query @doc("直播间头像框url") pendant?: string,
    @query @doc("0") link_group_num?: int64,
    @query @doc("主播公告") room_news?: Record<unknown>,
    @query @doc("主播mid") uid?: int64,
    @query @doc("主播用户名") uname?: string,
    @query @doc("主播头像url") face?: string,
    @query @doc("认证信息") official_verify?: Record<unknown>,
    @query @doc("主播性别") gender?: int64,
    @query @doc("主播认证类型") type?: int64,
    @query @doc("主播认证信息") desc?: string,
    @query @doc("主播等级") master_level?: Record<unknown>,
    @query @doc("当前等级") level?: int64,
    @query @doc("等级框颜色") color?: int64,
    @query @doc("当前等级信息") current?: unknown[],
    @query @doc("下一等级信息") next?: unknown[],
    @query @doc("内容") 项?: unknown,
    @query @doc("升级积分") field_0?: int64,
    @query @doc("总积分") field_1?: int64,
    @query @doc("内容") 项?: unknown,
    @query @doc("升级积分") field_0?: int64,
    @query @doc("总积分") field_1?: int64,
    @query @doc("公告内容") content?: string,
    @query @doc("公告时间") ctime?: string,
    @query @doc("公告日期") ctime_text?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("主播信息")
  info?: Record<unknown>;

  @doc("经验等级")
  exp?: Record<unknown>;

  @doc("主播粉丝数")
  follower_num?: int64;

  @doc("直播间id（短号）")
  room_id?: int64;

  @doc("粉丝勋章名")
  medal_name?: string;

  @doc("主播荣誉数")
  glory_count?: int64;

  @doc("直播间头像框url")
  pendant?: string;

  @doc("0")
  link_group_num?: int64;

  @doc("主播公告")
  room_news?: Record<unknown>;

}

/**
 * info 对象
 */
@doc("info 数据模型")
model Info {
  @doc("主播mid")
  uid?: int64;

  @doc("主播用户名")
  uname?: string;

  @doc("主播头像url")
  face?: string;

  @doc("认证信息")
  official_verify?: Record<unknown>;

  @doc("主播性别")
  gender?: int64;

}

/**
 * official_verify 对象
 */
@doc("official_verify 数据模型")
model Official_verify {
  @doc("主播认证类型")
  type?: int64;

  @doc("主播认证信息")
  desc?: string;

}

/**
 * exp 对象
 */
@doc("exp 数据模型")
model Exp {
  @doc("主播等级")
  master_level?: Record<unknown>;

}

/**
 * master_level 对象
 */
@doc("master_level 数据模型")
model Master_level {
  @doc("当前等级")
  level?: int64;

  @doc("等级框颜色")
  color?: int64;

  @doc("当前等级信息")
  current?: unknown[];

  @doc("下一等级信息")
  next?: unknown[];

  @doc("内容")
  项?: unknown;

  @doc("升级积分")
  field_0?: int64;

  @doc("总积分")
  field_1?: int64;

  @doc("内容")
  项?: unknown;

  @doc("升级积分")
  field_0?: int64;

  @doc("总积分")
  field_1?: int64;

}

/**
 * room_news 对象
 */
@doc("room_news 数据模型")
model Room_news {
  @doc("公告内容")
  content?: string;

  @doc("公告时间")
  ctime?: string;

  @doc("公告日期")
  ctime_text?: string;

}

/**
 * 获取直播间基本信息
 */
@route("/xlive/web-room/v1/index/getRoomBaseInfo")
@tag("Live")
interface 获取直播间基本信息 {
  @get
  @doc("获取直播间基本信息")
  获取直播间基本信息(
    @query @doc("`web_room_componet`") req_biz: string,
    @query @doc("直播间短ID") room_ids: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("空") by_uids?: Record<unknown>,
    @query @doc("直播间信息") by_room_ids?: Record<unknown>,
    @query @doc("直播间长ID") room_id?: int64,
    @query @doc("主播用户mid") uid?: int64,
    @query @doc("直播间分区ID") area_id?: int64,
    @query @doc("直播状态") live_status?: int64,
    @query @doc("直播间网页url") live_url?: string,
    @query @doc("直播间父分区ID") parent_area_id?: int64,
    @query @doc("直播间标题") title?: string,
    @query @doc("直播间父分区名称") parent_area_name?: string,
    @query @doc("直播间分区名称") area_name?: string,
    @query @doc("开播时间") live_time?: string,
    @query @doc("直播间简介") description?: string,
    @query @doc("直播间标签") tags?: string,
    @query @doc("关注数") attention?: int64,
    @query @doc("在线人数") online?: int64,
    @query @doc("直播间短ID") short_id?: int64,
    @query @doc("主播用户名") uname?: string,
    @query @doc("直播间封面url") cover?: string,
    @query @doc("直播间背景url") background?: string,
    @query @doc("1") join_slide?: int64,
    @query @doc("0") live_id?: int64,
    @query @doc("\"0\"") live_id_str?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("空")
  by_uids?: Record<unknown>;

  @doc("直播间信息")
  by_room_ids?: Record<unknown>;

}

/**
 * by_room_ids 对象
 */
@doc("by_room_ids 数据模型")
model By_room_ids {
  @doc("直播间长ID")
  room_id?: int64;

  @doc("主播用户mid")
  uid?: int64;

  @doc("直播间分区ID")
  area_id?: int64;

  @doc("直播状态")
  live_status?: int64;

  @doc("直播间网页url")
  live_url?: string;

  @doc("直播间父分区ID")
  parent_area_id?: int64;

  @doc("直播间标题")
  title?: string;

  @doc("直播间父分区名称")
  parent_area_name?: string;

  @doc("直播间分区名称")
  area_name?: string;

  @doc("开播时间")
  live_time?: string;

  @doc("直播间简介")
  description?: string;

  @doc("直播间标签")
  tags?: string;

  @doc("关注数")
  attention?: int64;

  @doc("在线人数")
  online?: int64;

  @doc("直播间短ID")
  short_id?: int64;

  @doc("主播用户名")
  uname?: string;

  @doc("直播间封面url")
  cover?: string;

  @doc("直播间背景url")
  background?: string;

  @doc("1")
  join_slide?: int64;

  @doc("0")
  live_id?: int64;

  @doc("\"0\"")
  live_id_str?: string;

}

/**
 * 批量查询直播间状态
 */
@route("/room/v1/Room/get_status_info_by_uids")
@tag("Live")
interface 批量查询直播间状态 {
  @get
  @doc("批量查询直播间状态")
  批量查询直播间状态(
    @query @doc("要查询的主播 mid") uids__: unknown[],
    @body @doc("要查询的主播 mid") uids: unknown,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("错误信息") msg?: string,
    @body @doc("1") ttl?: int64,
    @body @doc("信息本体") data?: Record<unknown>,
    @body @doc("直播间信息") uid?: string,
    @body @doc("直播间标题") title?: string,
    @body @doc("直播间房间号") room_id?: int64,
    @body @doc("主播mid") uid?: int64,
    @body @doc("直播间在线人数") online?: int64,
    @body @doc("开播时间戳，单位秒，未开播时为0") live_time?: int64,
    @body @doc("直播间开播状态") live_status?: int64,
    @body @doc("直播间房间号") short_id?: int64,
    @body @doc("直播间分区id") area?: int64,
    @body @doc("直播间分区名") area_name?: string,
    @body @doc("直播间新版分区id") area_v2_id?: int64,
    @body @doc("直播间新版分区名") area_v2_name?: string,
    @body @doc("直播间父分区id") area_v2_parent_id?: int64,
    @body @doc("直播间父分区名") area_v2_parent_name?: string,
    @body @doc("主播用户名") uname?: string,
    @body @doc("主播头像url") face?: string,
    @body @doc("直播间标签") tag_name?: string,
    @body @doc("直播间自定标签") tags?: string,
    @body @doc("直播间封面url") cover_from_user?: string,
    @body @doc("直播间关键帧url") keyframe?: string,
    @body @doc("直播间封禁信息") lock_till?: string,
    @body @doc("直播间隐藏信息") hidden_till?: string,
    @body @doc("直播类型") broadcast_type?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
}

/**
 * uid 对象
 */
@doc("uid 数据模型")
model Uid {
  @doc("直播间标题")
  title?: string;

  @doc("直播间房间号")
  room_id?: int64;

  @doc("主播mid")
  uid?: int64;

  @doc("直播间在线人数")
  online?: int64;

  @doc("开播时间戳，单位秒，未开播时为0")
  live_time?: int64;

  @doc("直播间开播状态")
  live_status?: int64;

  @doc("直播间房间号")
  short_id?: int64;

  @doc("直播间分区id")
  area?: int64;

  @doc("直播间分区名")
  area_name?: string;

  @doc("直播间新版分区id")
  area_v2_id?: int64;

  @doc("直播间新版分区名")
  area_v2_name?: string;

  @doc("直播间父分区id")
  area_v2_parent_id?: int64;

  @doc("直播间父分区名")
  area_v2_parent_name?: string;

  @doc("主播用户名")
  uname?: string;

  @doc("主播头像url")
  face?: string;

  @doc("直播间标签")
  tag_name?: string;

  @doc("直播间自定标签")
  tags?: string;

  @doc("直播间封面url")
  cover_from_user?: string;

  @doc("直播间关键帧url")
  keyframe?: string;

  @doc("直播间封禁信息")
  lock_till?: string;

  @doc("直播间隐藏信息")
  hidden_till?: string;

  @doc("直播类型")
  broadcast_type?: int64;

}

/**
 * 获取直播间最近历史弹幕
 */
@route("/xlive/web-room/v1/dM/gethistory")
@tag("Live")
interface 获取直播间最近历史弹幕 {
  @get
  @doc("获取直播间最近历史弹幕")
  获取直播间最近历史弹幕(
    @query @doc("直播间短ID") roomid: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("空") msg?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("管理员最新的10条弹幕消息") admin?: unknown[],
    @query @doc("普通用户的10条弹幕信息") room?: unknown[],
    @query @doc("弹幕内容") text?: string,
    @query @doc("弹幕类型") dm_type?: int64,
    @query @doc("弹幕发送者的UID") uid?: int64,
    @query @doc("弹幕发送者的昵称") nickname?: string,
    @query @doc("弹幕发送者的昵称颜色?") uname_color?: string,
    @query @doc("弹幕发送时间") timeline?: string,
    @query @doc("是否为管理员") isadmin?: int64,
    @query @doc("是否为VIP?") vip?: int64,
    @query @doc("是否为SVIP?") svip?: int64,
    @query @doc("粉丝勋章信息?") medal?: unknown[],
    @query @doc("标题?") title?: unknown[],
    @query @doc("用户等级信息?") user_level?: unknown[],
    @query @doc("排名?") rank?: int64,
    @query @doc("随机数种子?") rnd?: string,
    @query @doc("用户头衔?") user_title?: string,
    @query @doc("弹幕审核信息?") check_info?: Record<unknown>,
    @query @doc("语音弹幕信息?") voice_dm_info?: Record<unknown>,
    @query @doc("房间独有表情信息") emoticon?: Record<unknown>,
    @query @doc("默认表情信息") emots?: Record<unknown>,
    @query @doc("弹幕ID?") id_str?: string,
    @query @doc("财富等级?") wealth_level?: int64,
    @query @doc("回复的弹幕") reply?: Record<unknown>,
    @query @doc("该用户信息") user?: Record<unknown>,
    @query @doc("0") id?: int64,
    @query @doc("表情的独特标识") emoticon_unique?: string,
    @query @doc("表情的触发词") text?: unknown,
    @query @doc("发送权限？") perm?: int64,
    @query @doc("表情的图像链接") url?: string,
    @query @doc("是否显示在直播画面区域？") in_player_area?: int64,
    @query @doc("是否高亮显示？") bulge_display?: int64,
    @query @doc("是否为动态表情") is_dynamic?: int64,
    @query @doc("表情的高度") height?: int64,
    @query @doc("表情的宽度") width?: int64,
    @query @doc("重复发送数量") count?: int64,
    @query @doc("表情描述") descript?: string,
    @query @doc("表情描述") emoji?: string,
    @query @doc("表情 id") emotion_id?: int64,
    @query @doc("表情的独特标识符") emotion_unique?: string,
    @query @doc("表情的宽度") height?: int64,
    @query @doc("表情的图像链接") url?: string,
    @query @doc("表情的高度") width?: int64,
    @query @doc("用户 mid") uid?: int64,
    @query @doc("用户基本信息") base?: Record<unknown>,
    @query @doc("用户标题?") title?: Record<unknown>,
    @query @doc("用户名") name?: string,
    @query @doc("用户头像 url") face?: string,
    @query @doc("用户名颜色?") name_color?: int64,
    @query @doc("是否为神秘用户?") is_mystery?: boolean,
    @query @doc("原始信息?") origin_info?: Record<unknown>,
    @query @doc("认证信息") official_info?: Record<unknown>,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("管理员最新的10条弹幕消息")
  admin?: unknown[];

  @doc("普通用户的10条弹幕信息")
  room?: unknown[];

  @doc("弹幕内容")
  text?: string;

  @doc("弹幕类型")
  dm_type?: int64;

  @doc("弹幕发送者的UID")
  uid?: int64;

  @doc("弹幕发送者的昵称")
  nickname?: string;

  @doc("弹幕发送者的昵称颜色?")
  uname_color?: string;

  @doc("弹幕发送时间")
  timeline?: string;

  @doc("是否为管理员")
  isadmin?: int64;

  @doc("是否为VIP?")
  vip?: int64;

  @doc("是否为SVIP?")
  svip?: int64;

  @doc("粉丝勋章信息?")
  medal?: unknown[];

  @doc("标题?")
  title?: unknown[];

  @doc("用户等级信息?")
  user_level?: unknown[];

  @doc("排名?")
  rank?: int64;

  @doc("随机数种子?")
  rnd?: string;

  @doc("用户头衔?")
  user_title?: string;

  @doc("弹幕审核信息?")
  check_info?: Record<unknown>;

  @doc("语音弹幕信息?")
  voice_dm_info?: Record<unknown>;

  @doc("房间独有表情信息")
  emoticon?: Record<unknown>;

  @doc("默认表情信息")
  emots?: Record<unknown>;

  @doc("弹幕ID?")
  id_str?: string;

  @doc("财富等级?")
  wealth_level?: int64;

  @doc("回复的弹幕")
  reply?: Record<unknown>;

  @doc("该用户信息")
  user?: Record<unknown>;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("0")
  id?: int64;

  @doc("表情的独特标识")
  emoticon_unique?: string;

  @doc("表情的触发词")
  text?: unknown;

  @doc("发送权限？")
  perm?: int64;

  @doc("表情的图像链接")
  url?: string;

  @doc("是否显示在直播画面区域？")
  in_player_area?: int64;

  @doc("是否高亮显示？")
  bulge_display?: int64;

  @doc("是否为动态表情")
  is_dynamic?: int64;

  @doc("表情的高度")
  height?: int64;

  @doc("表情的宽度")
  width?: int64;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("重复发送数量")
  count?: int64;

  @doc("表情描述")
  descript?: string;

  @doc("表情描述")
  emoji?: string;

  @doc("表情 id")
  emotion_id?: int64;

  @doc("表情的独特标识符")
  emotion_unique?: string;

  @doc("表情的宽度")
  height?: int64;

  @doc("表情的图像链接")
  url?: string;

  @doc("表情的高度")
  width?: int64;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("用户 mid")
  uid?: int64;

  @doc("用户基本信息")
  base?: Record<unknown>;

  @doc("用户标题?")
  title?: Record<unknown>;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("用户名")
  name?: string;

  @doc("用户头像 url")
  face?: string;

  @doc("用户名颜色?")
  name_color?: int64;

  @doc("是否为神秘用户?")
  is_mystery?: boolean;

  @doc("原始信息?")
  origin_info?: Record<unknown>;

  @doc("认证信息")
  official_info?: Record<unknown>;

}

/**
 * 获取直播间信息
 */
@route("/xlive/web-room/v2/index/getRoomPlayInfo")
@tag("Live")
interface 获取直播间信息 {
  @get
  @doc("获取直播间信息")
  获取直播间信息(
    @query @doc("直播间id") room_id: int64,
    @query @doc("直播协议") protocol: string,
    @query @doc("格式") format: string,
    @query @doc("编码格式") codec: string,
    @query @doc("清晰度编码") qn?: int64,
    @query @doc("`web`") platform?: string,
    @query @doc("`8`") ptype?: int64,
    @query @doc("`5`") dolby?: int64,
    @query @doc("`1`") panorama?: int64,
    @query @doc("是否为音频流") only_audio: int64,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("响应码") code?: int64,
    @query @doc("0") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("直播间id") room_id?: int64,
    @query @doc("直播间短id") short_id?: int64,
    @query @doc("主播uid") uid?: int64,
    @query @doc("直播间是否被隐藏") is_hidden?: boolean,
    @query @doc("直播间是否被锁定") is_locked?: boolean,
    @query @doc("是否竖屏") is_portrait?: boolean,
    @query @doc("直播状态") live_status?: int64,
    @query @doc("隐藏结束时间") hidden_till?: int64,
    @query @doc("封禁结束时间") lock_till?: int64,
    @query @doc("直播间为加密直播间") encrypted?: boolean,
    @query @doc("是否通过密码验证") pwd_verified?: boolean,
    @query @doc("本次开播时间") live_time?: int64,
    @query @doc("直播流信息") playurl_info?: Record<unknown>,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("直播间id") cid?: int64,
    @query @doc("清晰度列表") g_qn_desc?: unknown[],
    @query @doc("直播流信息") stream?: unknown[],
    @query @doc("内容") 字段名?: unknown,
    @query @doc("清晰度代码") qn?: int64,
    @query @doc("清晰度描述") desc?: string,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("协议名") protocol_name?: string,
    @query @doc("格式列表") format?: unknown[],
    @query @doc("内容") 字段名?: unknown,
    @query @doc("格式名") format_name?: string,
    @query @doc("编码列表") codec?: unknown[],
    @query @doc("内容") 字段名?: unknown,
    @query @doc("编码名") codec_name?: string,
    @query @doc("当前清晰度编码") current_qn?: int64,
    @query @doc("可用清晰度编码列表") accept_qn?: unknown[],
    @query @doc("播放源路径") base_url?: string,
    @query @doc("域名信息列表") url_info?: unknown[],
    @query @doc("内容") 字段名?: unknown,
    @query @doc("域名") host?: string,
    @query @doc("URL参数") extra?: string,
    @query @doc("内容") 字段名?: unknown,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("直播间id")
  room_id?: int64;

  @doc("直播间短id")
  short_id?: int64;

  @doc("主播uid")
  uid?: int64;

  @doc("直播间是否被隐藏")
  is_hidden?: boolean;

  @doc("直播间是否被锁定")
  is_locked?: boolean;

  @doc("是否竖屏")
  is_portrait?: boolean;

  @doc("直播状态")
  live_status?: int64;

  @doc("隐藏结束时间")
  hidden_till?: int64;

  @doc("封禁结束时间")
  lock_till?: int64;

  @doc("直播间为加密直播间")
  encrypted?: boolean;

  @doc("是否通过密码验证")
  pwd_verified?: boolean;

  @doc("本次开播时间")
  live_time?: int64;

  @doc("直播流信息")
  playurl_info?: Record<unknown>;

}

/**
 * playurl_info 对象
 */
@doc("playurl_info 数据模型")
model Playurl_info {
}

/**
 * playurl 对象
 */
@doc("playurl 数据模型")
model Playurl {
  @doc("直播间id")
  cid?: int64;

  @doc("清晰度列表")
  g_qn_desc?: unknown[];

  @doc("直播流信息")
  stream?: unknown[];

  @doc("清晰度代码")
  qn?: int64;

  @doc("清晰度描述")
  desc?: string;

  @doc("协议名")
  protocol_name?: string;

  @doc("格式列表")
  format?: unknown[];

  @doc("格式名")
  format_name?: string;

  @doc("编码列表")
  codec?: unknown[];

  @doc("编码名")
  codec_name?: string;

  @doc("当前清晰度编码")
  current_qn?: int64;

  @doc("可用清晰度编码列表")
  accept_qn?: unknown[];

  @doc("播放源路径")
  base_url?: string;

  @doc("域名信息列表")
  url_info?: unknown[];

  @doc("域名")
  host?: string;

  @doc("URL参数")
  extra?: string;

}

/**
 * p2p_data 对象
 */
@doc("p2p_data 数据模型")
model P2p_data {
}

/**
 * 获取直播间主播信息
 */
@route("/live_user/v1/UserInfo/get_anchor_in_room")
@tag("Live")
interface 获取直播间主播信息 {
  @get
  @doc("获取直播间主播信息")
  获取直播间主播信息(
    @query @doc("直播间号") roomid: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("错误信息") msg?: string,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("主播信息") info?: Record<unknown>,
    @query @doc("直播等级") level?: Record<unknown>,
    @query @doc("主播san值") san?: int64,
    @query @doc("主播mid") uid?: int64,
    @query @doc("主播用户名") uname?: string,
    @query @doc("主播头像URL") face?: string,
    @query @doc("主播排名") rank?: string,
    @query @doc("平台用户等级") platform_user_level?: int64,
    @query @doc("手机验证状态") mobile_verify?: int64,
    @query @doc("身份认证状态") identification?: int64,
    @query @doc("认证信息") official_verify?: Record<unknown>,
    @query @doc("VIP类型") vip_type?: int64,
    @query @doc("主播性别") gender?: int64,
    @query @doc("主播认证类型") type?: int64,
    @query @doc("主播认证信息") desc?: string,
    @query @doc("未知") role?: int64,
    @query @doc("用户ID") uid?: int64,
    @query @doc("消费金额") cost?: int64,
    @query @doc("充值金额") rcost?: int64,
    @query @doc("用户积分") user_score?: string,
    @query @doc("VIP状态") vip?: int64,
    @query @doc("VIP到期时间") vip_time?: string,
    @query @doc("SVIP状态") svip?: int64,
    @query @doc("SVIP到期时间") svip_time?: string,
    @query @doc("更新时间") update_time?: string,
    @query @doc("主播等级") master_level?: Record<unknown>,
    @query @doc("用户等级") user_level?: int64,
    @query @doc("颜色值") color?: int64,
    @query @doc("主播积分") anchor_score?: int64,
    @query @doc("主播等级") level?: int64,
    @query @doc("颜色值") color?: int64,
    @query @doc("当前积分") current?: unknown,
    @query @doc("下一等级积分") next?: unknown,
    @query @doc("主播积分") anchor_score?: int64,
    @query @doc("升级积分") upgrade_score?: int64,
    @query @doc("主播等级颜色值") master_level_color?: int64,
    @query @doc("排名") sort?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("主播信息")
  info?: Record<unknown>;

  @doc("直播等级")
  level?: Record<unknown>;

  @doc("主播san值")
  san?: int64;

}

/**
 * info 对象
 */
@doc("info 数据模型")
model Info {
  @doc("主播mid")
  uid?: int64;

  @doc("主播用户名")
  uname?: string;

  @doc("主播头像URL")
  face?: string;

  @doc("主播排名")
  rank?: string;

  @doc("平台用户等级")
  platform_user_level?: int64;

  @doc("手机验证状态")
  mobile_verify?: int64;

  @doc("身份认证状态")
  identification?: int64;

  @doc("认证信息")
  official_verify?: Record<unknown>;

  @doc("VIP类型")
  vip_type?: int64;

  @doc("主播性别")
  gender?: int64;

}

/**
 * official_verify 对象
 */
@doc("official_verify 数据模型")
model Official_verify {
  @doc("主播认证类型")
  type?: int64;

  @doc("主播认证信息")
  desc?: string;

  @doc("未知")
  role?: int64;

}

/**
 * level 对象
 */
@doc("level 数据模型")
model Level {
  @doc("用户ID")
  uid?: int64;

  @doc("消费金额")
  cost?: int64;

  @doc("充值金额")
  rcost?: int64;

  @doc("用户积分")
  user_score?: string;

  @doc("VIP状态")
  vip?: int64;

  @doc("VIP到期时间")
  vip_time?: string;

  @doc("SVIP状态")
  svip?: int64;

  @doc("SVIP到期时间")
  svip_time?: string;

  @doc("更新时间")
  update_time?: string;

  @doc("主播等级")
  master_level?: Record<unknown>;

  @doc("用户等级")
  user_level?: int64;

  @doc("颜色值")
  color?: int64;

  @doc("主播积分")
  anchor_score?: int64;

}

/**
 * master_level 对象
 */
@doc("master_level 数据模型")
model Master_level {
  @doc("主播等级")
  level?: int64;

  @doc("颜色值")
  color?: int64;

  @doc("当前积分")
  current?: unknown;

  @doc("下一等级积分")
  next?: unknown;

  @doc("主播积分")
  anchor_score?: int64;

  @doc("升级积分")
  upgrade_score?: int64;

  @doc("主播等级颜色值")
  master_level_color?: int64;

  @doc("排名")
  sort?: string;

}
