import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Dynamic;

/**
 * 获取特定动态卡片信息
 */
@route("/dynamic_svr/v1/dynamic_svr/get_dynamic_detail")
@tag("Dynamic")
interface 获取特定动态卡片信息 {
  @get
  @doc("获取特定动态卡片信息")
  获取特定动态卡片信息(
    @query @doc("动态id") dynamic_id: unknown,
    @query @doc("返回值") code?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("错误信息") message?: string,
    @query @doc("`1`") ttl?: int64,
    @query @doc("动态卡片内容") card?: Record<unknown>,
    @query @doc("该条动态参与的活动") activity_infos?: Record<unknown>,
    @query @doc("动态详细信息") card?: string,
    @query @doc("动态相关信息") desc?: Record<unknown>,
    @query @doc("动态部分的可操作项") display?: Record<unknown>,
    @query @doc("动态扩展项") extend_json?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("动态卡片内容")
  card?: Record<unknown>;

}

/**
 * card 对象
 */
@doc("card 数据模型")
model Card {
  @doc("该条动态参与的活动")
  activity_infos?: Record<unknown>;

  @doc("动态部分的可操作项")
  display?: Record<unknown>;

  @doc("动态扩展项")
  extend_json?: string;

}

/**
 * 最近更新UP主列表
 */
@route("/x/polymer/web-dynamic/v1/portal")
@tag("Dynamic")
interface 最近更新up主列表 {
  @get
  @doc("最近更新UP主列表")
  最近更新up主列表(
    @query @doc("返回值") code?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int32,
    @query @doc("不明") live_users?: null,
    @query @doc("个人关注的一些信息") my_info?: Record<unknown>,
    @query @doc("最近更新的up主列表") up_list?: unknown[],
    @query @doc("个人动态") dyns?: int32,
    @query @doc("头像") face?: string,
    @query @doc("不明") face_nft?: int32,
    @query @doc("粉丝数量") follower?: int32,
    @query @doc("我的关注") following?: int32,
    @query @doc("本人等级内容") level_info?: Record<unknown>,
    @query @doc("账户mid") mid?: int32,
    @query @doc("账户名称") name?: string,
    @query @doc("认证信息") offcial?: Record<unknown>,
    @query @doc("账户个人中心的背景横幅") space_bg?: string,
    @query @doc("vip信息") vip?: Record<unknown>,
    @query @doc("当前等级") current_level?: int64,
    @query @doc("0") current_min?: int64,
    @query @doc("0") current_exp?: int64,
    @query @doc("0") next_exp?: int64,
    @query @doc("认证类型") role?: int64,
    @query @doc("认证信息") title?: string,
    @query @doc("认证备注") desc?: string,
    @query @doc("是否认证") type?: int64,
    @query @doc("会员类型") type?: int64,
    @query @doc("会员状态") status?: int64,
    @query @doc("会员过期时间") due_date?: int64,
    @query @doc("支付类型") vip_pay_type?: int64,
    @query @doc("0") theme_type?: int64,
    @query @doc("会员标签") label?: Record<unknown>,
    @query @doc("是否显示会员图标") avatar_subscript?: int64,
    @query @doc("会员昵称颜色") nickname_color?: string,
    @query @doc("大角色类型") role?: int64,
    @query @doc("大会员角标地址") avatar_subscript_url?: string,
    @query @doc("电视大会员状态") tv_vip_status?: int64,
    @query @doc("电视大会员支付类型") tv_vip_pay_type?: int64,
    @query @doc("空") path?: string,
    @query @doc("会员类型文案") text?: string,
    @query @doc("会员标签") label_theme?: string,
    @query @doc("会员标签") text_color?: string,
    @query @doc("1") bg_style?: int64,
    @query @doc("会员标签背景颜色") bg_color?: string,
    @query @doc("会员标签边框颜色") border_color?: string,
    @query @doc("`true`") use_img_label?: boolean,
    @query @doc("`空串`") img_label_uri_hans?: string,
    @query @doc("`空串`") img_label_uri_hant?: string,
    @query @doc("大会员牌子图片") img_label_uri_hans_static?: string,
    @query @doc("大会员牌子图片") img_label_uri_hant_static?: string,
    @query @doc("UP主头像") face?: string,
    @query @doc("最近更新是否更新？") has_update?: boolean,
    @query @doc("不明") is_reserve_recall?: boolean,
    @query @doc("UP主mid") mid?: int32,
    @query @doc("up主昵称") uname?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("不明")
  live_users?: null;

  @doc("个人关注的一些信息")
  my_info?: Record<unknown>;

  @doc("最近更新的up主列表")
  up_list?: unknown[];

}

/**
 * my_info 对象
 */
@doc("my_info 数据模型")
model My_info {
  @doc("个人动态")
  dyns?: int32;

  @doc("头像")
  face?: string;

  @doc("不明")
  face_nft?: int32;

  @doc("粉丝数量")
  follower?: int32;

  @doc("我的关注")
  following?: int32;

  @doc("本人等级内容")
  level_info?: Record<unknown>;

  @doc("账户mid")
  mid?: int32;

  @doc("账户名称")
  name?: string;

  @doc("认证信息")
  offcial?: Record<unknown>;

  @doc("账户个人中心的背景横幅")
  space_bg?: string;

  @doc("vip信息")
  vip?: Record<unknown>;

}

/**
 * level_info 对象
 */
@doc("level_info 数据模型")
model Level_info {
  @doc("当前等级")
  current_level?: int64;

  @doc("0")
  current_min?: int64;

  @doc("0")
  current_exp?: int64;

  @doc("0")
  next_exp?: int64;

}

/**
 * Official 对象
 */
@doc("Official 数据模型")
model Official {
  @doc("认证类型")
  role?: int64;

  @doc("认证信息")
  title?: string;

  @doc("认证备注")
  desc?: string;

  @doc("是否认证")
  type?: int64;

}

/**
 * vip 对象
 */
@doc("vip 数据模型")
model Vip {
  @doc("会员类型")
  type?: int64;

  @doc("会员状态")
  status?: int64;

  @doc("会员过期时间")
  due_date?: int64;

  @doc("支付类型")
  vip_pay_type?: int64;

  @doc("0")
  theme_type?: int64;

  @doc("会员标签")
  label?: Record<unknown>;

  @doc("是否显示会员图标")
  avatar_subscript?: int64;

  @doc("会员昵称颜色")
  nickname_color?: string;

  @doc("大角色类型")
  role?: int64;

  @doc("大会员角标地址")
  avatar_subscript_url?: string;

  @doc("电视大会员状态")
  tv_vip_status?: int64;

  @doc("电视大会员支付类型")
  tv_vip_pay_type?: int64;

}

/**
 * label 对象
 */
@doc("label 数据模型")
model Label {
  @doc("空")
  path?: string;

  @doc("会员类型文案")
  text?: string;

  @doc("会员标签")
  label_theme?: string;

  @doc("会员标签")
  text_color?: string;

  @doc("1")
  bg_style?: int64;

  @doc("会员标签背景颜色")
  bg_color?: string;

  @doc("会员标签边框颜色")
  border_color?: string;

  @doc("`true`")
  use_img_label?: boolean;

  @doc("`空串`")
  img_label_uri_hans?: string;

  @doc("`空串`")
  img_label_uri_hant?: string;

  @doc("大会员牌子图片")
  img_label_uri_hans_static?: string;

  @doc("大会员牌子图片")
  img_label_uri_hant_static?: string;

  @doc("UP主头像")
  face?: string;

  @doc("最近更新是否更新？")
  has_update?: boolean;

  @doc("不明")
  is_reserve_recall?: boolean;

  @doc("UP主mid")
  mid?: int32;

  @doc("up主昵称")
  uname?: string;

}
