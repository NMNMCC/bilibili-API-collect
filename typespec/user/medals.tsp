import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.User;

/**
 * 指定用户的所有粉丝勋章信息
 */
@route("/xlive/web-ucenter/user/MedalWall")
@tag("User")
interface 指定用户的所有粉丝勋章信息 {
  @get
  @doc("指定用户的所有粉丝勋章信息")
  指定用户的所有粉丝勋章信息(
    @query @doc("目标 mid") target_id: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("数据本体") data?: Record<unknown>,
    @query @doc("勋章列表") list?: unknown[],
    @query @doc("勋章数") count?: int64,
    @query @doc("关闭空间粉丝勋章显示?") close_space_medal?: int64,
    @query @doc("只显示当前佩戴的?") only_show_wearing?: int64,
    @query @doc("目标用户名") name?: string,
    @query @doc("目标用户头像 URL") icon?: string,
    @query @doc("目标用户 mid") uid?: int64,
    @query @doc("目标用户等级") level?: int64,
    @query @doc("勋章信息") medal_info?: Record<unknown>,
    @query @doc("主播名称") target_name?: string,
    @query @doc("主播头像 URL") target_icon?: string,
    @query @doc("主播主页 URL") link?: string,
    @query @doc("直播状态") live_status?: int64,
    @query @doc("主播认证类型") offical?: int64,
    @query @doc("用户勋章信息") uinfo_medal?: string,
    @query @doc("主播 mid") target_id?: int64,
    @query @doc("勋章等级") level?: int64,
    @query @doc("勋章名称") medal_name?: string,
    @query @doc("勋章开始颜色") medal_color_start?: int64,
    @query @doc("勋章结束颜色") medal_color_end?: int64,
    @query @doc("勋章边框颜色") medal_color_border?: int64,
    @query @doc("守护等级?") guard_level?: int64,
    @query @doc("佩戴状态") wearing_status?: int64,
    @query @doc("勋章 ID") medal_id?: int64,
    @query @doc("当前亲密度") intimacy?: int64,
    @query @doc("下一等级所需亲密度") next_intimacy?: int64,
    @query @doc("今日已获得亲密度") today_feed?: int64,
    @query @doc("亲密度每日上限?") day_limit?: int64,
    @query @doc("守护徽章图标 URL?") guard_icon?: string,
    @query @doc("荣誉徽章图标 URL?") honor_icon?: string,
    @query @doc("勋章名称") name?: string,
    @query @doc("勋章等级") level?: int64,
    @query @doc("勋章渐变开始颜色") color_start?: int64,
    @query @doc("勋章渐变结束颜色") color_end?: int64,
    @query @doc("勋章边框颜色") color_border?: int64,
    @query @doc("勋章颜色") color?: int64,
    @query @doc("勋章 ID") id?: int64,
    @query @doc("勋章类型?") typ?: int64,
    @query @doc("是否点亮?") is_light?: int64,
    @query @doc("主播 mid") ruid?: int64,
    @query @doc("大航海等级") guard_level?: int64,
    @query @doc("勋章分数?") score?: int64,
    @query @doc("大航海图标 URL?") guard_icon?: string,
    @query @doc("荣誉徽章图标 URL?") honor_icon?: string,
    @query @doc("勋章开始颜色") v2_medal_color_start?: string,
    @query @doc("勋章结束颜色") v2_medal_color_end?: string,
    @query @doc("勋章边框颜色") v2_medal_color_border?: string,
    @query @doc("勋章文本色") v2_medal_color_text?: string,
    @query @doc("勋章等级颜色") v2_medal_color_level?: string,
    @query @doc("勋章已获得数量?") user_receive_count?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("勋章列表")
  list?: unknown[];

  @doc("勋章数")
  count?: int64;

  @doc("关闭空间粉丝勋章显示?")
  close_space_medal?: int64;

  @doc("只显示当前佩戴的?")
  only_show_wearing?: int64;

  @doc("目标用户名")
  name?: string;

  @doc("目标用户头像 URL")
  icon?: string;

  @doc("目标用户 mid")
  uid?: int64;

  @doc("目标用户等级")
  level?: int64;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("勋章信息")
  medal_info?: Record<unknown>;

  @doc("主播名称")
  target_name?: string;

  @doc("主播头像 URL")
  target_icon?: string;

  @doc("主播主页 URL")
  link?: string;

  @doc("直播状态")
  live_status?: int64;

  @doc("主播认证类型")
  offical?: int64;

  @doc("用户勋章信息")
  uinfo_medal?: string;

}

/**
 * medal_info 对象
 */
@doc("medal_info 数据模型")
model Medal_info {
  @doc("主播 mid")
  target_id?: int64;

  @doc("勋章等级")
  level?: int64;

  @doc("勋章名称")
  medal_name?: string;

  @doc("勋章开始颜色")
  medal_color_start?: int64;

  @doc("勋章结束颜色")
  medal_color_end?: int64;

  @doc("勋章边框颜色")
  medal_color_border?: int64;

  @doc("守护等级?")
  guard_level?: int64;

  @doc("佩戴状态")
  wearing_status?: int64;

  @doc("勋章 ID")
  medal_id?: int64;

  @doc("当前亲密度")
  intimacy?: int64;

  @doc("下一等级所需亲密度")
  next_intimacy?: int64;

  @doc("今日已获得亲密度")
  today_feed?: int64;

  @doc("亲密度每日上限?")
  day_limit?: int64;

  @doc("守护徽章图标 URL?")
  guard_icon?: string;

  @doc("荣誉徽章图标 URL?")
  honor_icon?: string;

}

/**
 * uinfo_medal 对象
 */
@doc("uinfo_medal 数据模型")
model Uinfo_medal {
  @doc("勋章名称")
  name?: string;

  @doc("勋章等级")
  level?: int64;

  @doc("勋章渐变开始颜色")
  color_start?: int64;

  @doc("勋章渐变结束颜色")
  color_end?: int64;

  @doc("勋章边框颜色")
  color_border?: int64;

  @doc("勋章颜色")
  color?: int64;

  @doc("勋章 ID")
  id?: int64;

  @doc("勋章类型?")
  typ?: int64;

  @doc("是否点亮?")
  is_light?: int64;

  @doc("主播 mid")
  ruid?: int64;

  @doc("大航海等级")
  guard_level?: int64;

  @doc("勋章分数?")
  score?: int64;

  @doc("大航海图标 URL?")
  guard_icon?: string;

  @doc("荣誉徽章图标 URL?")
  honor_icon?: string;

  @doc("勋章开始颜色")
  v2_medal_color_start?: string;

  @doc("勋章结束颜色")
  v2_medal_color_end?: string;

  @doc("勋章边框颜色")
  v2_medal_color_border?: string;

  @doc("勋章文本色")
  v2_medal_color_text?: string;

  @doc("勋章等级颜色")
  v2_medal_color_level?: string;

  @doc("勋章已获得数量?")
  user_receive_count?: int64;

}
