import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Login;

/**
 * 导航栏用户信息
 */
@route("/x/web-interface/nav（原始数据）")
@tag("Login")
interface 导航栏用户信息 {
  @get
  @doc("导航栏用户信息")
  导航栏用户信息(
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("是否已登录") isLogin?: boolean,
    @query @doc("是否验证邮箱地址") email_verified?: int64,
    @query @doc("用户头像 url") face?: string,
    @query @doc("等级信息") level_info?: Record<unknown>,
    @query @doc("用户 mid") mid?: int64,
    @query @doc("是否验证手机号") mobile_verified?: int64,
    @query @doc("拥有硬币数") money?: int64,
    @query @doc("当前节操值") moral?: int64,
    @query @doc("认证信息") official?: Record<unknown>,
    @query @doc("认证信息 2") officialVerify?: Record<unknown>,
    @query @doc("头像框信息") pendant?: Record<unknown>,
    @query @doc("（？）") scores?: int64,
    @query @doc("用户昵称") uname?: string,
    @query @doc("会员到期时间") vipDueDate?: int64,
    @query @doc("会员开通状态") vipStatus?: int64,
    @query @doc("会员类型") vipType?: int64,
    @query @doc("会员开通状态") vip_pay_type?: int64,
    @query @doc("（？）") vip_theme_type?: int64,
    @query @doc("会员标签") vip_label?: Record<unknown>,
    @query @doc("是否显示会员图标") vip_avatar_subscript?: int64,
    @query @doc("会员昵称颜色") vip_nickname_color?: string,
    @query @doc("B币钱包信息") wallet?: Record<unknown>,
    @query @doc("是否拥有推广商品") has_shop?: boolean,
    @query @doc("商品推广页面 url") shop_url?: string,
    @query @doc("（？）") allowance_count?: int64,
    @query @doc("（？）") answer_status?: int64,
    @query @doc("是否硬核会员") is_senior_member?: int64,
    @query @doc("Wbi 签名实时口令") wbi_img?: Record<unknown>,
    @query @doc("是否风纪委员") is_jury?: boolean,
    @query @doc("当前等级") current_level?: int64,
    @query @doc("当前等级经验最低值") current_min?: int64,
    @query @doc("当前经验") current_exp?: int64,
    @query @doc("升级下一等级需达到的经验") next_exp?: unknown,
    @query @doc("认证类型") role?: int64,
    @query @doc("认证信息") title?: string,
    @query @doc("认证备注") desc?: string,
    @query @doc("是否认证") type?: int64,
    @query @doc("是否认证") type?: int64,
    @query @doc("认证信息") desc?: string,
    @query @doc("挂件id") pid?: int64,
    @query @doc("挂件名称") name?: string,
    @query @doc("挂件图片url") image?: string,
    @query @doc("（？）") expire?: int64,
    @query @doc("（？）") path?: string,
    @query @doc("会员名称") text?: string,
    @query @doc("会员标签") label_theme?: string,
    @query @doc("登录用户mid") mid?: int64,
    @query @doc("拥有B币数") bcoin_balance?: int64,
    @query @doc("每月奖励B币数") coupon_balance?: int64,
    @query @doc("（？）") coupon_due_time?: int64,
    @query @doc("Wbi 签名参数 `imgKey`的伪装 url") img_url?: string,
    @query @doc("Wbi 签名参数 `subKey`的伪装 url") sub_url?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("是否已登录")
  isLogin?: boolean;

  @doc("是否验证邮箱地址")
  email_verified?: int64;

  @doc("用户头像 url")
  face?: string;

  @doc("等级信息")
  level_info?: Record<unknown>;

  @doc("用户 mid")
  mid?: int64;

  @doc("是否验证手机号")
  mobile_verified?: int64;

  @doc("拥有硬币数")
  money?: int64;

  @doc("当前节操值")
  moral?: int64;

  @doc("认证信息")
  official?: Record<unknown>;

  @doc("认证信息 2")
  officialVerify?: Record<unknown>;

  @doc("头像框信息")
  pendant?: Record<unknown>;

  @doc("（？）")
  scores?: int64;

  @doc("用户昵称")
  uname?: string;

  @doc("会员到期时间")
  vipDueDate?: int64;

  @doc("会员开通状态")
  vipStatus?: int64;

  @doc("会员类型")
  vipType?: int64;

  @doc("会员开通状态")
  vip_pay_type?: int64;

  @doc("（？）")
  vip_theme_type?: int64;

  @doc("会员标签")
  vip_label?: Record<unknown>;

  @doc("是否显示会员图标")
  vip_avatar_subscript?: int64;

  @doc("会员昵称颜色")
  vip_nickname_color?: string;

  @doc("B币钱包信息")
  wallet?: Record<unknown>;

  @doc("是否拥有推广商品")
  has_shop?: boolean;

  @doc("商品推广页面 url")
  shop_url?: string;

  @doc("（？）")
  allowance_count?: int64;

  @doc("（？）")
  answer_status?: int64;

  @doc("是否硬核会员")
  is_senior_member?: int64;

  @doc("是否风纪委员")
  is_jury?: boolean;

}

/**
 * level_info 对象
 */
@doc("level_info 数据模型")
model Level_info {
  @doc("当前等级")
  current_level?: int64;

  @doc("当前等级经验最低值")
  current_min?: int64;

  @doc("当前经验")
  current_exp?: int64;

  @doc("升级下一等级需达到的经验")
  next_exp?: unknown;

}

/**
 * official 对象
 */
@doc("official 数据模型")
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
 * official_verify 对象
 */
@doc("official_verify 数据模型")
model Official_verify {
  @doc("是否认证")
  type?: int64;

  @doc("认证信息")
  desc?: string;

}

/**
 * pendant 对象
 */
@doc("pendant 数据模型")
model Pendant {
  @doc("挂件id")
  pid?: int64;

  @doc("挂件名称")
  name?: string;

  @doc("挂件图片url")
  image?: string;

  @doc("（？）")
  expire?: int64;

}

/**
 * vip_label 对象
 */
@doc("vip_label 数据模型")
model Vip_label {
  @doc("（？）")
  path?: string;

  @doc("会员名称")
  text?: string;

  @doc("会员标签")
  label_theme?: string;

}

/**
 * wallet 对象
 */
@doc("wallet 数据模型")
model Wallet {
  @doc("登录用户mid")
  mid?: int64;

  @doc("拥有B币数")
  bcoin_balance?: int64;

  @doc("每月奖励B币数")
  coupon_balance?: int64;

  @doc("（？）")
  coupon_due_time?: int64;

}

/**
 * wbi_img 对象
 */
@doc("wbi_img 数据模型")
model Wbi_img {
  @doc("Wbi 签名参数 `imgKey`的伪装 url")
  img_url?: string;

  @doc("Wbi 签名参数 `subKey`的伪装 url")
  sub_url?: string;

}

/**
 * ~~登录用户信息仅部分（已弃用）~~
 */
@route("/home/userInfo")
@tag("Login")
interface 登录用户信息仅部分已弃用 {
  @get
  @doc("~~登录用户信息仅部分（已弃用）~~")
  登录用户信息仅部分已弃用(
    @query @doc("返回值") code?: int64,
    @query @doc("true") status?: boolean,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("等级信息") level_info?: Record<unknown>,
    @query @doc("拥有B币数") bCoins?: int64,
    @query @doc("拥有硬币数") coins?: int64,
    @query @doc("登录用户头像url") face?: string,
    @query @doc("???") nameplate_current?: null,
    @query @doc("登录用户勋章url") nameplate_current?: string,
    @query @doc("登录用户头像框url") pendant_current?: string,
    @query @doc("登录用户昵称") uname?: string,
    @query @doc("登录用户状态") userStatus?: string,
    @query @doc("大会员类型") vipType?: int64,
    @query @doc("会员开通状态") vipStatus?: int64,
    @query @doc("是否认证") official_verify?: int64,
    @query @doc("0") pointBalance?: int64,
    @query @doc("当前等级") current_level?: int64,
    @query @doc("当前等级经验最低值") current_min?: int64,
    @query @doc("当前经验") current_exp?: int64,
    @query @doc("升级下一等级需达到的经验") next_exp?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("等级信息")
  level_info?: Record<unknown>;

  @doc("拥有B币数")
  bCoins?: int64;

  @doc("拥有硬币数")
  coins?: int64;

  @doc("登录用户头像url")
  face?: string;

  @doc("???")
  nameplate_current?: null;

  @doc("登录用户勋章url")
  nameplate_current?: string;

  @doc("登录用户头像框url")
  pendant_current?: string;

  @doc("登录用户昵称")
  uname?: string;

  @doc("登录用户状态")
  userStatus?: string;

  @doc("大会员类型")
  vipType?: int64;

  @doc("会员开通状态")
  vipStatus?: int64;

  @doc("是否认证")
  official_verify?: int64;

  @doc("0")
  pointBalance?: int64;

}

/**
 * level_info 对象
 */
@doc("level_info 数据模型")
model Level_info {
  @doc("当前等级")
  current_level?: int64;

  @doc("当前等级经验最低值")
  current_min?: int64;

  @doc("当前经验")
  current_exp?: int64;

  @doc("升级下一等级需达到的经验")
  next_exp?: int64;

}

/**
 * 登录用户信息（APP端）
 */
@route("/x/v2/account/myinfo")
@tag("Login")
interface 登录用户信息app端 {
  @get
  @doc("登录用户信息（APP端）")
  登录用户信息app端(
    @query @doc("APP登录Token") access_key: string,
    @query @doc("APP密钥") appkey: string,
    @query @doc("当前时间戳") ts: int64,
    @query @doc("APP签名") sign: string,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("用户mid") mid?: int64,
    @query @doc("用户昵称") name?: string,
    @query @doc("用户签名") sign?: string,
    @query @doc("拥有硬币数") coins?: int64,
    @query @doc("用户生日") birthday?: string,
    @query @doc("用户头像url") face?: string,
    @query @doc("用户性别") sex?: int64,
    @query @doc("用户等级") level?: int64,
    @query @doc("1000") rank?: int64,
    @query @doc("用户是否被封禁") silence?: int64,
    @query @doc("会员信息") vip?: Record<unknown>,
    @query @doc("是否验证邮箱地址") email_status?: int64,
    @query @doc("是否验证手机号") tel_status?: int64,
    @query @doc("认证信息") official?: Record<unknown>,
    @query @doc("1") identification?: int64,
    @query @doc("0") is_tourist?: int64,
    @query @doc("0") pin_prompting?: int64,
    @query @doc("大会员类型") type?: int64,
    @query @doc("会员开通状态") status?: int64,
    @query @doc("大会员到期时间") due_date?: int64,
    @query @doc("会员开通状态") vip_pay_type?: int64,
    @query @doc("会员开通状态") theme_type?: int64,
    @query @doc("大会员信息") label?: Record<unknown>,
    @query @doc("是否显示会员图标") avatar_subscript?: int64,
    @query @doc("会员昵称颜色") nickname_color?: string,
    @query @doc("空") path?: string,
    @query @doc("会员类型文字") text?: string,
    @query @doc("会员类型") label_theme?: string,
    @query @doc("认证类型") role?: int64,
    @query @doc("认证信息") title?: string,
    @query @doc("认证备注") desc?: string,
    @query @doc("认证备注") type?: int64,
    @query @doc("1") invite_remind?: int64,
    @query @doc("true") display?: boolean,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("用户mid")
  mid?: int64;

  @doc("用户昵称")
  name?: string;

  @doc("用户签名")
  sign?: string;

  @doc("拥有硬币数")
  coins?: int64;

  @doc("用户生日")
  birthday?: string;

  @doc("用户头像url")
  face?: string;

  @doc("用户性别")
  sex?: int64;

  @doc("用户等级")
  level?: int64;

  @doc("1000")
  rank?: int64;

  @doc("用户是否被封禁")
  silence?: int64;

  @doc("会员信息")
  vip?: Record<unknown>;

  @doc("是否验证邮箱地址")
  email_status?: int64;

  @doc("是否验证手机号")
  tel_status?: int64;

  @doc("认证信息")
  official?: Record<unknown>;

  @doc("1")
  identification?: int64;

  @doc("0")
  is_tourist?: int64;

  @doc("0")
  pin_prompting?: int64;

}

/**
 * vip 对象
 */
@doc("vip 数据模型")
model Vip {
  @doc("大会员类型")
  type?: int64;

  @doc("会员开通状态")
  status?: int64;

  @doc("大会员到期时间")
  due_date?: int64;

  @doc("会员开通状态")
  vip_pay_type?: int64;

  @doc("会员开通状态")
  theme_type?: int64;

  @doc("大会员信息")
  label?: Record<unknown>;

  @doc("是否显示会员图标")
  avatar_subscript?: int64;

  @doc("会员昵称颜色")
  nickname_color?: string;

}

/**
 * label 对象
 */
@doc("label 数据模型")
model Label {
  @doc("空")
  path?: string;

  @doc("会员类型文字")
  text?: string;

  @doc("会员类型")
  label_theme?: string;

}

/**
 * official 对象
 */
@doc("official 数据模型")
model Official {
  @doc("认证类型")
  role?: int64;

  @doc("认证信息")
  title?: string;

  @doc("认证备注")
  desc?: string;

  @doc("认证备注")
  type?: int64;

}

/**
 * invite 对象
 */
@doc("invite 数据模型")
model Invite {
  @doc("1")
  invite_remind?: int64;

  @doc("true")
  display?: boolean;

}

/**
 * 登录用户状态数（双端）
 */
@route("/x/web-interface/nav/stat")
@tag("Login")
interface 登录用户状态数双端 {
  @get
  @doc("登录用户状态数（双端）")
  登录用户状态数双端(
    @query @doc("APP登录Token") access_key: string,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("关注数") following?: int64,
    @query @doc("粉丝数") follower?: int64,
    @query @doc("发布动态数") dynamic_count?: int64,
  ): ApiResponse<unknown>;
}

/**
 * 获取硬币数
 */
@route("/site/getCoin")
@tag("Login")
interface 获取硬币数 {
  @get
  @doc("获取硬币数")
  获取硬币数(
    @query @doc("返回值") code?: int64,
    @query @doc("true") status?: boolean,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("当前硬币数") money?: unknown,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("当前硬币数")
  money?: unknown;

}
