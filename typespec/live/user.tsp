import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Live;

/**
 * 获取自己持有的粉丝勋章信息
 */
@route("/xlive/app-ucenter/v1/user/GetMyMedals")
@tag("Live")
interface 获取自己持有的粉丝勋章信息 {
  @get
  @doc("获取自己持有的粉丝勋章信息")
  获取自己持有的粉丝勋章信息(
    @query @doc("每页的数量") page_size: int64,
    @query @doc("返回结果页数") page: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("勋章数量") count?: int64,
    @query @doc("粉丝勋章信息本体") items?: unknown[],
    @query @doc("页码信息") page_info?: Record<unknown>,
    @query @doc("可否删除") can_delete?: boolean,
    @query @doc("日经验上限（原力值）") day_limit?: int64,
    @query @doc("加成状态") guard_medal_title?: string,
    @query @doc("当前已得亲密度") intimacy?: int64,
    @query @doc("是否点亮") is_lighted?: int64,
    @query @doc("勋章等级") level?: int64,
    @query @doc("勋章名") medal_name?: string,
    @query @doc("勋章边框颜色信息") medal_color_border?: int64,
    @query @doc("勋章起始颜色") medal_color_start?: int64,
    @query @doc("勋章结束颜色") medal_color_end?: int64,
    @query @doc("粉丝勋章 id") medal_id?: int64,
    @query @doc("升级所需经验") next_intimacy?: int64,
    @query @doc("本日亲密度") today_feed?: int64,
    @query @doc("直播间房间号") roomid?: int64,
    @query @doc("up 主 mid") target_id?: int64,
    @query @doc("up 主用户名") target_name?: string,
    @query @doc("up 主用户名") uname?: string,
    @query @doc("页码总长度") total_page?: int64,
    @query @doc("当前返回的页码") cur_page?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("勋章数量")
  count?: int64;

  @doc("粉丝勋章信息本体")
  items?: unknown[];

  @doc("页码信息")
  page_info?: Record<unknown>;

  @doc("可否删除")
  can_delete?: boolean;

  @doc("日经验上限（原力值）")
  day_limit?: int64;

  @doc("加成状态")
  guard_medal_title?: string;

  @doc("当前已得亲密度")
  intimacy?: int64;

  @doc("是否点亮")
  is_lighted?: int64;

  @doc("勋章等级")
  level?: int64;

  @doc("勋章名")
  medal_name?: string;

  @doc("勋章边框颜色信息")
  medal_color_border?: int64;

  @doc("勋章起始颜色")
  medal_color_start?: int64;

  @doc("勋章结束颜色")
  medal_color_end?: int64;

  @doc("粉丝勋章 id")
  medal_id?: int64;

  @doc("升级所需经验")
  next_intimacy?: int64;

  @doc("本日亲密度")
  today_feed?: int64;

  @doc("直播间房间号")
  roomid?: int64;

  @doc("up 主 mid")
  target_id?: int64;

  @doc("up 主用户名")
  target_name?: string;

  @doc("up 主用户名")
  uname?: string;

}

/**
 * page_info 对象
 */
@doc("page_info 数据模型")
model Page_info {
  @doc("页码总长度")
  total_page?: int64;

  @doc("当前返回的页码")
  cur_page?: int64;

}

/**
 * 佩戴勋章
 */
@route("/xlive/web-room/v1/fansMedal/wear")
@tag("Live")
interface 佩戴勋章 {
  @post
  @doc("佩戴勋章")
  佩戴勋章(
    @query @doc("勋章 id") medal_id: int64,
    @query @doc("cookie 中 bili_jct 字段") csrf: int64,
    @query @doc("同上") csrf_token: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("1") ttl?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("信息本体") data?: Record<unknown>,
  ): ApiResponse<unknown>;
}

/**
 * ~~直播签到（已下线）~~
 */
@route("/xlive/web-ucenter/v1/sign/DoSign")
@tag("Live")
interface 直播签到已下线 {
  @get
  @doc("~~直播签到（已下线）~~")
  直播签到已下线(
    @query @doc("返回值") code?: int64,
    @query @doc("1") ttl?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("信息本体") data?: Record<unknown>,
  ): ApiResponse<unknown>;
}

/**
 * 本月直播签到信息
 */
@route("/xlive/web-ucenter/v1/sign/WebGetSignInfo")
@tag("Live")
interface 本月直播签到信息 {
  @get
  @doc("本月直播签到信息")
  本月直播签到信息(
    @query @doc("返回值") code?: int64,
    @query @doc("1") ttl?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("今日签到奖励信息") text?: string,
    @query @doc("连续签到奖励信息") specialText?: string,
    @query @doc("签到状态") status?: int64,
    @query @doc("当月天数") allDays?: int64,
    @query @doc("当前月") curMonth?: int64,
    @query @doc("当前年") curYear?: int64,
    @query @doc("当前日") curDay?: int64,
    @query @doc("当前日期（格式化）") curData?: string,
    @query @doc("当月已签到天数") hadSignDays?: int64,
    @query @doc("作用未知") newTask?: int64,
    @query @doc("当月已签到日列表") signDaysList?: unknown[],
    @query @doc("当月已签到且有特殊奖励日列表") signBonusDaysList?: unknown[],
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("今日签到奖励信息")
  text?: string;

  @doc("连续签到奖励信息")
  specialText?: string;

  @doc("签到状态")
  status?: int64;

  @doc("当月天数")
  allDays?: int64;

  @doc("当前月")
  curMonth?: int64;

  @doc("当前年")
  curYear?: int64;

  @doc("当前日")
  curDay?: int64;

  @doc("当前日期（格式化）")
  curData?: string;

  @doc("当月已签到天数")
  hadSignDays?: int64;

  @doc("作用未知")
  newTask?: int64;

  @doc("当月已签到日列表")
  signDaysList?: unknown[];

  @doc("当月已签到且有特殊奖励日列表")
  signBonusDaysList?: unknown[];

}

/**
 * 上月直播签到信息
 */
@route("/sign/getLastMonthSignDays")
@tag("Live")
interface 上月直播签到信息 {
  @get
  @doc("上月直播签到信息")
  上月直播签到信息(
    @query @doc("返回值") code?: int64,
    @query @doc("1") ttl?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("上月天数") days?: int64,
    @query @doc("上月月份值") month?: int64,
    @query @doc("上月已签到天数") hadSignDays?: int64,
    @query @doc("上月已签到日列表") signDaysList?: unknown[],
    @query @doc("上月已签到且有特殊奖励日列表") signBonusDaysList?: unknown[],
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("上月天数")
  days?: int64;

  @doc("上月月份值")
  month?: int64;

  @doc("上月已签到天数")
  hadSignDays?: int64;

  @doc("上月已签到日列表")
  signDaysList?: unknown[];

  @doc("上月已签到且有特殊奖励日列表")
  signBonusDaysList?: unknown[];

}

/**
 * 查询直播间贡献榜
 */
@route("//xlive/general-interface/v1/rank/getOnlineGoldRank")
@tag("Live")
interface 查询直播间贡献榜 {
  @get
  @doc("查询直播间贡献榜")
  查询直播间贡献榜(
    @query @doc("房间号") roomId: int64,
    @query @doc("返回结果页数") page: int64,
    @query @doc("返回结果页大小") pageSize: int64,
    @query @doc("主播uid") ruid: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("在线观众数量") onlineNum?: int64,
    @query @doc("结果") OnlineRankItem?: unknown[],
    @query @doc("贡献值排名") userRank?: int64,
    @query @doc("用户id") uid?: int64,
    @query @doc("用户名字") name?: string,
    @query @doc("用户头像") face?: string,
    @query @doc("贡献值") score?: int64,
    @query @doc("粉丝牌对象") medalInfo?: Record<unknown>,
    @query @doc("大航海类型") guard_level?: int64,
    @query @doc("荣耀等级") wealth_level?: int64,
    @query @doc("大航海类型") guard_level?: int64,
    @query @doc("用户详细信息") uinfo?: Record<unknown>,
    @query @doc("用户uid") uid?: int64,
    @query @doc("用户基本信息") base?: Record<unknown>,
    @query @doc("用户粉丝牌") medal?: Record<unknown>,
    @query @doc("用户头像") face?: string,
    @query @doc("大航海") guard?: Record<unknown>,
    @query @doc("大航海类型") level?: int64,
    @query @doc("大航海到期时间") expired_str?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("在线观众数量")
  onlineNum?: int64;

  @doc("结果")
  OnlineRankItem?: unknown[];

  @doc("贡献值排名")
  userRank?: int64;

  @doc("用户id")
  uid?: int64;

  @doc("用户名字")
  name?: string;

  @doc("用户头像")
  face?: string;

  @doc("贡献值")
  score?: int64;

  @doc("粉丝牌对象")
  medalInfo?: Record<unknown>;

  @doc("大航海类型")
  guard_level?: int64;

  @doc("荣耀等级")
  wealth_level?: int64;

  @doc("大航海类型")
  guard_level?: int64;

  @doc("用户详细信息")
  uinfo?: Record<unknown>;

}

/**
 * uinfo 对象
 */
@doc("uinfo 数据模型")
model Uinfo {
  @doc("用户uid")
  uid?: int64;

  @doc("用户基本信息")
  base?: Record<unknown>;

  @doc("用户粉丝牌")
  medal?: Record<unknown>;

  @doc("用户头像")
  face?: string;

  @doc("大航海")
  guard?: Record<unknown>;

}

/**
 * guard 对象
 */
@doc("guard 数据模型")
model Guard {
  @doc("大航海类型")
  level?: int64;

  @doc("大航海到期时间")
  expired_str?: string;

}

/**
 * 查询自己在某直播间观看时长
 */
@route("/xlive/general-interface/v1/guard/GuardActive")
@tag("Live")
interface 查询自己在某直播间观看时长 {
  @get
  @doc("查询自己在某直播间观看时长")
  查询自己在某直播间观看时长(
    @query @doc("android") platform: string,
    @query @doc("主播uid") ruid: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("主播uid") ruid?: int64,
    @query @doc("主播用户名") rusername?: string,
    @query @doc("主播头像") rface?: string,
    @query @doc("自己的用户名") username?: string,
    @query @doc("大航海陪伴天数") accomany?: int32,
    @query @doc("主播用户名") rusername?: string,
    @query @doc("观看时长") watch_time?: int64,
    @query @doc("粉丝牌") up_medal?: Record<unknown>,
    @query @doc("主播舰长数量") guard_num_3?: int64,
    @query @doc("主播提督数量") guard_num_2?: int64,
    @query @doc("主播总督数量") guard_num_1?: int64,
    @query @doc("直播状态") is_live?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("主播uid")
  ruid?: int64;

  @doc("主播用户名")
  rusername?: string;

  @doc("主播头像")
  rface?: string;

  @doc("自己的用户名")
  username?: string;

  @doc("大航海陪伴天数")
  accomany?: int32;

  @doc("主播用户名")
  rusername?: string;

  @doc("观看时长")
  watch_time?: int64;

  @doc("粉丝牌")
  up_medal?: Record<unknown>;

  @doc("主播舰长数量")
  guard_num_3?: int64;

  @doc("主播提督数量")
  guard_num_2?: int64;

  @doc("主播总督数量")
  guard_num_1?: int64;

  @doc("直播状态")
  is_live?: int64;

}

/**
 * 查询用户在直播间的信息
 */
@route("/xlive/app-ucenter/v2/card/user")
@tag("Live")
interface 查询用户在直播间的信息 {
  @get
  @doc("查询用户在直播间的信息")
  查询用户在直播间的信息(
    @query @doc("目标用户uid") uid: int64,
    @query @doc("主播uid") ruid: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("目标用户id") uid?: int64,
    @query @doc("目标用户名") uname?: string,
    @query @doc("目标用户认证信息") desc?: string,
    @query @doc("目标用户头像") face?: string,
    @query @doc("目标用户粉丝数") follow_num?: int64,
    @query @doc("目标用户关注数") attention_num?: int64,
    @query @doc("目标用户大会员状态") main_vip?: int64,
    @query @doc("是否被拉黑？") is_block?: int64,
    @query @doc("是否房管") is_admin?: int64,
    @query @doc("是否被关小黑屋") is_black?: int64,
    @query @doc("荣耀等级") wealth_info?: Record<unknown>,
    @query @doc("粉丝牌") fans_medal?: Record<unknown>,
    @query @doc("荣耀等级") level?: int64,
    @query @doc("下一等级的荣耀值") level_total_score?: int64,
    @query @doc("当前荣耀值") cur_score?: int64,
    @query @doc("升到下一等级还差多少荣耀值") upgrade_need_score?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("目标用户id")
  uid?: int64;

  @doc("目标用户名")
  uname?: string;

  @doc("目标用户认证信息")
  desc?: string;

  @doc("目标用户头像")
  face?: string;

  @doc("目标用户粉丝数")
  follow_num?: int64;

  @doc("目标用户关注数")
  attention_num?: int64;

  @doc("目标用户大会员状态")
  main_vip?: int64;

  @doc("是否被拉黑？")
  is_block?: int64;

  @doc("是否房管")
  is_admin?: int64;

  @doc("是否被关小黑屋")
  is_black?: int64;

  @doc("荣耀等级")
  wealth_info?: Record<unknown>;

  @doc("粉丝牌")
  fans_medal?: Record<unknown>;

}

/**
 * wealth_info 对象
 */
@doc("wealth_info 数据模型")
model Wealth_info {
  @doc("荣耀等级")
  level?: int64;

  @doc("下一等级的荣耀值")
  level_total_score?: int64;

  @doc("当前荣耀值")
  cur_score?: int64;

  @doc("升到下一等级还差多少荣耀值")
  upgrade_need_score?: int64;

}
