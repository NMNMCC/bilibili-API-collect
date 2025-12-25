import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Manga;

/**
 * 获取赛季信息
 */
@route("/twirp/user.v1.Season/GetSeasonInfo")
@tag("Manga")
interface 获取赛季信息 {
  @post
  @doc("获取赛季信息")
  获取赛季信息(
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") msg?: string,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("当前时间字符串") current_time?: string,
    @query @doc("赛季开始") start_time?: string,
    @query @doc("赛季结束") end_time?: string,
    @query @doc("拥有积分") remain_amount?: int64,
    @query @doc("第几个赛季") season_id?: string,
    @query @doc("待领取奖励的任务") tasks?: unknown[],
    @query @doc("赛季奖励") welfare?: unknown[],
    @query @doc("未知") next?: Record<unknown>,
    @query @doc("版头图片") cover?: string,
    @query @doc("今日的任务完成情况") today_tasks?: unknown[],
    @query @doc("赛季相关文案") text?: Record<unknown>,
    @query @doc("未知") announcement?: Record<unknown>,
    @query @doc("赛季标题") season_title?: string,
    @query @doc("false") is_visible?: boolean,
    @query @doc("任务描述") title?: string,
    @query @doc("任务状态") status?: int64,
    @query @doc("与 today_tasks 的一致") type?: int64,
    @query @doc("可获取积分") amount?: int64,
    @query @doc("完成时间") ctime?: string,
    @query @doc("空") title?: string,
    @query @doc("0") amount?: int64,
    @query @doc("0") gap_time?: int64,
    @query @doc("0") current_time?: int64,
    @query @doc("赛季公告") notice?: string,
    @query @doc("赛季签到规则") clonckInRule?: string,
    @query @doc("空") title?: string,
    @query @doc("空") jump_url?: string,
    @query @doc("false") enable?: boolean,
    @query @doc("0") sign_in?: int64,
    @query @doc("0") game?: int64,
    @query @doc("0") daily_mission?: int64,
    @query @doc("0") week_mission?: int64,
    @query @doc("'0'") lottery_act_id?: string,
    @query @doc("是否开启抽奖") enable_lottery?: boolean,
    @query @doc("'0'") lottery_id?: string,
    @query @doc("'0'") advance_lottery_act_id?: string,
    @query @doc("'0'") advance_pool_id?: string,
    @query @doc("赛季连续签到天数") add_up_sign?: int64,
    @query @doc("签到标题") title?: string,
    @query @doc("连续签到天数") continuous_days?: int64,
    @query @doc("签到子标题") subtitle?: string,
    @query @doc("明日签到积分") tomorrow_amount?: int64,
    @query @doc("任务标题") title?: string,
    @query @doc("可获得积分") amount?: int64,
    @query @doc("完成状态") status?: int64,
    @query @doc("耗时（分）") duration?: int64,
    @query @doc("任务指定漫画") comics?: unknown,
    @query @doc("空") page_url?: string,
    @query @doc("已完成进度") progress?: int64,
    @query @doc("`type` 一致时有效") sub_id?: int64,
    @query @doc("`0`") share_type?: int64,
    @query @doc("漫画 id") comic_id?: int64,
    @query @doc("漫画名称") title?: string,
    @query @doc("漫画封面") vertical_cover?: string,
    @query @doc("漫画类型") styles?: unknown,
    @query @doc("奖励类型") type?: int64,
    @query @doc("兑换状态") success?: int64,
    @query @doc("积分消耗") exchange_amount?: int64,
    @query @doc("最终奖励") boss_welfare?: boolean,
    @query @doc("最终奖励剩余") boss_remain?: int64,
    @query @doc("顺序") rank?: int64,
    @query @doc("空") title?: string,
    @query @doc("空") url?: string,
    @query @doc("'0'") kind_address_id?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("当前时间字符串")
  current_time?: string;

  @doc("赛季开始")
  start_time?: string;

  @doc("赛季结束")
  end_time?: string;

  @doc("拥有积分")
  remain_amount?: int64;

  @doc("第几个赛季")
  season_id?: string;

  @doc("待领取奖励的任务")
  tasks?: unknown[];

  @doc("赛季奖励")
  welfare?: unknown[];

  @doc("未知")
  next?: Record<unknown>;

  @doc("版头图片")
  cover?: string;

  @doc("今日的任务完成情况")
  today_tasks?: unknown[];

  @doc("赛季相关文案")
  text?: Record<unknown>;

  @doc("未知")
  announcement?: Record<unknown>;

  @doc("赛季标题")
  season_title?: string;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("false")
  is_visible?: boolean;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("任务描述")
  title?: string;

  @doc("任务状态")
  status?: int64;

  @doc("与 today_tasks 的一致")
  type?: int64;

  @doc("可获取积分")
  amount?: int64;

  @doc("完成时间")
  ctime?: string;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("空")
  title?: string;

  @doc("0")
  amount?: int64;

  @doc("0")
  gap_time?: int64;

  @doc("0")
  current_time?: int64;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("赛季公告")
  notice?: string;

  @doc("赛季签到规则")
  clonckInRule?: string;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("空")
  title?: string;

  @doc("空")
  jump_url?: string;

  @doc("false")
  enable?: boolean;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("0")
  sign_in?: int64;

  @doc("0")
  game?: int64;

  @doc("0")
  daily_mission?: int64;

  @doc("0")
  week_mission?: int64;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("'0'")
  lottery_act_id?: string;

  @doc("是否开启抽奖")
  enable_lottery?: boolean;

  @doc("'0'")
  lottery_id?: string;

  @doc("'0'")
  advance_lottery_act_id?: string;

  @doc("'0'")
  advance_pool_id?: string;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("赛季连续签到天数")
  add_up_sign?: int64;

  @doc("签到标题")
  title?: string;

  @doc("连续签到天数")
  continuous_days?: int64;

  @doc("签到子标题")
  subtitle?: string;

  @doc("明日签到积分")
  tomorrow_amount?: int64;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("任务标题")
  title?: string;

  @doc("可获得积分")
  amount?: int64;

  @doc("完成状态")
  status?: int64;

  @doc("耗时（分）")
  duration?: int64;

  @doc("任务指定漫画")
  comics?: unknown;

  @doc("空")
  page_url?: string;

  @doc("已完成进度")
  progress?: int64;

  @doc("`type` 一致时有效")
  sub_id?: int64;

  @doc("`0`")
  share_type?: int64;

}

/**
 * today_tasks 对象
 */
@doc("today_tasks 数据模型")
model Today_tasks {
  @doc("漫画 id")
  comic_id?: int64;

  @doc("漫画名称")
  title?: string;

  @doc("漫画封面")
  vertical_cover?: string;

  @doc("漫画类型")
  styles?: unknown;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("奖励类型")
  type?: int64;

  @doc("兑换状态")
  success?: int64;

  @doc("积分消耗")
  exchange_amount?: int64;

  @doc("最终奖励")
  boss_welfare?: boolean;

  @doc("最终奖励剩余")
  boss_remain?: int64;

  @doc("顺序")
  rank?: int64;

  @doc("空")
  title?: string;

  @doc("空")
  url?: string;

  @doc("'0'")
  kind_address_id?: string;

}

/**
 * 赛季奖励领取
 */
@route("/twirp/user.v1.Season/TakeSeasonGifts")
@tag("Manga")
interface 赛季奖励领取 {
  @post
  @doc("赛季奖励领取")
  赛季奖励领取(
    @body @doc("赛季 id") season_id: int64,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") msg?: string,
    @body @doc("备注") code?: unknown,
    @body @doc("season_id 字段不正确") field_2?: unknown,
    @body @doc("没有已经完成的 `today_tasks`") field_7?: unknown,
  ): ApiResponse<unknown>;
}
