import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Login;

/**
 * 获取我的信息
 */
@route("/x/member/web/account")
@tag("Login")
interface 获取我的信息 {
  @get
  @doc("获取我的信息")
  获取我的信息(
    @query @doc("APP登录Token") access_key: string,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("我的mid") mid?: int64,
    @query @doc("我的昵称") uname?: string,
    @query @doc("我的用户名") userid?: string,
    @query @doc("我的签名") sign?: string,
    @query @doc("我的生日") birthday?: string,
    @query @doc("我的性别") sex?: string,
    @query @doc("是否未设置昵称") nick_free?: boolean,
    @query @doc("我的会员等级") rank?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("我的mid")
  mid?: int64;

  @doc("我的昵称")
  uname?: string;

  @doc("我的用户名")
  userid?: string;

  @doc("我的签名")
  sign?: string;

  @doc("我的生日")
  birthday?: string;

  @doc("我的性别")
  sex?: string;

  @doc("是否未设置昵称")
  nick_free?: boolean;

  @doc("我的会员等级")
  rank?: string;

}

/**
 * 查询每日奖励状态
 */
@route("/x/member/web/exp/reward")
@tag("Login")
interface 查询每日奖励状态 {
  @get
  @doc("查询每日奖励状态")
  查询每日奖励状态(
    @query @doc("APP登录Token") access_key: string,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("每日登录") login?: boolean,
    @query @doc("每日观看") watch?: boolean,
    @query @doc("每日投币所奖励的经验") coins?: int64,
    @query @doc("每日分享") share?: boolean,
    @query @doc("绑定邮箱") email?: boolean,
    @query @doc("绑定手机号") tel?: boolean,
    @query @doc("设置密保问题") safe_question?: boolean,
    @query @doc("实名认证") identify_card?: boolean,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("每日登录")
  login?: boolean;

  @doc("每日观看")
  watch?: boolean;

  @doc("每日投币所奖励的经验")
  coins?: int64;

  @doc("每日分享")
  share?: boolean;

  @doc("绑定邮箱")
  email?: boolean;

  @doc("绑定手机号")
  tel?: boolean;

  @doc("设置密保问题")
  safe_question?: boolean;

  @doc("实名认证")
  identify_card?: boolean;

}

/**
 * 查询每日投币获得经验数
 */
@route("/x/web-interface/coin/today/exp")
@tag("Login")
interface 查询每日投币获得经验数 {
  @get
  @doc("查询每日投币获得经验数")
  查询每日投币获得经验数(
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("每日投币所奖励的经验") data?: int64,
  ): ApiResponse<unknown>;
}

/**
 * 查询大会员状态
 */
@route("/x/vip/web/user/info")
@tag("Login")
interface 查询大会员状态 {
  @get
  @doc("查询大会员状态")
  查询大会员状态(
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("我的mid") mid?: int64,
    @query @doc("大会员类型") vip_type?: int64,
    @query @doc("大会员状态") vip_status?: int64,
    @query @doc("大会员到期时间") vip_due_date?: int64,
    @query @doc("是否已购买大会员") vip_pay_type?: int64,
    @query @doc("0") theme_type?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("我的mid")
  mid?: int64;

  @doc("大会员类型")
  vip_type?: int64;

  @doc("大会员状态")
  vip_status?: int64;

  @doc("大会员到期时间")
  vip_due_date?: int64;

  @doc("是否已购买大会员")
  vip_pay_type?: int64;

  @doc("0")
  theme_type?: int64;

}

/**
 * 查询账号安全情况
 */
@route("/web/site/user/info")
@tag("Login")
interface 查询账号安全情况 {
  @get
  @doc("查询账号安全情况")
  查询账号安全情况(
    @query @doc("APP登录Token") access_key: string,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("账号绑定信息") account_info?: Record<unknown>,
    @query @doc("密码安全信息") account_safe?: Record<unknown>,
    @query @doc("互联登录绑定信息") account_sns?: Record<unknown>,
    @query @doc("绑定的手机号") hide_tel?: string,
    @query @doc("绑定的邮箱") hide_mail?: string,
    @query @doc("是否绑定手机号") bind_tel?: boolean,
    @query @doc("是否绑定邮箱") bind_mail?: boolean,
    @query @doc("是否验证手机号") tel_verify?: boolean,
    @query @doc("是否验证邮箱") mail_verify?: boolean,
    @query @doc("是否未设置密码") unneeded_check?: boolean,
    @query @doc("是否实名认证") realname_certified?: boolean,
    @query @doc("账号安全等级") Score?: int64,
    @query @doc("新版账号安全等级") score_new?: int64,
    @query @doc("当前密码强度等级") pwd_level?: int64,
    @query @doc("当前密码是否安全") security?: boolean,
    @query @doc("是否绑定微博") weibo_bind?: int64,
    @query @doc("是否绑定qq") qq_bind?: int64,
    @query @doc("是否绑定微信") wechat_bind?: int64,
    @query @doc("false") skipVerify?: boolean,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("账号绑定信息")
  account_info?: Record<unknown>;

  @doc("密码安全信息")
  account_safe?: Record<unknown>;

  @doc("互联登录绑定信息")
  account_sns?: Record<unknown>;

}

/**
 * account_info 对象
 */
@doc("account_info 数据模型")
model Account_info {
  @doc("绑定的手机号")
  hide_tel?: string;

  @doc("绑定的邮箱")
  hide_mail?: string;

  @doc("是否绑定手机号")
  bind_tel?: boolean;

  @doc("是否绑定邮箱")
  bind_mail?: boolean;

  @doc("是否验证手机号")
  tel_verify?: boolean;

  @doc("是否验证邮箱")
  mail_verify?: boolean;

  @doc("是否未设置密码")
  unneeded_check?: boolean;

  @doc("是否实名认证")
  realname_certified?: boolean;

}

/**
 * account_safe 对象
 */
@doc("account_safe 数据模型")
model Account_safe {
  @doc("账号安全等级")
  Score?: int64;

  @doc("新版账号安全等级")
  score_new?: int64;

  @doc("当前密码强度等级")
  pwd_level?: int64;

  @doc("当前密码是否安全")
  security?: boolean;

}

/**
 * account_sns 对象
 */
@doc("account_sns 数据模型")
model Account_sns {
  @doc("是否绑定微博")
  weibo_bind?: int64;

  @doc("是否绑定qq")
  qq_bind?: int64;

  @doc("是否绑定微信")
  wechat_bind?: int64;

}

/**
 * account_other 对象
 */
@doc("account_other 数据模型")
model Account_other {
  @doc("false")
  skipVerify?: boolean;

}

/**
 * 查询账号实名认证状态
 */
@route("/x/member/realname/status")
@tag("Login")
interface 查询账号实名认证状态 {
  @get
  @doc("查询账号实名认证状态")
  查询账号实名认证状态(
    @query @doc("APP登录Token") access_key: string,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("实名认证状态") status?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("实名认证状态")
  status?: int64;

}

/**
 * 查询实名认证详细信息
 */
@route("/x/member/realname/apply/status")
@tag("Login")
interface 查询实名认证详细信息 {
  @get
  @doc("查询实名认证详细信息")
  查询实名认证详细信息(
    @query @doc("APP登录Token") access_key: string,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("数据本体") data?: Record<unknown>,
    @query @doc("认证状态") status?: int64,
    @query @doc("驳回信息") remark?: string,
    @query @doc("实名姓名") realname?: string,
    @query @doc("证件号码") card?: string,
    @query @doc("证件类型代码") card_type?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("认证状态")
  status?: int64;

  @doc("驳回信息")
  remark?: string;

  @doc("实名姓名")
  realname?: string;

  @doc("证件号码")
  card?: string;

  @doc("证件类型代码")
  card_type?: int64;

}

/**
 * 查询硬币变化情况
 */
@route("/x/member/web/coin/log")
@tag("Login")
interface 查询硬币变化情况 {
  @get
  @doc("查询硬币变化情况")
  查询硬币变化情况(
    @query @doc("APP登录Token") access_key: string,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("数据本体") data?: Record<unknown>,
    @query @doc("变化记录条目列表") list?: unknown[],
    @query @doc("变化记录条目数") count?: int64,
    @query @doc("内容") 项?: unknown,
    @query @doc("变化记录条目1") field_0?: Record<unknown>,
    @query @doc("变化记录条目(n+1)") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("变化时间") time?: string,
    @query @doc("变化量") delta?: int64,
    @query @doc("变化说明") reason?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("变化记录条目列表")
  list?: unknown[];

  @doc("变化记录条目数")
  count?: int64;

  @doc("内容")
  项?: unknown;

  @doc("变化记录条目1")
  field_0?: Record<unknown>;

  @doc("变化记录条目(n+1)")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("变化时间")
  time?: string;

  @doc("变化量")
  delta?: int64;

  @doc("变化说明")
  reason?: string;

}

/**
 * 修改个人签名
 */
@route("/x/member/web/sign/update")
@tag("Login")
interface 修改个人签名 {
  @post
  @doc("修改个人签名")
  修改个人签名(
    @body @doc("APP登录Token") access_key: string,
    @body @doc("要设置的签名内容") user_sign: string,
    @body @doc("CSRF Token（位于cookie）") csrf: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
  ): ApiResponse<unknown>;
}

/**
 * 最近一周的经验记录
 */
@route("/x/member/web/exp/log")
@tag("Login")
interface 最近一周的经验记录 {
  @get
  @doc("最近一周的经验记录")
  最近一周的经验记录(
    @query @doc("回调函数名?") jsonp: string,
    @query @doc("网页位置?") web_location: string,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("数据本体") data?: Record<unknown>,
    @query @doc("经验记录条目列表") list?: unknown[],
    @query @doc("经验记录条目数") count?: int64,
    @query @doc("内容") 项?: unknown,
    @query @doc("记录1") field_0?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("记录(n+1)") n?: Record<unknown>,
    @query @doc("经验值") delta?: int64,
    @query @doc("记录时间") time?: string,
    @query @doc("记录原因") reason?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("经验记录条目列表")
  list?: unknown[];

  @doc("经验记录条目数")
  count?: int64;

  @doc("内容")
  项?: unknown;

  @doc("记录1")
  field_0?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("记录(n+1)")
  n?: Record<unknown>;

  @doc("经验值")
  delta?: int64;

  @doc("记录时间")
  time?: string;

  @doc("记录原因")
  reason?: string;

}

/**
 * 最近一周的节操记录
 */
@route("/x/member/web/moral/log")
@tag("Login")
interface 最近一周的节操记录 {
  @get
  @doc("最近一周的节操记录")
  最近一周的节操记录(
    @query @doc("回调函数名?") jsonp: string,
    @query @doc("网页位置?") web_location: string,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("数据本体") data?: Record<unknown>,
    @query @doc("节操值") moral?: int64,
    @query @doc("记录条目列表") list?: unknown[],
    @query @doc("记录条目数") count?: int64,
    @query @doc("内容") 项?: unknown,
    @query @doc("记录1") field_0?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("记录(n+1)") n?: Record<unknown>,
    @query @doc("时间") time?: string,
    @query @doc("变化") delta?: int64,
    @query @doc("原因") origin?: string,
    @query @doc("说明") reason?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("节操值")
  moral?: int64;

  @doc("记录条目列表")
  list?: unknown[];

  @doc("记录条目数")
  count?: int64;

  @doc("内容")
  项?: unknown;

  @doc("记录1")
  field_0?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("记录(n+1)")
  n?: Record<unknown>;

  @doc("时间")
  time?: string;

  @doc("变化")
  delta?: int64;

  @doc("原因")
  origin?: string;

  @doc("说明")
  reason?: string;

}
