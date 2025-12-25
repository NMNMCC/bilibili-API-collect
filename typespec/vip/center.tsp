import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Vip;

/**
 * 大会员中心信息
 */
@route("/x/vip/web/vip_center/combine")
@tag("Vip")
interface 大会员中心信息 {
  @get
  @doc("大会员中心信息")
  大会员中心信息(
    @query @doc("APP登录Token") access_key: string,
    @query @doc("平台表示") platform: string,
    @query @doc("APP 名称") mobi_app: string,
    @query @doc("构建 id") build: int64,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("响应码") code?: int64,
    @query @doc("0") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("用户信息") user?: Record<unknown>,
    @query @doc("钱包信息") wallet?: Record<unknown>,
    @query @doc("联合会员信息列表") union_vip?: unknown,
    @query @doc("其他开通方式信息列表") other_open_info?: unknown,
    @query @doc("会员特权信息列表") privileges?: unknown[],
    @query @doc("banner 卡片列表") banners?: unknown[],
    @query @doc("福利信息") welfare?: Record<unknown>,
    @query @doc("推荐头像框信息") recommend_pendants?: Record<unknown>,
    @query @doc("推荐装扮信息") recommend_cards?: Record<unknown>,
    @query @doc("大积分信息") big_point?: Record<unknown>,
    @query @doc("热门榜单类型信息") hot_list?: Record<unknown>,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("账号基本信息") account?: Record<unknown>,
    @query @doc("账号会员信息") vip?: Record<unknown>,
    @query @doc("电视会员信息") tv?: Record<unknown>,
    @query @doc("空") background_image_small?: string,
    @query @doc("空") background_image_big?: string,
    @query @doc("用户昵称") panel_title?: string,
    @query @doc("用户头像框信息") avatar_pendant?: Record<unknown>,
    @query @doc("大会员提示文案") vip_overdue_explain?: string,
    @query @doc("电视大会员提示文案") tv_overdue_explain?: string,
    @query @doc("空") account_exception_text?: string,
    @query @doc("是否自动续费") is_auto_renew?: boolean,
    @query @doc("是否自动续费电视大会员") is_tv_auto_renew?: boolean,
    @query @doc("大会员到期剩余时间") surplus_seconds?: int64,
    @query @doc("持续开通大会员时间") vip_keep_time?: int64,
    @query @doc("(?)") renew?: Record<unknown>,
    @query @doc("(?)") notice?: Record<unknown>,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("用户 mid") mid?: int64,
    @query @doc("昵称") name?: string,
    @query @doc("性别") sex?: string,
    @query @doc("头像 url") face?: string,
    @query @doc("签名") sign?: string,
    @query @doc("等级") rank?: int64,
    @query @doc("生日") birthday?: int64,
    @query @doc("(?)") is_fake_account?: int64,
    @query @doc("是否注销") is_deleted?: int64,
    @query @doc("是否注册审核") in_reg_audit?: int64,
    @query @doc("是否转正") is_senior_member?: int64,
    @query @doc("用户 mid") mid?: int64,
    @query @doc("会员类型") vip_type?: int64,
    @query @doc("会员状态") vip_status?: int64,
    @query @doc("会员过期时间") vip_due_date?: int64,
    @query @doc("支付类型") vip_pay_type?: int64,
    @query @doc("(?)") theme_type?: int64,
    @query @doc("会员标签") label?: Record<unknown>,
    @query @doc("是否显示会员图标") avatar_subscript?: int64,
    @query @doc("会员昵称颜色") nickname_color?: string,
    @query @doc("(?)") is_new_user?: boolean,
    @query @doc("(?)") tip_material?: null,
    @query @doc("会员类型文案") text?: string,
    @query @doc("会员标签") label_theme?: string,
    @query @doc("会员标签文本颜色") text_color?: string,
    @query @doc("1") bg_style?: int64,
    @query @doc("会员标签背景颜色") bg_color?: string,
    @query @doc("会员标签边框颜色") border_color?: string,
    @query @doc("`true`") use_img_label?: boolean,
    @query @doc("空") img_label_uri_hans?: string,
    @query @doc("空") img_label_uri_hant?: string,
    @query @doc("大会员牌子图片") img_label_uri_hans_static?: string,
    @query @doc("大会员牌子图片") img_label_uri_hant_static?: string,
    @query @doc("电视大会员类型") type?: int64,
    @query @doc("电视大支付类型") vip_pay_type?: int64,
    @query @doc("电视大会员状态") status?: int64,
    @query @doc("电视大会员过期时间") due_date?: int64,
    @query @doc("头像框 url") image?: string,
    @query @doc("头像框 url") image_enhance?: string,
    @query @doc("动态头像框帧波普版 url") image_enhance_frame?: string,
    @query @doc("(?)") text?: string,
    @query @doc("(?)") link?: string,
    @query @doc("(?)") text?: string,
    @query @doc("(?)") tv_text?: string,
    @query @doc("(?)") type?: int64,
    @query @doc("(?)") can_close?: boolean,
    @query @doc("(?)") surplus_seconds?: int64,
    @query @doc("(?)") tv_surplus_seconds?: int64,
    @query @doc("当前 B 币券") coupon?: int64,
    @query @doc("(?)") point?: int64,
    @query @doc("(?)") privilege_received?: boolean,
    @query @doc("内容") 项?: unknown,
    @query @doc("联合会员项 1") field_0?: Record<unknown>,
    @query @doc("联合会员项 (n+1)") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("联合会员图片小 url") image_2x?: string,
    @query @doc("联合会员图片大 url") image_3x?: string,
    @query @doc("联合会员名称") title?: string,
    @query @doc("联合会员开通页 url") link?: string,
    @query @doc("排列顺序") sort?: int64,
    @query @doc("内容") 项?: unknown,
    @query @doc("其他开通方式项 1") field_0?: Record<unknown>,
    @query @doc("其他开通方式项 (n+1)") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("其他开通方式名称") title?: string,
    @query @doc("其他开通方式开通页 url") url?: string,
    @query @doc("其他开通方式图标 url") icon_url?: string,
    @query @doc("提示文案") desc?: string,
    @query @doc("排列顺序") sort?: int64,
    @query @doc("内容") 项?: unknown,
    @query @doc("特权父类 1") field_0?: Record<unknown>,
    @query @doc("特权父类 (n+1)") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("特权父类 id") id?: int64,
    @query @doc("类型名称") name?: string,
    @query @doc("特权子类列表") child_privileges?: unknown[],
    @query @doc("内容") 项?: unknown,
    @query @doc("特权子类 1") field_0?: Record<unknown>,
    @query @doc("特权子类 (n+1)") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("特权父类 id") first_id?: int64,
    @query @doc("上报 id") report_id?: string,
    @query @doc("特权名称") name?: string,
    @query @doc("特权简介文案") desc?: string,
    @query @doc("特权介绍正文") explain?: string,
    @query @doc("特权图标 url") icon_url?: string,
    @query @doc("特权图标灰色主题 url") icon_gray_url?: string,
    @query @doc("背景图片 url") background_image_url?: string,
    @query @doc("特权介绍页 url") link?: string,
    @query @doc("特权示例图 url") image_url?: string,
    @query @doc("类型？") type?: int64,
    @query @doc("是否热门特权") hot_type?: int64,
    @query @doc("是否新特权") new_type?: int64,
    @query @doc("特权子类 id") id?: int64,
    @query @doc("内容") 项?: unknown,
    @query @doc("banner 项目 1") field_0?: Record<unknown>,
    @query @doc("banner 项目 (n+1)") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("banner 卡片 id") id?: int64,
    @query @doc("banner 卡片排序") index?: int64,
    @query @doc("banner 卡片图片 url") image?: string,
    @query @doc("banner 卡片标题") title?: string,
    @query @doc("banner 卡片跳转页 url") uri?: string,
    @query @doc("上报参数") track_params?: Record<unknown>,
    @query @doc("福利数") count?: int64,
    @query @doc("福利项目列表") list?: unknown[],
    @query @doc("内容") 项?: unknown,
    @query @doc("福利项目 1") field_0?: Record<unknown>,
    @query @doc("福利项目 (n+1)") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("福利 id") id?: int64,
    @query @doc("福利名称") name?: string,
    @query @doc("福利图片 url") homepage_uri?: string,
    @query @doc("福利图片 banner url") backdrop_uri?: string,
    @query @doc("(?)") tid?: int64,
    @query @doc("排列顺序") rank?: int64,
    @query @doc("福利跳转页 url") receive_uri?: string,
    @query @doc("头像框商城页面跳转 url") jump_url?: string,
    @query @doc("推荐头像框列表") list?: unknown[],
    @query @doc("内容") 项?: unknown,
    @query @doc("推荐头像框 1") field_0?: Record<unknown>,
    @query @doc("推荐头像框 (n+1)") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("头像框 id") id?: int64,
    @query @doc("头像框名称") name?: string,
    @query @doc("头像框图片 url") image?: string,
    @query @doc("头像框页面 url") jump_url?: string,
    @query @doc("推荐个性装扮商城页面跳转 url") jump_url?: string,
    @query @doc("推荐个性装扮列表") list?: unknown[],
    @query @doc("内容") 项?: unknown,
    @query @doc("推荐个性装扮 1") field_0?: Record<unknown>,
    @query @doc("推荐个性装扮 (n+1)") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("个性装扮 id") id?: int64,
    @query @doc("个性装扮名称") name?: string,
    @query @doc("个性装扮图标 url") image?: string,
    @query @doc("个性装扮页面 url") jump_url?: string,
    @query @doc("内容") 项?: unknown,
    @query @doc("扩展 row 排序 1") field_0?: Record<unknown>,
    @query @doc("扩展 row 排序 (n+1)") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("扩展 row 字段名") key?: string,
    @query @doc("排列顺序") sort?: int64,
    @query @doc("点数信息") point_info?: Record<unknown>,
    @query @doc("签到信息") sign_info?: Record<unknown>,
    @query @doc("大积分商品预览") sku_info?: Record<unknown>,
    @query @doc("当前拥有大积分数量") point?: int64,
    @query @doc("失效积分？") expire_point?: int64,
    @query @doc("失效时间？") expire_time?: int64,
    @query @doc("失效天数？") expire_days?: int64,
    @query @doc("(?)") sign_remind?: boolean,
    @query @doc("签到收益") benefit?: int64,
    @query @doc("(?)") bonus_benefit?: int64,
    @query @doc("(?)") normal_remind?: boolean,
    @query @doc("(?)") muggle_task?: boolean,
    @query @doc("套了个娃") skus?: unknown[],
    @query @doc("内容") 项?: unknown,
    @query @doc("大积分商品 1") field_0?: Record<unknown>,
    @query @doc("大积分商品 (n+1)") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("套了个娃") taps?: unknown[],
    @query @doc("内容") 项?: unknown,
    @query @doc("热门类型 1") field_0?: Record<unknown>,
    @query @doc("热门类型 (n+1)") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("分类数据") oid?: string,
    @query @doc("分类 id") rank_id?: int64,
    @query @doc("分类名称") rank_title?: string,
    @query @doc("MC 编程 电子") _sign____BAC项目负责人?: unknown,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("用户信息")
  user?: Record<unknown>;

  @doc("钱包信息")
  wallet?: Record<unknown>;

  @doc("联合会员信息列表")
  union_vip?: unknown;

  @doc("其他开通方式信息列表")
  other_open_info?: unknown;

  @doc("会员特权信息列表")
  privileges?: unknown[];

  @doc("banner 卡片列表")
  banners?: unknown[];

  @doc("福利信息")
  welfare?: Record<unknown>;

  @doc("推荐头像框信息")
  recommend_pendants?: Record<unknown>;

  @doc("推荐装扮信息")
  recommend_cards?: Record<unknown>;

  @doc("大积分信息")
  big_point?: Record<unknown>;

  @doc("热门榜单类型信息")
  hot_list?: Record<unknown>;

}

/**
 * user 对象
 */
@doc("user 数据模型")
model User {
  @doc("账号基本信息")
  account?: Record<unknown>;

  @doc("账号会员信息")
  vip?: Record<unknown>;

  @doc("电视会员信息")
  tv?: Record<unknown>;

  @doc("空")
  background_image_small?: string;

  @doc("空")
  background_image_big?: string;

  @doc("用户昵称")
  panel_title?: string;

  @doc("用户头像框信息")
  avatar_pendant?: Record<unknown>;

  @doc("大会员提示文案")
  vip_overdue_explain?: string;

  @doc("电视大会员提示文案")
  tv_overdue_explain?: string;

  @doc("空")
  account_exception_text?: string;

  @doc("是否自动续费")
  is_auto_renew?: boolean;

  @doc("是否自动续费电视大会员")
  is_tv_auto_renew?: boolean;

  @doc("大会员到期剩余时间")
  surplus_seconds?: int64;

  @doc("持续开通大会员时间")
  vip_keep_time?: int64;

  @doc("(?)")
  renew?: Record<unknown>;

  @doc("(?)")
  notice?: Record<unknown>;

}

/**
 * account 对象
 */
@doc("account 数据模型")
model Account {
  @doc("用户 mid")
  mid?: int64;

  @doc("昵称")
  name?: string;

  @doc("性别")
  sex?: string;

  @doc("头像 url")
  face?: string;

  @doc("签名")
  sign?: string;

  @doc("等级")
  rank?: int64;

  @doc("生日")
  birthday?: int64;

  @doc("(?)")
  is_fake_account?: int64;

  @doc("是否注销")
  is_deleted?: int64;

  @doc("是否注册审核")
  in_reg_audit?: int64;

  @doc("是否转正")
  is_senior_member?: int64;

}

/**
 * vip 对象
 */
@doc("vip 数据模型")
model Vip {
  @doc("用户 mid")
  mid?: int64;

  @doc("会员类型")
  vip_type?: int64;

  @doc("会员状态")
  vip_status?: int64;

  @doc("会员过期时间")
  vip_due_date?: int64;

  @doc("支付类型")
  vip_pay_type?: int64;

  @doc("(?)")
  theme_type?: int64;

  @doc("会员标签")
  label?: Record<unknown>;

  @doc("是否显示会员图标")
  avatar_subscript?: int64;

  @doc("会员昵称颜色")
  nickname_color?: string;

  @doc("(?)")
  is_new_user?: boolean;

  @doc("(?)")
  tip_material?: null;

}

/**
 * label 对象
 */
@doc("label 数据模型")
model Label {
  @doc("会员类型文案")
  text?: string;

  @doc("会员标签")
  label_theme?: string;

  @doc("会员标签文本颜色")
  text_color?: string;

  @doc("1")
  bg_style?: int64;

  @doc("会员标签背景颜色")
  bg_color?: string;

  @doc("会员标签边框颜色")
  border_color?: string;

  @doc("`true`")
  use_img_label?: boolean;

  @doc("空")
  img_label_uri_hans?: string;

  @doc("空")
  img_label_uri_hant?: string;

  @doc("大会员牌子图片")
  img_label_uri_hans_static?: string;

  @doc("大会员牌子图片")
  img_label_uri_hant_static?: string;

}

/**
 * tv 对象
 */
@doc("tv 数据模型")
model Tv {
  @doc("电视大会员类型")
  type?: int64;

  @doc("电视大支付类型")
  vip_pay_type?: int64;

  @doc("电视大会员状态")
  status?: int64;

  @doc("电视大会员过期时间")
  due_date?: int64;

}

/**
 * avatar_pendant 对象
 */
@doc("avatar_pendant 数据模型")
model Avatar_pendant {
  @doc("头像框 url")
  image?: string;

  @doc("头像框 url")
  image_enhance?: string;

  @doc("动态头像框帧波普版 url")
  image_enhance_frame?: string;

}

/**
 * renew 对象
 */
@doc("renew 数据模型")
model Renew {
  @doc("(?)")
  text?: string;

  @doc("(?)")
  link?: string;

}

/**
 * notice 对象
 */
@doc("notice 数据模型")
model Notice {
  @doc("(?)")
  text?: string;

  @doc("(?)")
  tv_text?: string;

  @doc("(?)")
  type?: int64;

  @doc("(?)")
  can_close?: boolean;

  @doc("(?)")
  surplus_seconds?: int64;

  @doc("(?)")
  tv_surplus_seconds?: int64;

}

/**
 * wallet 对象
 */
@doc("wallet 数据模型")
model Wallet {
  @doc("当前 B 币券")
  coupon?: int64;

  @doc("(?)")
  point?: int64;

  @doc("(?)")
  privilege_received?: boolean;

  @doc("内容")
  项?: unknown;

  @doc("联合会员项 1")
  field_0?: Record<unknown>;

  @doc("联合会员项 (n+1)")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("联合会员图片小 url")
  image_2x?: string;

  @doc("联合会员图片大 url")
  image_3x?: string;

  @doc("联合会员名称")
  title?: string;

  @doc("联合会员开通页 url")
  link?: string;

  @doc("排列顺序")
  sort?: int64;

  @doc("内容")
  项?: unknown;

  @doc("其他开通方式项 1")
  field_0?: Record<unknown>;

  @doc("其他开通方式项 (n+1)")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("其他开通方式名称")
  title?: string;

  @doc("其他开通方式开通页 url")
  url?: string;

  @doc("其他开通方式图标 url")
  icon_url?: string;

  @doc("提示文案")
  desc?: string;

  @doc("排列顺序")
  sort?: int64;

  @doc("内容")
  项?: unknown;

  @doc("特权父类 1")
  field_0?: Record<unknown>;

  @doc("特权父类 (n+1)")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("特权父类 id")
  id?: int64;

  @doc("类型名称")
  name?: string;

  @doc("特权子类列表")
  child_privileges?: unknown[];

  @doc("内容")
  项?: unknown;

  @doc("特权子类 1")
  field_0?: Record<unknown>;

  @doc("特权子类 (n+1)")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("特权父类 id")
  first_id?: int64;

  @doc("上报 id")
  report_id?: string;

  @doc("特权名称")
  name?: string;

  @doc("特权简介文案")
  desc?: string;

  @doc("特权介绍正文")
  explain?: string;

  @doc("特权图标 url")
  icon_url?: string;

  @doc("背景图片 url")
  background_image_url?: string;

  @doc("特权介绍页 url")
  link?: string;

  @doc("特权示例图 url")
  image_url?: string;

  @doc("类型？")
  type?: int64;

  @doc("是否热门特权")
  hot_type?: int64;

  @doc("是否新特权")
  new_type?: int64;

  @doc("特权子类 id")
  id?: int64;

  @doc("内容")
  项?: unknown;

  @doc("banner 项目 1")
  field_0?: Record<unknown>;

  @doc("banner 项目 (n+1)")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("banner 卡片 id")
  id?: int64;

  @doc("banner 卡片排序")
  index?: int64;

  @doc("banner 卡片图片 url")
  image?: string;

  @doc("banner 卡片标题")
  title?: string;

  @doc("banner 卡片跳转页 url")
  uri?: string;

  @doc("上报参数")
  track_params?: Record<unknown>;

}

/**
 * welfare 对象
 */
@doc("welfare 数据模型")
model Welfare {
  @doc("福利数")
  count?: int64;

  @doc("福利项目列表")
  list?: unknown[];

  @doc("内容")
  项?: unknown;

  @doc("福利项目 1")
  field_0?: Record<unknown>;

  @doc("福利项目 (n+1)")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("福利 id")
  id?: int64;

  @doc("福利名称")
  name?: string;

  @doc("福利图片 url")
  homepage_uri?: string;

  @doc("福利图片 banner url")
  backdrop_uri?: string;

  @doc("(?)")
  tid?: int64;

  @doc("排列顺序")
  rank?: int64;

  @doc("福利跳转页 url")
  receive_uri?: string;

}

/**
 * recommend_pendants 对象
 */
@doc("recommend_pendants 数据模型")
model Recommend_pendants {
  @doc("头像框商城页面跳转 url")
  jump_url?: string;

  @doc("推荐头像框列表")
  list?: unknown[];

  @doc("内容")
  项?: unknown;

  @doc("推荐头像框 1")
  field_0?: Record<unknown>;

  @doc("推荐头像框 (n+1)")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("头像框 id")
  id?: int64;

  @doc("头像框名称")
  name?: string;

  @doc("头像框图片 url")
  image?: string;

  @doc("头像框页面 url")
  jump_url?: string;

}

/**
 * recommend_cards 对象
 */
@doc("recommend_cards 数据模型")
model Recommend_cards {
  @doc("推荐个性装扮商城页面跳转 url")
  jump_url?: string;

  @doc("推荐个性装扮列表")
  list?: unknown[];

  @doc("内容")
  项?: unknown;

  @doc("推荐个性装扮 1")
  field_0?: Record<unknown>;

  @doc("推荐个性装扮 (n+1)")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("个性装扮 id")
  id?: int64;

  @doc("个性装扮名称")
  name?: string;

  @doc("个性装扮图标 url")
  image?: string;

  @doc("个性装扮页面 url")
  jump_url?: string;

  @doc("内容")
  项?: unknown;

  @doc("扩展 row 排序 1")
  field_0?: Record<unknown>;

  @doc("扩展 row 排序 (n+1)")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("排列顺序")
  sort?: int64;

}

/**
 * big_point 对象
 */
@doc("big_point 数据模型")
model Big_point {
  @doc("点数信息")
  point_info?: Record<unknown>;

  @doc("签到信息")
  sign_info?: Record<unknown>;

  @doc("大积分商品预览")
  sku_info?: Record<unknown>;

}

/**
 * point_info 对象
 */
@doc("point_info 数据模型")
model Point_info {
  @doc("当前拥有大积分数量")
  point?: int64;

  @doc("失效积分？")
  expire_point?: int64;

  @doc("失效时间？")
  expire_time?: int64;

  @doc("失效天数？")
  expire_days?: int64;

}

/**
 * sign_info 对象
 */
@doc("sign_info 数据模型")
model Sign_info {
  @doc("(?)")
  sign_remind?: boolean;

  @doc("签到收益")
  benefit?: int64;

  @doc("(?)")
  bonus_benefit?: int64;

  @doc("(?)")
  normal_remind?: boolean;

  @doc("(?)")
  muggle_task?: boolean;

}

/**
 * sku_info 对象
 */
@doc("sku_info 数据模型")
model Sku_info {
  @doc("套了个娃")
  skus?: unknown[];

  @doc("内容")
  项?: unknown;

  @doc("大积分商品 1")
  field_0?: Record<unknown>;

  @doc("大积分商品 (n+1)")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

}

/**
 * hot_list 对象
 */
@doc("hot_list 数据模型")
model Hot_list {
  @doc("套了个娃")
  taps?: unknown[];

  @doc("内容")
  项?: unknown;

  @doc("热门类型 1")
  field_0?: Record<unknown>;

  @doc("热门类型 (n+1)")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("分类数据")
  oid?: string;

  @doc("分类 id")
  rank_id?: int64;

  @doc("分类名称")
  rank_title?: string;

  @doc("MC 编程 电子")
  _sign____BAC项目负责人?: unknown;

}

/**
 * 大积分
 */
@route("/x/vip_point/homepage/combine")
@tag("Vip")
interface 大积分 {
  @get
  @doc("大积分")
  大积分(
    @query @doc("APP登录Token") access_key: string,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("响应码") code?: int64,
    @query @doc("0") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("大会员信息") vip_info?: Record<unknown>,
    @query @doc("空") content?: string,
    @query @doc("点数信息") point_info?: Record<unknown>,
    @query @doc("任务信息") task?: Record<unknown>,
    @query @doc("banner 卡片列表") banner?: unknown[],
    @query @doc("商品类型列表") goods_category?: unknown[],
    @query @doc("商品明细列表") goods_skus?: unknown[],
    @query @doc("本次请求时间") current_ts?: int64,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("大会员类型") type?: int64,
    @query @doc("大会员状态") status?: int64,
    @query @doc("大会员过期时间") due_date?: int64,
    @query @doc("支付类型") vip_pay_type?: int64,
    @query @doc("首次大会员开通时间") start_time?: int64,
    @query @doc("`0`") paid_type?: int64,
    @query @doc("当前用户 mid") mid?: int64,
    @query @doc("大会员类型") role?: int64,
    @query @doc("电视大会员状态") tv_vip_status?: int64,
    @query @doc("电视大会员支付类型") tv_vip_pay_type?: int64,
    @query @doc("电视大会员过期时间") tv_due_date?: int64,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("当前拥有大积分数量") point?: int64,
    @query @doc("失效积分？") expire_point?: int64,
    @query @doc("失效时间？") expire_time?: int64,
    @query @doc("失效天数？") expire_days?: int64,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("当前页面显示的任务") task_item?: unknown[],
    @query @doc("任务总数") task_count?: int64,
    @query @doc("`false`") signed?: boolean,
    @query @doc("`5`") score?: int64,
    @query @doc("内容") 项?: unknown,
    @query @doc("任务 1") field_0?: Record<unknown>,
    @query @doc("任务 (n+1)") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("任务 id") task_code?: string,
    @query @doc("任务状态") state?: int64,
    @query @doc("任务名称") title?: string,
    @query @doc("任务图标 url") icon?: string,
    @query @doc("任务副标题") subtitle?: string,
    @query @doc("任务详情说明") explain?: string,
    @query @doc("任务跳转 url") link?: string,
    @query @doc("是否为大会员专享任务") vip_limit?: int64,
    @query @doc("已完成次数") complete_times?: int64,
    @query @doc("最大完成次数") max_times?: int64,
    @query @doc("重试次数？") recall_num?: int64,
    @query @doc("内容") 项?: unknown,
    @query @doc("banner 项目 1") field_0?: Record<unknown>,
    @query @doc("banner 项目 (n+1)") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("跳转 url") link?: string,
    @query @doc("banner 卡片 url") image_url?: string,
    @query @doc("内容") 项?: unknown,
    @query @doc("商品类型 1") field_0?: Record<unknown>,
    @query @doc("商品类型 (n+1)") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("商品类型 id") id?: int64,
    @query @doc("商品类型名称") name?: string,
    @query @doc("状态") state?: int64,
    @query @doc("内容") 项?: unknown,
    @query @doc("大积分商品 1") field_0?: Record<unknown>,
    @query @doc("大积分商品 (n+1)") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("套了个娃") base?: Record<unknown>,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("商品 token") token?: string,
    @query @doc("商品名称") title?: string,
    @query @doc("商品图片 url") picture?: string,
    @query @doc("商品图片组") rotation_pictures?: unknown[],
    @query @doc("价格信息") price?: Record<unknown>,
    @query @doc("库存信息") inventory?: Record<unknown>,
    @query @doc("`2`") user_type?: int64,
    @query @doc("`2` `3` `4`") exchange_limit_type?: int64,
    @query @doc("限购数量") exchange_limit_num?: int64,
    @query @doc("起售时间") start_time?: int64,
    @query @doc("止售时间") end_time?: int64,
    @query @doc("状态？") state?: int64,
    @query @doc("内容") 项?: unknown,
    @query @doc("商品图片 url") field_0?: string,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("商品原价") origin?: int64,
    @query @doc("折扣信息") promotion?: unknown,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("折后价格") price?: int64,
    @query @doc("折扣类型") type?: int64,
    @query @doc("折扣力度") discount?: int64,
    @query @doc("标签文案") label?: string,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("库存总量") available_num?: int64,
    @query @doc("已售数量") used_num?: int64,
    @query @doc("剩余数量") surplus_num?: int64,
    @query @doc("APP 登录 Token") access_key: string,
    @query @doc("改变类型") change_type: int64,
    @query @doc("分页页数") pn: int64,
    @query @doc("分页大小") ps: int64,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("响应码") code?: int64,
    @query @doc("0") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("总记录数") total?: int64,
    @query @doc("积分记录数组") big_point_list?: unknown[],
    @query @doc("内容") 字段名?: unknown,
    @query @doc("改变的积分数") point?: int64,
    @query @doc("改变时间戳") change_time?: int64,
    @query @doc("批注，积分改变的原因") remark?: string,
    @query @doc("编号") order_no?: string,
    @query @doc("商品图片") image_url?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("大会员信息")
  vip_info?: Record<unknown>;

  @doc("空")
  content?: string;

  @doc("点数信息")
  point_info?: Record<unknown>;

  @doc("任务信息")
  task?: Record<unknown>;

  @doc("banner 卡片列表")
  banner?: unknown[];

  @doc("商品类型列表")
  goods_category?: unknown[];

  @doc("商品明细列表")
  goods_skus?: unknown[];

  @doc("本次请求时间")
  current_ts?: int64;

}

/**
 * vip_info 对象
 */
@doc("vip_info 数据模型")
model Vip_info {
  @doc("大会员类型")
  type?: int64;

  @doc("大会员状态")
  status?: int64;

  @doc("大会员过期时间")
  due_date?: int64;

  @doc("支付类型")
  vip_pay_type?: int64;

  @doc("首次大会员开通时间")
  start_time?: int64;

  @doc("`0`")
  paid_type?: int64;

  @doc("当前用户 mid")
  mid?: int64;

  @doc("大会员类型")
  role?: int64;

  @doc("电视大会员状态")
  tv_vip_status?: int64;

  @doc("电视大会员支付类型")
  tv_vip_pay_type?: int64;

  @doc("电视大会员过期时间")
  tv_due_date?: int64;

}

/**
 * point_info 对象
 */
@doc("point_info 数据模型")
model Point_info {
  @doc("当前拥有大积分数量")
  point?: int64;

  @doc("失效积分？")
  expire_point?: int64;

  @doc("失效时间？")
  expire_time?: int64;

  @doc("失效天数？")
  expire_days?: int64;

}

/**
 * task 对象
 */
@doc("task 数据模型")
model Task {
  @doc("当前页面显示的任务")
  task_item?: unknown[];

  @doc("任务总数")
  task_count?: int64;

  @doc("`false`")
  signed?: boolean;

  @doc("`5`")
  score?: int64;

  @doc("内容")
  项?: unknown;

  @doc("任务 1")
  field_0?: Record<unknown>;

  @doc("任务 (n+1)")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("任务 id")
  task_code?: string;

  @doc("任务状态")
  state?: int64;

  @doc("任务名称")
  title?: string;

  @doc("任务图标 url")
  icon?: string;

  @doc("任务副标题")
  subtitle?: string;

  @doc("任务详情说明")
  explain?: string;

  @doc("任务跳转 url")
  link?: string;

  @doc("是否为大会员专享任务")
  vip_limit?: int64;

  @doc("已完成次数")
  complete_times?: int64;

  @doc("最大完成次数")
  max_times?: int64;

  @doc("重试次数？")
  recall_num?: int64;

  @doc("内容")
  项?: unknown;

  @doc("banner 项目 1")
  field_0?: Record<unknown>;

  @doc("banner 项目 (n+1)")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("跳转 url")
  link?: string;

  @doc("banner 卡片 url")
  image_url?: string;

  @doc("内容")
  项?: unknown;

  @doc("商品类型 1")
  field_0?: Record<unknown>;

  @doc("商品类型 (n+1)")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("商品类型 id")
  id?: int64;

  @doc("商品类型名称")
  name?: string;

  @doc("状态")
  state?: int64;

  @doc("内容")
  项?: unknown;

  @doc("大积分商品 1")
  field_0?: Record<unknown>;

  @doc("大积分商品 (n+1)")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("套了个娃")
  base?: Record<unknown>;

}

/**
 * base 对象
 */
@doc("base 数据模型")
model Base {
  @doc("商品 token")
  token?: string;

  @doc("商品名称")
  title?: string;

  @doc("商品图片 url")
  picture?: string;

  @doc("商品图片组")
  rotation_pictures?: unknown[];

  @doc("价格信息")
  price?: Record<unknown>;

  @doc("库存信息")
  inventory?: Record<unknown>;

  @doc("`2`")
  user_type?: int64;

  @doc("`2` `3` `4`")
  exchange_limit_type?: int64;

  @doc("限购数量")
  exchange_limit_num?: int64;

  @doc("起售时间")
  start_time?: int64;

  @doc("止售时间")
  end_time?: int64;

  @doc("状态？")
  state?: int64;

  @doc("内容")
  项?: unknown;

}

/**
 * price 对象
 */
@doc("price 数据模型")
model Price {
  @doc("商品原价")
  origin?: int64;

  @doc("折扣信息")
  promotion?: unknown;

}

/**
 * promotion 对象
 */
@doc("promotion 数据模型")
model Promotion {
  @doc("折后价格")
  price?: int64;

  @doc("折扣类型")
  type?: int64;

  @doc("折扣力度")
  discount?: int64;

  @doc("标签文案")
  label?: string;

}

/**
 * inventory 对象
 */
@doc("inventory 数据模型")
model Inventory {
  @doc("库存总量")
  available_num?: int64;

  @doc("已售数量")
  used_num?: int64;

  @doc("剩余数量")
  surplus_num?: int64;

  @doc("APP 登录 Token")
  access_key?: string;

  @doc("改变类型")
  change_type?: int64;

  @doc("分页页数")
  pn?: int64;

  @doc("分页大小")
  ps?: int64;

  @doc("响应码")
  code?: int64;

  @doc("0")
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
  @doc("总记录数")
  total?: int64;

  @doc("积分记录数组")
  big_point_list?: unknown[];

  @doc("改变的积分数")
  point?: int64;

  @doc("改变时间戳")
  change_time?: int64;

  @doc("批注，积分改变的原因")
  remark?: string;

  @doc("编号")
  order_no?: string;

  @doc("商品图片")
  image_url?: string;

}
