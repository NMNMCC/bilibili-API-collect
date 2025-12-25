import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Garb;

/**
 * 装扮/收藏集搜索API
 */
@route("/x/garb/v2/mall/home/search")
@tag("Garb")
interface 装扮收藏集搜索api {
  @get
  @doc("装扮/收藏集搜索API")
  装扮收藏集搜索api(
    @query @doc("关键词") key_word: string,
    @query @doc("每页返回数据的最大值") ps: int32,
    @query @doc("当前页数") pn: int32,
    @query @doc("--") __?: unknown,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("返回数据") data?: Record<unknown>,
    @query @doc("返回数据") list?: unknown[],
    @query @doc("每页返回数据的最大值") ps?: int32,
    @query @doc("当前页数") pn?: int32,
    @query @doc("查询到数据的总个数") total?: int32,
    @query @doc("装扮对应的id") item_id?: int32,
    @query @doc("装扮/收藏集名称") name?: string,
    @query @doc("?分类的id") group_id?: int32,
    @query @doc("?分类的名称") group_name?: string,
    @query @doc("类型id") part_id?: int32,
    @query @doc("当前状态") state?: string,
    @query @doc("见下方") properties?: Record<unknown>,
    @query @doc("见下方") current_activity?: Record<unknown>,
    @query @doc("?下次活动的时间") next_activity?: int32,
    @query @doc("?活动开始时间") current_sources?: int32,
    @query @doc("?活动结束时间") finish_sources?: int32,
    @query @doc("?销售剩余时间") sale_left_time?: int32,
    @query @doc("?销售结束时间") sale_time_end?: int32,
    @query @doc("未知") sale_surplus?: int32,
    @query @doc("销售量显示文本") sale_count_desc?: string,
    @query @doc("总量显示文本") total_count_desc?: string,
    @query @doc("当前状态标签") tag?: string,
    @query @doc("跳转链接") jump_link?: string,
    @query @doc("?销售状态") sales_mode?: int32,
    @query @doc("图片封面") image_cover?: string,
    @query @doc("价格") sale_bp_forever_raw?: string,
    @query @doc("类型") type?: string,
    @query @doc("介绍文本") desc?: string,
    @query @doc("装扮名称") fan_desc?: string,
    @query @doc("未知") fan_item_ids?: string,
    @query @doc("该up的uid") fan_mid?: string,
    @query @doc("十六进制颜色") fan_no_color?: string,
    @query @doc("装备说明") fan_recommend_desc?: string,
    @query @doc("跳转类型") fan_recommend_jump_type?: string,
    @query @doc("跳转值") fan_recommend_jump_value?: string,
    @query @doc("分享时的背景图") fan_share_image?: string,
    @query @doc("未知") gray_rule?: string,
    @query @doc("未知") gray_rule_type?: string,
    @query @doc("?图片封面纯色背景") image_cover_color?: string,
    @query @doc("是否隐藏") is_hide?: string,
    @query @doc("装扮背景卡片id") item_id_card?: string,
    @query @doc("装扮表情包id") item_id_emoji?: string,
    @query @doc("装扮点赞动画id") item_id_thumbup?: string,
    @query @doc("是否有大会员减免") open_platform_vip_discount?: string,
    @query @doc("UID") owner_uid?: string,
    @query @doc("未知") rank_investor_show?: string,
    @query @doc("?是否需要实名认证") realname_auth?: string,
    @query @doc("该装扮基础套餐价格") sale_bp_pm_raw?: string,
    @query @doc("购买限额") sale_buy_num_limit?: string,
    @query @doc("该装扮粉丝专属套餐限额") sale_quantity?: string,
    @query @doc("该装扮粉丝专属套餐是否限额") sale_quantity_limit?: string,
    @query @doc("该装扮限制购买地区") sale_region_ip_limit?: string,
    @query @doc("未知") sale_reserve_switch?: string,
    @query @doc("开始售卖时的时间戳") sale_time_begin?: string,
    @query @doc("售卖类型") sale_type?: string,
    @query @doc("仅装扮") suit_card_type?: string,
    @query @doc("购买总数") book_amount?: string,
    @query @doc("收藏集活动id") dlc_act_id?: string,
    @query @doc("收藏集活动状态") dlc_act_status?: string,
    @query @doc("收藏集抽奖是否免费") dlc_is_free?: string,
    @query @doc("收藏集抽奖id") dlc_lottery_id?: string,
    @query @doc("购买总数") dlc_lottery_sale_quantity?: string,
    @query @doc("?抽奖类型") dlc_lottery_type?: string,
    @query @doc("收藏集抽奖结束时间") dlc_sale_end_time?: string,
    @query @doc("未知") dlc_sale_mode?: string,
    @query @doc("收藏集抽奖开始时间") dlc_sale_start_time?: string,
    @query @doc("未知") dlc_surplus_stock?: string,
    @query @doc("当前永久价格活动类型") type?: string,
    @query @doc("是否存在时间限制") time_limit?: boolean,
    @query @doc("剩余时间") time_left?: int32,
    @query @doc("显示标签") tag?: string,
    @query @doc("永久价格") price_bp_forever?: int32,
    @query @doc("一个月的价格") price_bp_month?: int32,
    @query @doc("当前一个月的价格活动类型") type_month?: string,
    @query @doc("显示标签") tag_month?: string,
    @query @doc("是否存在时间限制") time_limit_month?: boolean,
    @query @doc("剩余时间") time_left_month?: int32,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("返回数据")
  list?: unknown[];

  @doc("每页返回数据的最大值")
  ps?: int32;

  @doc("当前页数")
  pn?: int32;

  @doc("查询到数据的总个数")
  total?: int32;

  @doc("装扮对应的id")
  item_id?: int32;

  @doc("装扮/收藏集名称")
  name?: string;

  @doc("?分类的id")
  group_id?: int32;

  @doc("?分类的名称")
  group_name?: string;

  @doc("类型id")
  part_id?: int32;

  @doc("当前状态")
  state?: string;

  @doc("见下方")
  properties?: Record<unknown>;

  @doc("见下方")
  current_activity?: Record<unknown>;

  @doc("?下次活动的时间")
  next_activity?: int32;

  @doc("?活动开始时间")
  current_sources?: int32;

  @doc("?活动结束时间")
  finish_sources?: int32;

  @doc("?销售剩余时间")
  sale_left_time?: int32;

  @doc("?销售结束时间")
  sale_time_end?: int32;

  @doc("未知")
  sale_surplus?: int32;

  @doc("销售量显示文本")
  sale_count_desc?: string;

  @doc("总量显示文本")
  total_count_desc?: string;

  @doc("当前状态标签")
  tag?: string;

  @doc("跳转链接")
  jump_link?: string;

  @doc("?销售状态")
  sales_mode?: int32;

}

/**
 * properties 对象
 */
@doc("properties 数据模型")
model Properties {
  @doc("图片封面")
  image_cover?: string;

  @doc("价格")
  sale_bp_forever_raw?: string;

  @doc("类型")
  type?: string;

  @doc("介绍文本")
  desc?: string;

  @doc("装扮名称")
  fan_desc?: string;

  @doc("未知")
  fan_item_ids?: string;

  @doc("该up的uid")
  fan_mid?: string;

  @doc("十六进制颜色")
  fan_no_color?: string;

  @doc("装备说明")
  fan_recommend_desc?: string;

  @doc("跳转类型")
  fan_recommend_jump_type?: string;

  @doc("跳转值")
  fan_recommend_jump_value?: string;

  @doc("分享时的背景图")
  fan_share_image?: string;

  @doc("未知")
  gray_rule?: string;

  @doc("未知")
  gray_rule_type?: string;

  @doc("?图片封面纯色背景")
  image_cover_color?: string;

  @doc("是否隐藏")
  is_hide?: string;

  @doc("装扮背景卡片id")
  item_id_card?: string;

  @doc("装扮表情包id")
  item_id_emoji?: string;

  @doc("装扮点赞动画id")
  item_id_thumbup?: string;

  @doc("是否有大会员减免")
  open_platform_vip_discount?: string;

  @doc("UID")
  owner_uid?: string;

  @doc("未知")
  rank_investor_show?: string;

  @doc("?是否需要实名认证")
  realname_auth?: string;

  @doc("该装扮基础套餐价格")
  sale_bp_pm_raw?: string;

  @doc("购买限额")
  sale_buy_num_limit?: string;

  @doc("该装扮粉丝专属套餐限额")
  sale_quantity?: string;

  @doc("该装扮粉丝专属套餐是否限额")
  sale_quantity_limit?: string;

  @doc("该装扮限制购买地区")
  sale_region_ip_limit?: string;

  @doc("未知")
  sale_reserve_switch?: string;

  @doc("开始售卖时的时间戳")
  sale_time_begin?: string;

  @doc("售卖类型")
  sale_type?: string;

  @doc("仅装扮")
  suit_card_type?: string;

  @doc("购买总数")
  book_amount?: string;

  @doc("收藏集活动id")
  dlc_act_id?: string;

  @doc("收藏集活动状态")
  dlc_act_status?: string;

  @doc("收藏集抽奖是否免费")
  dlc_is_free?: string;

  @doc("收藏集抽奖id")
  dlc_lottery_id?: string;

  @doc("购买总数")
  dlc_lottery_sale_quantity?: string;

  @doc("?抽奖类型")
  dlc_lottery_type?: string;

  @doc("收藏集抽奖结束时间")
  dlc_sale_end_time?: string;

  @doc("未知")
  dlc_sale_mode?: string;

  @doc("收藏集抽奖开始时间")
  dlc_sale_start_time?: string;

  @doc("未知")
  dlc_surplus_stock?: string;

}

/**
 * current_activity 对象
 */
@doc("current_activity 数据模型")
model Current_activity {
  @doc("当前永久价格活动类型")
  type?: string;

  @doc("是否存在时间限制")
  time_limit?: boolean;

  @doc("剩余时间")
  time_left?: int32;

  @doc("显示标签")
  tag?: string;

  @doc("永久价格")
  price_bp_forever?: int32;

  @doc("一个月的价格")
  price_bp_month?: int32;

  @doc("当前一个月的价格活动类型")
  type_month?: string;

  @doc("显示标签")
  tag_month?: string;

  @doc("是否存在时间限制")
  time_limit_month?: boolean;

  @doc("剩余时间")
  time_left_month?: int32;

}

/**
 * 收藏集信息API
 */
@route("/x/vas/dlc_act/lottery_home_detail")
@tag("Garb")
interface 收藏集信息api {
  @get
  @doc("收藏集信息API")
  收藏集信息api(
    @query @doc("收藏集活动id") act_id: int32,
    @query @doc("收藏集抽奖id") lottery_id: int32,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("返回数据") data?: Record<unknown>,
    @query @doc("-") _?: unknown,
    @query @doc("收藏集抽奖id") lottery_id?: int32,
    @query @doc("收藏集抽奖名称") name?: string,
    @query @doc("可抽出的物品列表") item_list?: unknown[],
    @query @doc("见下方") collect_list?: Record<unknown>,
    @query @doc("未知") button_bubble?: null,
    @query @doc("未知") guide_info?: null,
    @query @doc("未知") is_booked?: int32,
    @query @doc("未知") total_book_cnt?: int32,
    @query @doc("未知") is_fission?: int32,
    @query @doc("未知") physical_exchange?: int32,
    @query @doc("-") _?: unknown,
    @query @doc("物品类型") item_type?: int32,
    @query @doc("见下方") card_info?: Record<unknown>,
    @query @doc("-") _?: unknown,
    @query @doc("该卡片id") card_type_id?: int32,
    @query @doc("该卡片名称") card_name?: string,
    @query @doc("该卡片图片") card_img?: string,
    @query @doc("int") card_type?: int32,
    @query @doc("该卡片动态视频") video_list?: unknown[],
    @query @doc("该卡片旋转方向") is_physical_orientation?: int32,
    @query @doc("该卡片稀有度") card_scarcity?: int32,
    @query @doc("该卡片是否静音") is_mute?: int32,
    @query @doc("该卡片像素宽度") width?: int32,
    @query @doc("该卡片像素高度") height?: int32,
    @query @doc("?该卡片文件名字符串") card_ext_text?: string,
    @query @doc("该卡片图片") card_img_download?: string,
    @query @doc("该卡片动态视频") video_list_download?: unknown[],
    @query @doc("未知") play?: null,
    @query @doc("未知") tag?: null,
    @query @doc("未知") card_sub_type?: int32,
    @query @doc("未知") is_new_tag?: int32,
    @query @doc("未知") is_up_tag?: int32,
    @query @doc("未知") is_limited_card?: int32,
    @query @doc("未知") stock_info?: null,
    @query @doc("-") _?: unknown,
    @query @doc("见下方") collect_infos?: unknown[],
    @query @doc("未知") collect_chain?: null,
    @query @doc("-") _?: unknown,
    @query @doc("收集品id") collect_id?: int32,
    @query @doc("开始时间") start_time?: int32,
    @query @doc("结束时间") end_time?: int32,
    @query @doc("兑换条件") redeem_text?: string,
    @query @doc("兑换物类型") redeem_item_type?: int32,
    @query @doc("兑换物id") redeem_item_id?: string,
    @query @doc("兑换物名称") redeem_item_name?: string,
    @query @doc("兑换物预览图片") redeem_item_image?: string,
    @query @doc("拥有的数量") owned_item_amount?: int32,
    @query @doc("需要的数量") require_item_amount?: int32,
    @query @doc("兑换次数") has_redeemed_cnt?: int32,
    @query @doc("是否永久有效") effective_forever?: int32,
    @query @doc("未知") redeem_item_image_download?: string,
    @query @doc("见下方") card_item?: Record<unknown>,
    @query @doc("?跳转链接") jump_url?: string,
    @query @doc("当前兑换状态") redeem_cond_type?: string,
    @query @doc("当前库存") remain_stock?: int32,
    @query @doc("总库存") total_stock?: int32,
    @query @doc("抽奖id") lottery_id?: int32,
    @query @doc("奖励显示标签") reward_tag?: string,
    @query @doc("兑换详情图片") redeem_detail_image?: string,
    @query @doc("未知") redeem_detail_videos?: null,
    @query @doc("排序") sort?: int32,
    @query @doc("未知") redeem_items_optional?: null,
    @query @doc("见下方") unlock_condition?: Record<unknown>,
    @query @doc("-") _?: unknown,
    @query @doc("-") _?: unknown,
    @query @doc("是否解锁") unlocked?: boolean,
    @query @doc("解锁类型") lock_type?: int32,
    @query @doc("过期与") expire_at?: int32,
    @query @doc("解锁于") unlocked_at?: int32,
    @query @doc("?解锁起点") unlock_threshold?: int32,
    @query @doc("?当前起点") current_threshold?: int32,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("-")
  _?: unknown;

  @doc("收藏集抽奖id")
  lottery_id?: int32;

  @doc("收藏集抽奖名称")
  name?: string;

  @doc("可抽出的物品列表")
  item_list?: unknown[];

  @doc("见下方")
  collect_list?: Record<unknown>;

  @doc("未知")
  button_bubble?: null;

  @doc("未知")
  guide_info?: null;

  @doc("未知")
  is_booked?: int32;

  @doc("未知")
  total_book_cnt?: int32;

  @doc("未知")
  is_fission?: int32;

  @doc("未知")
  physical_exchange?: int32;

  @doc("-")
  _?: unknown;

  @doc("物品类型")
  item_type?: int32;

  @doc("见下方")
  card_info?: Record<unknown>;

}

/**
 * card_info 对象
 */
@doc("card_info 数据模型")
model Card_info {
  @doc("-")
  _?: unknown;

  @doc("该卡片id")
  card_type_id?: int32;

  @doc("该卡片名称")
  card_name?: string;

  @doc("该卡片图片")
  card_img?: string;

  @doc("int")
  card_type?: int32;

  @doc("该卡片动态视频")
  video_list?: unknown[];

  @doc("该卡片旋转方向")
  is_physical_orientation?: int32;

  @doc("该卡片稀有度")
  card_scarcity?: int32;

  @doc("该卡片是否静音")
  is_mute?: int32;

  @doc("该卡片像素宽度")
  width?: int32;

  @doc("该卡片像素高度")
  height?: int32;

  @doc("?该卡片文件名字符串")
  card_ext_text?: string;

  @doc("该卡片图片")
  card_img_download?: string;

  @doc("该卡片动态视频")
  video_list_download?: unknown[];

  @doc("未知")
  play?: null;

  @doc("未知")
  tag?: null;

  @doc("未知")
  card_sub_type?: int32;

  @doc("未知")
  is_new_tag?: int32;

  @doc("未知")
  is_up_tag?: int32;

  @doc("未知")
  is_limited_card?: int32;

  @doc("未知")
  stock_info?: null;

}

/**
 * collect_list 对象
 */
@doc("collect_list 数据模型")
model Collect_list {
  @doc("-")
  _?: unknown;

  @doc("见下方")
  collect_infos?: unknown[];

  @doc("未知")
  collect_chain?: null;

  @doc("-")
  _?: unknown;

  @doc("收集品id")
  collect_id?: int32;

  @doc("开始时间")
  start_time?: int32;

  @doc("结束时间")
  end_time?: int32;

  @doc("兑换条件")
  redeem_text?: string;

  @doc("兑换物类型")
  redeem_item_type?: int32;

  @doc("兑换物id")
  redeem_item_id?: string;

  @doc("兑换物名称")
  redeem_item_name?: string;

  @doc("兑换物预览图片")
  redeem_item_image?: string;

  @doc("拥有的数量")
  owned_item_amount?: int32;

  @doc("需要的数量")
  require_item_amount?: int32;

  @doc("兑换次数")
  has_redeemed_cnt?: int32;

  @doc("是否永久有效")
  effective_forever?: int32;

  @doc("未知")
  redeem_item_image_download?: string;

  @doc("见下方")
  card_item?: Record<unknown>;

  @doc("?跳转链接")
  jump_url?: string;

  @doc("当前兑换状态")
  redeem_cond_type?: string;

  @doc("当前库存")
  remain_stock?: int32;

  @doc("总库存")
  total_stock?: int32;

  @doc("抽奖id")
  lottery_id?: int32;

  @doc("奖励显示标签")
  reward_tag?: string;

  @doc("兑换详情图片")
  redeem_detail_image?: string;

  @doc("未知")
  redeem_detail_videos?: null;

  @doc("排序")
  sort?: int32;

  @doc("未知")
  redeem_items_optional?: null;

  @doc("见下方")
  unlock_condition?: Record<unknown>;

}

/**
 * card_item 对象
 */
@doc("card_item 数据模型")
model Card_item {
  @doc("-")
  _?: unknown;

}

/**
 * unlock_condition 对象
 */
@doc("unlock_condition 数据模型")
model Unlock_condition {
  @doc("-")
  _?: unknown;

  @doc("是否解锁")
  unlocked?: boolean;

  @doc("解锁类型")
  lock_type?: int32;

  @doc("过期与")
  expire_at?: int32;

  @doc("解锁于")
  unlocked_at?: int32;

  @doc("?解锁起点")
  unlock_threshold?: int32;

  @doc("?当前起点")
  current_threshold?: int32;

}

/**
 * 主题装扮信息API
 */
@route("/x/garb/v2/mall/suit/detail")
@tag("Garb")
interface 主题装扮信息api {
  @get
  @doc("主题装扮信息API")
  主题装扮信息api(
    @query @doc("设备唯一标识") buvid: string,
    @query @doc("用户csrf") csrf: string,
    @query @doc("来源页面") from: string,
    @query @doc("来源页面id") from_id: int32,
    @query @doc("装扮id") item_id: int32,
    @query @doc("?分类") part: string,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("装扮id") item_id?: int64,
    @query @doc("装扮名称") name?: string,
    @query @doc("分组id") group_id?: int64,
    @query @doc("分组名称") group_name?: string,
    @query @doc("分类id") part_id?: int64,
    @query @doc("状态") state?: string,
    @query @doc("装扮具体属性") properties?: Record<unknown>,
    @query @doc("当前活动") current_activity?: string,
    @query @doc("下一个活动") next_activity?: Record<unknown>,
    @query @doc("**作用尚不明确**") current_sources?: string,
    @query @doc("**作用尚不明确**") finish_sources?: string,
    @query @doc("**作用尚不明确**") sale_left_time?: int64,
    @query @doc("**作用尚不明确**") sale_time_end?: int64,
    @query @doc("商品剩余数量") sale_surplus?: int64,
    @query @doc("促销销量说明") sale_count_desc?: string,
    @query @doc("总销量说明") total_count_desc?: string,
    @query @doc("标签") tag?: string,
    @query @doc("跳转链接") jump_link?: string,
    @query @doc("促销模式") sales_mode?: int64,
    @query @doc("装扮具体内容") suit_items?: Record<unknown>,
    @query @doc("装扮来源用户") fan_user?: Record<unknown>,
    @query @doc("未解锁装扮") unlock_items?: Record<unknown>,
    @query @doc("活动入口") activity_entrance?: Record<unknown>,
    @query @doc("说明") desc?: string,
    @query @doc("用户说明") fan_desc?: string,
    @query @doc("装扮id") fan_id?: string,
    @query @doc("装扮id列表") fan_item_ids?: string,
    @query @doc("用户mid") fan_mid?: string,
    @query @doc("**为一串颜色16进制字符串，但作用尚不明确**") fan_no_color?: string,
    @query @doc("用户推荐说明") fan_recommend_desc?: string,
    @query @doc("跳转类型") fan_recommend_jump_type?: string,
    @query @doc("跳转的值") fan_recommend_jump_value?: string,
    @query @doc("**布尔型转换的字符串，作用尚不明确**") gray_rule?: string,
    @query @doc("**作用尚不明确**") gray_rule_type?: string,
    @query @doc("图片封面链接") image_cover?: string,
    @query @doc("图片封面颜色") image_cover_color?: string,
    @query @doc("是否隐藏") is_hide?: string,
    @query @doc("动态卡片id") item_id_card?: string,
    @query @doc("表情包id") item_id_emoji?: string,
    @query @doc("动态点赞特效id") item_id_thumbup?: string,
    @query @doc("是否开启平台VIP折扣") open_platform_vip_discount?: string,
    @query @doc("装扮所有者的用户uid") owner_uid?: string,
    @query @doc("?显示投资者排名") rank_investor_show?: string,
    @query @doc("**布尔型转换的字符串，作用尚不明确**") realname_auth?: string,
    @query @doc("促销限制数量") sale_buy_num_limit?: string,
    @query @doc("促销质量") sale_quantity?: string,
    @query @doc("?是否限制某些质量装扮的销售") sale_quantity_limit?: string,
    @query @doc("促销限制地区") sale_region_ip_limit?: string,
    @query @doc("**布尔型转换的字符串，作用尚不明确**") sale_reserve_switch?: string,
    @query @doc("促销开始时间的时间戳") sale_time_begin?: string,
    @query @doc("促销类型") sale_type?: string,
    @query @doc("装扮卡片类型") suit_card_type?: string,
    @query @doc("类型") type?: string,
    @query @doc("动态卡片") card?: unknown[],
    @query @doc("表情包") emoji_package?: unknown[],
    @query @doc("专属评论装扮") card_bg?: unknown[],
    @query @doc("动态点赞特效") thumbup?: unknown[],
    @query @doc("专属加载动画") loading?: unknown[],
    @query @doc("专属进度条") play_icon?: unknown[],
    @query @doc("专属个性主题") skin?: unknown[],
    @query @doc("专属空间海报") space_bg?: unknown[],
    @query @doc("装扮id") item_id?: int64,
    @query @doc("装扮名称") name?: string,
    @query @doc("状态") state?: string,
    @query @doc("分栏id") tab_id?: int64,
    @query @doc("所属装扮的id") suit_item_id?: int64,
    @query @doc("装扮具体属性") properties?: Record<unknown>,
    @query @doc("当前活动") current_activity?: string,
    @query @doc("下一个活动") next_activity?: Record<unknown>,
    @query @doc("**作用尚不明确**") current_sources?: string,
    @query @doc("**作用尚不明确**") finish_sources?: string,
    @query @doc("**作用尚不明确**") sale_left_time?: string,
    @query @doc("**作用尚不明确**") sale_time_end?: string,
    @query @doc("商品剩余数量") sale_surplus?: string,
    @query @doc("装扮的具体内容") items?: string,
    @query @doc("**布尔型转换的字符串，作用尚不明确**") gray_rule?: string,
    @query @doc("**作用尚不明确**") gray_rule_type?: string,
    @query @doc("**布尔型转换的字符串，作用尚不明确**") realname_auth?: string,
    @query @doc("促销类型") sale_type?: string,
    @query @doc("图片") image?: string,
    @query @doc("预览图") image_preview_small?: string,
    @query @doc("**布尔型转换的字符串，作用尚不明确**") addable?: string,
    @query @doc("**作用尚不明确**") biz?: string,
    @query @doc("**布尔型转换的字符串，作用尚不明确**") is_symbol?: string,
    @query @doc("是否永久") permanent?: string,
    @query @doc("**布尔型转换的字符串，作用尚不明确**") preview?: string,
    @query @doc("**布尔型转换的字符串，作用尚不明确**") recently_used?: string,
    @query @doc("是否推荐") recommend?: string,
    @query @doc("是否可移除") removable?: string,
    @query @doc("**布尔型转换的字符串，作用尚不明确**") setting_pannel_not_show?: string,
    @query @doc("尺寸") size?: string,
    @query @doc("排序类型") sortable?: string,
    @query @doc("进度条动画的其中一帧") loading_frame_url?: string,
    @query @doc("进度条动画") loading_url?: string,
    @query @doc("进度条向左拖动时的图片") drag_left_png?: string,
    @query @doc("进度条向右拖动时的图片") drag_right_png?: string,
    @query @doc("进度条暂停时的图片") middle_png?: string,
    @query @doc("效果图") squared_image?: string,
    @query @doc("静态图标") static_icon_image?: string,
    @query @doc("首页顶部图片") head_bg?: string,
    @query @doc("个人空间顶部视频动画的播放类型") head_myself_mp4_play?: string,
    @query @doc("个人空间顶部图片") head_myself_squared_bg?: string,
    @query @doc("首页顶部标签栏背景图") head_tab_bg?: string,
    @query @doc("封面图") image_cover?: string,
    @query @doc("装扮图包的md5值") package_md5?: string,
    @query @doc("装扮图包的压缩包链接") package_url?: string,
    @query @doc("皮肤模式") skin_mode?: string,
    @query @doc("首页底部图片") tail_bg?: string,
    @query @doc("首页底部颜色") tail_color?: string,
    @query @doc("首页底部被选中时的颜色") tail_color_selected?: string,
    @query @doc("首页底部是否播放动画") tail_icon_ani?: string,
    @query @doc("首页底部动画的播放类型") tail_icon_ani_mode?: string,
    @query @doc("首页底部“动态”按钮图片") tail_icon_channel?: string,
    @query @doc("首页底部“发布动态”按钮图片") tail_icon_dynamic?: string,
    @query @doc("首页底部“首页”按钮图片") tail_icon_main?: string,
    @query @doc("首页底部图标模式") tail_icon_mode?: string,
    @query @doc("首页底部“我的”按钮图片") tail_icon_myself?: string,
    @query @doc("首页底部“发布动态”按钮图片") tail_icon_pub_btn_bg?: string,
    @query @doc("首页底部“动态”按钮被选中时的图片") tail_icon_selected_channel?: string,
    @query @doc("首页底部“发布动态”按钮被选中时的图片") tail_icon_selected_dynamic?: string,
    @query @doc("首页底部“首页”按钮被选中时的图片") tail_icon_selected_main?: string,
    @query @doc("首页底部“我的”按钮被选中时的图片") tail_icon_selected_myself?: string,
    @query @doc("首页底部“发布动态”按钮被选中时的图片") tail_icon_selected_pub_btn_bg?: string,
    @query @doc("首页底部“会员购”按钮被选中时的图片") tail_icon_selected_shop?: string,
    @query @doc("首页底部“会员购”按钮图片") tail_icon_shop?: string,
    @query @doc("第一张空间海报") image1_landscape?: string,
    @query @doc("第一张空间海报（纵向）") image1_portrait?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("装扮id")
  item_id?: int64;

  @doc("装扮名称")
  name?: string;

  @doc("分组id")
  group_id?: int64;

  @doc("分组名称")
  group_name?: string;

  @doc("分类id")
  part_id?: int64;

  @doc("状态")
  state?: string;

  @doc("装扮具体属性")
  properties?: Record<unknown>;

  @doc("当前活动")
  current_activity?: string;

  @doc("下一个活动")
  next_activity?: Record<unknown>;

  @doc("**作用尚不明确**")
  current_sources?: string;

  @doc("**作用尚不明确**")
  finish_sources?: string;

  @doc("**作用尚不明确**")
  sale_left_time?: int64;

  @doc("**作用尚不明确**")
  sale_time_end?: int64;

  @doc("商品剩余数量")
  sale_surplus?: int64;

  @doc("促销销量说明")
  sale_count_desc?: string;

  @doc("总销量说明")
  total_count_desc?: string;

  @doc("标签")
  tag?: string;

  @doc("跳转链接")
  jump_link?: string;

  @doc("促销模式")
  sales_mode?: int64;

  @doc("装扮具体内容")
  suit_items?: Record<unknown>;

  @doc("装扮来源用户")
  fan_user?: Record<unknown>;

  @doc("未解锁装扮")
  unlock_items?: Record<unknown>;

  @doc("活动入口")
  activity_entrance?: Record<unknown>;

}

/**
 * properties 对象
 */
@doc("properties 数据模型")
model Properties {
  @doc("说明")
  desc?: string;

  @doc("用户说明")
  fan_desc?: string;

  @doc("装扮id")
  fan_id?: string;

  @doc("装扮id列表")
  fan_item_ids?: string;

  @doc("用户mid")
  fan_mid?: string;

  @doc("**为一串颜色16进制字符串，但作用尚不明确**")
  fan_no_color?: string;

  @doc("用户推荐说明")
  fan_recommend_desc?: string;

  @doc("跳转类型")
  fan_recommend_jump_type?: string;

  @doc("跳转的值")
  fan_recommend_jump_value?: string;

  @doc("**布尔型转换的字符串，作用尚不明确**")
  gray_rule?: string;

  @doc("**作用尚不明确**")
  gray_rule_type?: string;

  @doc("图片封面链接")
  image_cover?: string;

  @doc("图片封面颜色")
  image_cover_color?: string;

  @doc("是否隐藏")
  is_hide?: string;

  @doc("动态卡片id")
  item_id_card?: string;

  @doc("表情包id")
  item_id_emoji?: string;

  @doc("动态点赞特效id")
  item_id_thumbup?: string;

  @doc("是否开启平台VIP折扣")
  open_platform_vip_discount?: string;

  @doc("装扮所有者的用户uid")
  owner_uid?: string;

  @doc("?显示投资者排名")
  rank_investor_show?: string;

  @doc("**布尔型转换的字符串，作用尚不明确**")
  realname_auth?: string;

  @doc("促销限制数量")
  sale_buy_num_limit?: string;

  @doc("促销质量")
  sale_quantity?: string;

  @doc("?是否限制某些质量装扮的销售")
  sale_quantity_limit?: string;

  @doc("促销限制地区")
  sale_region_ip_limit?: string;

  @doc("**布尔型转换的字符串，作用尚不明确**")
  sale_reserve_switch?: string;

  @doc("促销开始时间的时间戳")
  sale_time_begin?: string;

  @doc("促销类型")
  sale_type?: string;

  @doc("装扮卡片类型")
  suit_card_type?: string;

  @doc("类型")
  type?: string;

}

/**
 * suit_items 对象
 */
@doc("suit_items 数据模型")
model Suit_items {
  @doc("动态卡片")
  card?: unknown[];

  @doc("表情包")
  emoji_package?: unknown[];

  @doc("专属评论装扮")
  card_bg?: unknown[];

  @doc("动态点赞特效")
  thumbup?: unknown[];

  @doc("专属加载动画")
  loading?: unknown[];

  @doc("专属进度条")
  play_icon?: unknown[];

  @doc("专属个性主题")
  skin?: unknown[];

  @doc("专属空间海报")
  space_bg?: unknown[];

  @doc("装扮id")
  item_id?: int64;

  @doc("装扮名称")
  name?: string;

  @doc("状态")
  state?: string;

  @doc("分栏id")
  tab_id?: int64;

  @doc("所属装扮的id")
  suit_item_id?: int64;

  @doc("装扮具体属性")
  properties?: Record<unknown>;

  @doc("当前活动")
  current_activity?: string;

  @doc("下一个活动")
  next_activity?: Record<unknown>;

  @doc("**作用尚不明确**")
  current_sources?: string;

  @doc("**作用尚不明确**")
  finish_sources?: string;

  @doc("**作用尚不明确**")
  sale_left_time?: string;

  @doc("**作用尚不明确**")
  sale_time_end?: string;

  @doc("商品剩余数量")
  sale_surplus?: string;

  @doc("装扮的具体内容")
  items?: string;

}

/**
 * properties 对象
 */
@doc("properties 数据模型")
model Properties {
  @doc("**布尔型转换的字符串，作用尚不明确**")
  gray_rule?: string;

  @doc("**作用尚不明确**")
  gray_rule_type?: string;

  @doc("**布尔型转换的字符串，作用尚不明确**")
  realname_auth?: string;

  @doc("促销类型")
  sale_type?: string;

  @doc("图片")
  image?: string;

  @doc("预览图")
  image_preview_small?: string;

}

/**
 * properties 对象
 */
@doc("properties 数据模型")
model Properties {
  @doc("**布尔型转换的字符串，作用尚不明确**")
  addable?: string;

  @doc("**作用尚不明确**")
  biz?: string;

  @doc("**布尔型转换的字符串，作用尚不明确**")
  is_symbol?: string;

  @doc("是否永久")
  permanent?: string;

  @doc("**布尔型转换的字符串，作用尚不明确**")
  preview?: string;

  @doc("**布尔型转换的字符串，作用尚不明确**")
  recently_used?: string;

  @doc("是否推荐")
  recommend?: string;

  @doc("是否可移除")
  removable?: string;

  @doc("**布尔型转换的字符串，作用尚不明确**")
  setting_pannel_not_show?: string;

  @doc("尺寸")
  size?: string;

  @doc("排序类型")
  sortable?: string;

}

/**
 * properties 对象
 */
@doc("properties 数据模型")
model Properties {
  @doc("进度条动画的其中一帧")
  loading_frame_url?: string;

  @doc("进度条动画")
  loading_url?: string;

}

/**
 * properties 对象
 */
@doc("properties 数据模型")
model Properties {
  @doc("进度条向左拖动时的图片")
  drag_left_png?: string;

  @doc("进度条向右拖动时的图片")
  drag_right_png?: string;

  @doc("进度条暂停时的图片")
  middle_png?: string;

  @doc("效果图")
  squared_image?: string;

  @doc("静态图标")
  static_icon_image?: string;

}

/**
 * properties 对象
 */
@doc("properties 数据模型")
model Properties {
  @doc("首页顶部图片")
  head_bg?: string;

  @doc("个人空间顶部视频动画的播放类型")
  head_myself_mp4_play?: string;

  @doc("个人空间顶部图片")
  head_myself_squared_bg?: string;

  @doc("首页顶部标签栏背景图")
  head_tab_bg?: string;

  @doc("封面图")
  image_cover?: string;

  @doc("装扮图包的md5值")
  package_md5?: string;

  @doc("装扮图包的压缩包链接")
  package_url?: string;

  @doc("皮肤模式")
  skin_mode?: string;

  @doc("首页底部图片")
  tail_bg?: string;

  @doc("首页底部颜色")
  tail_color?: string;

  @doc("首页底部被选中时的颜色")
  tail_color_selected?: string;

  @doc("首页底部是否播放动画")
  tail_icon_ani?: string;

  @doc("首页底部动画的播放类型")
  tail_icon_ani_mode?: string;

  @doc("首页底部“动态”按钮图片")
  tail_icon_channel?: string;

  @doc("首页底部“发布动态”按钮图片")
  tail_icon_dynamic?: string;

  @doc("首页底部“首页”按钮图片")
  tail_icon_main?: string;

  @doc("首页底部图标模式")
  tail_icon_mode?: string;

  @doc("首页底部“我的”按钮图片")
  tail_icon_myself?: string;

  @doc("首页底部“发布动态”按钮图片")
  tail_icon_pub_btn_bg?: string;

  @doc("首页底部“动态”按钮被选中时的图片")
  tail_icon_selected_channel?: string;

  @doc("首页底部“发布动态”按钮被选中时的图片")
  tail_icon_selected_dynamic?: string;

  @doc("首页底部“首页”按钮被选中时的图片")
  tail_icon_selected_main?: string;

  @doc("首页底部“我的”按钮被选中时的图片")
  tail_icon_selected_myself?: string;

  @doc("首页底部“发布动态”按钮被选中时的图片")
  tail_icon_selected_pub_btn_bg?: string;

  @doc("首页底部“会员购”按钮被选中时的图片")
  tail_icon_selected_shop?: string;

  @doc("首页底部“会员购”按钮图片")
  tail_icon_shop?: string;

}

/**
 * properties 对象
 */
@doc("properties 数据模型")
model Properties {
  @doc("第一张空间海报")
  image1_landscape?: string;

  @doc("第一张空间海报（纵向）")
  image1_portrait?: string;

}

/**
 * 主题装扮列表API
 */
@route("/x/garb/v2/mall/partition/item/list")
@tag("Garb")
interface 主题装扮列表api {
  @get
  @doc("主题装扮列表API")
  主题装扮列表api(
    @query @doc("用户csrf") csrf: string,
    @query @doc("分组id") group_id: int64,
    @query @doc("非必要") location?: string,
    @query @doc("分类id") part_id: int64,
    @query @doc("页码") pn: int64,
    @query @doc("每页的数据数量") ps: int64,
    @query @doc("排序方式") sort_type: int64,
    @query @doc("用户信息") user_info: string,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("分页信息") page?: Record<unknown>,
    @query @doc("装扮列表") list?: unknown[],
    @query @doc("补偿信息") offset_info?: string,
    @query @doc("分组") group?: string,
    @query @doc("装扮id") item_id?: int64,
    @query @doc("装扮名称") name?: string,
    @query @doc("分组id") group_id?: int64,
    @query @doc("分组名称") group_name?: string,
    @query @doc("分类id") part_id?: int64,
    @query @doc("状态") state?: string,
    @query @doc("装扮具体属性") properties?: Record<unknown>,
    @query @doc("当前活动") current_activity?: string,
    @query @doc("下一个活动") next_activity?: Record<unknown>,
    @query @doc("**作用尚不明确**") current_sources?: string,
    @query @doc("**作用尚不明确**") finish_sources?: string,
    @query @doc("**作用尚不明确**") sale_left_time?: int64,
    @query @doc("**作用尚不明确**") sale_time_end?: int64,
    @query @doc("商品剩余数量") sale_surplus?: int64,
    @query @doc("促销销量说明") sale_count_desc?: string,
    @query @doc("总销量说明") total_count_desc?: string,
    @query @doc("标签") tag?: string,
    @query @doc("跳转链接") jump_link?: string,
    @query @doc("促销模式") sales_mode?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("分页信息")
  page?: Record<unknown>;

  @doc("装扮列表")
  list?: unknown[];

  @doc("补偿信息")
  offset_info?: string;

  @doc("分组")
  group?: string;

}

/**
 * list 对象
 */
@doc("list 数据模型")
model List {
  @doc("装扮id")
  item_id?: int64;

  @doc("装扮名称")
  name?: string;

  @doc("分组id")
  group_id?: int64;

  @doc("分组名称")
  group_name?: string;

  @doc("分类id")
  part_id?: int64;

  @doc("状态")
  state?: string;

  @doc("装扮具体属性")
  properties?: Record<unknown>;

  @doc("当前活动")
  current_activity?: string;

  @doc("下一个活动")
  next_activity?: Record<unknown>;

  @doc("**作用尚不明确**")
  current_sources?: string;

  @doc("**作用尚不明确**")
  finish_sources?: string;

  @doc("**作用尚不明确**")
  sale_left_time?: int64;

  @doc("**作用尚不明确**")
  sale_time_end?: int64;

  @doc("商品剩余数量")
  sale_surplus?: int64;

  @doc("促销销量说明")
  sale_count_desc?: string;

  @doc("总销量说明")
  total_count_desc?: string;

  @doc("标签")
  tag?: string;

  @doc("跳转链接")
  jump_link?: string;

  @doc("促销模式")
  sales_mode?: int64;

}

/**
 * 收藏集列表API
 */
@route("/x/vas/dlc_act/act/list")
@tag("Garb")
interface 收藏集列表api {
  @get
  @doc("收藏集列表API")
  收藏集列表api(
    @query @doc("用户csrf") csrf: string,
    @query @doc("非必要") scene?: int64,
    @query @doc("位置") site: unknown,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("是否还有足够的收藏集") is_more?: boolean,
    @query @doc("位置") site?: int64,
    @query @doc("收藏集id") act_id?: int64,
    @query @doc("收藏集名称") act_name?: int64,
    @query @doc("收藏集封面图片") act_pic?: int64,
    @query @doc("收藏集价格") sale_price?: int64,
    @query @doc("收藏集说明") act_desc?: int64,
    @query @doc("标签") tag?: int64,
    @query @doc("抽奖id") lottery_id?: int64,
    @query @doc("抽奖类型") lottery_type?: int64,
    @query @doc("收藏集链接") act_link?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("收藏集id")
  act_id?: int64;

  @doc("收藏集名称")
  act_name?: int64;

  @doc("收藏集封面图片")
  act_pic?: int64;

  @doc("收藏集价格")
  sale_price?: int64;

  @doc("收藏集说明")
  act_desc?: int64;

  @doc("标签")
  tag?: int64;

  @doc("抽奖id")
  lottery_id?: int64;

  @doc("抽奖类型")
  lottery_type?: int64;

  @doc("收藏集链接")
  act_link?: int64;

}
