import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Login.Loginaction;

/**
 * web端密码登录
 */
@route("/x/passport-login/web/key")
@tag("Login.Loginaction")
interface Web端密码登录 {
  @get
  @doc("web端密码登录")
  web端密码登录(
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("密码盐值") hash?: string,
    @query @doc("rsa 公钥") key?: string,
    @body @doc("用户登录账号") username: string,
    @body @doc("加密后的带盐密码") password: string,
    @body @doc("0") keep: int64,
    @body @doc("登录 token") token: string,
    @body @doc("极验 challenge") challenge: string,
    @body @doc("极验 result") validate: string,
    @body @doc("极验 result +`\\") seccode?: string,
    @body @doc("跳转 url") go_url: string,
    @body @doc("登录来源") source: string,
    @body @doc("返回值") code: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("数据本体") data?: unknown,
    @body @doc("扫码状态信息") message?: string,
    @body @doc("刷新`refresh_token`") refresh_token?: string,
    @body @doc("0") status?: int64,
    @body @doc("登录时间") timestamp?: int64,
    @body @doc("游戏分站跨域登录 url") url?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("密码盐值")
  hash?: string;

  @doc("rsa 公钥")
  key?: string;

  @doc("用户登录账号")
  username?: string;

  @doc("加密后的带盐密码")
  password?: string;

  @doc("0")
  keep?: int64;

  @doc("登录 token")
  token?: string;

  @doc("极验 challenge")
  challenge?: string;

  @doc("极验 result")
  validate?: string;

  @doc("极验 result +`\\")
  seccode?: string;

  @doc("跳转 url")
  go_url?: string;

  @doc("登录来源")
  source?: string;

  @doc("返回值")
  code?: int64;

  @doc("错误信息")
  message?: string;

  @doc("数据本体")
  data?: unknown;

  @doc("扫码状态信息")
  message?: string;

  @doc("刷新`refresh_token`")
  refresh_token?: string;

  @doc("0")
  status?: int64;

  @doc("登录时间")
  timestamp?: int64;

  @doc("游戏分站跨域登录 url")
  url?: string;

}

/**
 * web端密码登录-旧版
 */
@route("/login")
@tag("Login.Loginaction")
interface Web端密码登录旧版 {
  @get
  @doc("web端密码登录-旧版")
  web端密码登录旧版(
    @query @doc("密码盐值") hash?: string,
    @query @doc("rsa 公钥") key?: string,
    @body @doc("6") captchaType: int64,
    @body @doc("用户登录账号") username: string,
    @body @doc("加密后的带盐密码") password: string,
    @body @doc("是否记住登录") keep: boolean,
    @body @doc("登录 token") key: string,
    @body @doc("极验 challenge") challenge: string,
    @body @doc("极验 result") validate: string,
    @body @doc("极验 result +`\\") seccode?: string,
    @body @doc("返回值") code: int64,
    @body @doc("当前时间戳") ts?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("数据本体") data?: Record<unknown>,
    @body @doc("游戏分站跨域登录 url") redirectUrl?: string,
    @body @doc("true") isLogin?: boolean,
    @body @doc("https://www.bilibili.com") goUrl?: string,
    @body @doc("用户 mid") mid?: int64,
    @body @doc("绑定的手机号") tel?: string,
    @body @doc("绑定的邮箱") email?: string,
    @body @doc("0") sorce?: int64,
    @body @doc("1") keeptime?: int64,
    @body @doc("https://www.bilibili.com") goUrl?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("游戏分站跨域登录 url")
  redirectUrl?: string;

  @doc("true")
  isLogin?: boolean;

  @doc("https://www.bilibili.com")
  goUrl?: string;

  @doc("用户 mid")
  mid?: int64;

  @doc("绑定的手机号")
  tel?: string;

  @doc("绑定的邮箱")
  email?: string;

  @doc("0")
  sorce?: int64;

  @doc("1")
  keeptime?: int64;

  @doc("https://www.bilibili.com")
  goUrl?: string;

}

/**
 * APP端密码登录
 */
@route("/api/oauth2/getKey")
@tag("Login.Loginaction")
interface App端密码登录 {
  @post
  @doc("APP端密码登录")
  app端密码登录(
    @body @doc("APP密钥") appkey: string,
    @body @doc("APP签名") sign: string,
    @body @doc("密码盐值") hash?: string,
    @body @doc("rsa 公钥") key?: string,
  ): ApiResponse<unknown>;
}

/**
 * 手机号验证
 */
@route("/x/safecenter/captcha/pre")
@tag("Login.Loginaction")
interface 手机号验证 {
  @get
  @doc("手机号验证")
  手机号验证(
    @body @doc("risk") source: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
    @body @doc("数据本体") data?: Record<unknown>,
    @body @doc("验证码类型") recaptcha_type?: string,
    @body @doc("验证码 token") recaptcha_token?: string,
    @body @doc("极验 challenge") gee_challenge?: string,
    @body @doc("极验 gt") gee_gt?: string,
    @body @doc("url query 中的 tmp_code") tmp_code: string,
    @body @doc("`loginTelCheck`") sms_type: string,
    @body @doc("验证码 token") recaptcha_token: string,
    @body @doc("极验 challenge") gee_challenge: string,
    @body @doc("极验 validate") gee_validate: string,
    @body @doc("极验 seccode") gee_seccode: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
    @body @doc("数据本体") data?: Record<unknown>,
    @body @doc("验证码 key") captcha_key?: string,
    @body @doc("url query 中的 tmp_code") tmp_code: string,
    @body @doc("验证码 key") captcha_key: string,
    @body @doc("`loginTelCheck`") type: string,
    @body @doc("接收到的验证码") code: int64,
    @body @doc("url query 中的 request_id") request_id: string,
    @body @doc("risk") source: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
    @body @doc("数据本体") data?: Record<unknown>,
    @body @doc("交换代码") code?: string,
    @body @doc("risk") source: string,
    @body @doc("交换代码") code: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
    @body @doc("数据本体") data?: Record<unknown>,
    @body @doc("游戏分站跨域登录 url") url?: string,
    @body @doc("刷新 token") refresh_token?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("验证码类型")
  recaptcha_type?: string;

  @doc("验证码 token")
  recaptcha_token?: string;

  @doc("极验 challenge")
  gee_challenge?: string;

  @doc("极验 gt")
  gee_gt?: string;

  @doc("url query 中的 tmp_code")
  tmp_code?: string;

  @doc("`loginTelCheck`")
  sms_type?: string;

  @doc("验证码 token")
  recaptcha_token?: string;

  @doc("极验 challenge")
  gee_challenge?: string;

  @doc("极验 validate")
  gee_validate?: string;

  @doc("极验 seccode")
  gee_seccode?: string;

  @doc("返回值")
  code?: int64;

  @doc("错误信息")
  message?: string;

  @doc("1")
  ttl?: int64;

  @doc("数据本体")
  data?: Record<unknown>;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("验证码 key")
  captcha_key?: string;

  @doc("url query 中的 tmp_code")
  tmp_code?: string;

  @doc("验证码 key")
  captcha_key?: string;

  @doc("`loginTelCheck`")
  type?: string;

  @doc("接收到的验证码")
  code?: int64;

  @doc("url query 中的 request_id")
  request_id?: string;

  @doc("risk")
  source?: string;

  @doc("返回值")
  code?: int64;

  @doc("错误信息")
  message?: string;

  @doc("1")
  ttl?: int64;

  @doc("数据本体")
  data?: Record<unknown>;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("交换代码")
  code?: string;

  @doc("risk")
  source?: string;

  @doc("交换代码")
  code?: string;

  @doc("返回值")
  code?: int64;

  @doc("错误信息")
  message?: string;

  @doc("1")
  ttl?: int64;

  @doc("数据本体")
  data?: Record<unknown>;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("游戏分站跨域登录 url")
  url?: string;

  @doc("刷新 token")
  refresh_token?: string;

}
