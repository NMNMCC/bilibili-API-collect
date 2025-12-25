import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Login.Loginaction;

/**
 * web端扫码登录
 */
@route("/x/passport-login/web/qrcode/generate")
@tag("Login.Loginaction")
interface Web端扫码登录 {
  @get
  @doc("web端扫码登录")
  web端扫码登录(
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("二维码内容 (登录页面 url)") url?: string,
    @query @doc("扫码登录秘钥") qrcode_key?: string,
    @query @doc("扫码登录秘钥") qrcode_key: string,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("游戏分站跨域登录 url") url?: string,
    @query @doc("刷新`refresh_token`") refresh_token?: string,
    @query @doc("登录时间") timestamp?: int64,
    @query @doc("0：扫码登录成功<br />86038：二维码已失效<br />86090：二维码已扫码未确认<br />86101：未扫码") code?: int64,
    @query @doc("扫码状态信息") message?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("二维码内容 (登录页面 url)")
  url?: string;

  @doc("扫码登录秘钥")
  qrcode_key?: string;

  @doc("扫码登录秘钥")
  qrcode_key?: string;

  @doc("返回值")
  code?: int64;

  @doc("错误信息")
  message?: string;

  @doc("信息本体")
  data?: Record<unknown>;

  @doc("游戏分站跨域登录 url")
  url?: string;

  @doc("刷新`refresh_token`")
  refresh_token?: string;

  @doc("登录时间")
  timestamp?: int64;

  @doc("0：扫码登录成功<br />86038：二维码已失效<br />86090：二维码已扫码未确认<br />86101：未扫码")
  code?: int64;

  @doc("扫码状态信息")
  message?: string;

}

/**
 * web端扫码登录-旧版
 */
@route("/qrcode/getLoginUrl")
@tag("Login.Loginaction")
interface Web端扫码登录旧版 {
  @get
  @doc("web端扫码登录-旧版")
  web端扫码登录旧版(
    @query @doc("返回值") code?: int64,
    @query @doc("true") status?: boolean,
    @query @doc("请求时间") ts?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("二维码内容 (登录页面 url)") url?: string,
    @query @doc("扫码登录秘钥") oauthKey?: string,
    @body @doc("扫码登录秘钥") oauthKey: string,
    @body @doc("跳转url") gourl: string,
    @body @doc("返回值") code?: int64,
    @body @doc("正确无") message?: string,
    @body @doc("扫码时间") ts?: int64,
    @body @doc("扫码是否成功") status?: boolean,
    @body @doc("正确时：游戏分站url<br />错误时：错误代码") data?: unknown,
    @body @doc("游戏分站跨域登录 url") url?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("二维码内容 (登录页面 url)")
  url?: string;

  @doc("扫码登录秘钥")
  oauthKey?: string;

  @doc("扫码登录秘钥")
  oauthKey?: string;

  @doc("跳转url")
  gourl?: string;

  @doc("返回值")
  code?: int64;

  @doc("正确无")
  message?: string;

  @doc("扫码时间")
  ts?: int64;

  @doc("扫码是否成功")
  status?: boolean;

  @doc("正确时：游戏分站url<br />错误时：错误代码")
  data?: unknown;

  @doc("游戏分站跨域登录 url")
  url?: string;

}

/**
 * TV端扫码登录
 */
@route("/x/passport-tv-login/qrcode/auth_code")
@tag("Login.Loginaction")
interface Tv端扫码登录 {
  @post
  @doc("TV端扫码登录")
  tv端扫码登录(
    @body @doc("APP 密钥") appkey: string,
    @body @doc("TV 端 id") local_id: int64,
    @body @doc("当前时间戳") ts: int64,
    @body @doc("APP 签名") sign: string,
    @body @doc("平台标识") mobi_app: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
    @body @doc("信息本体") data?: Record<unknown>,
    @body @doc("二维码内容 url") url?: string,
    @body @doc("扫码登录秘钥") auth_code?: string,
    @body @doc("APP密钥") appkey: string,
    @body @doc("扫码秘钥") auth_code: string,
    @body @doc("TV端id") local_id: int64,
    @body @doc("当前时间戳") ts: int64,
    @body @doc("APP签名") sign: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
    @body @doc("信息本体") data?: unknown,
    @body @doc("登录用户mid") mid?: int64,
    @body @doc("APP登录Token") access_token?: string,
    @body @doc("APP刷新Token") refresh_token?: string,
    @body @doc("有效时间") expires_in?: int64,
    @body @doc("platform") APPKEY?: unknown,
    @body @doc("`android`") field_783bbb7264451d82?: unknown,
    @body @doc("`android`") field_8d23902c1688a798?: unknown,
    @body @doc("?") bca7e84c2d947ac6?: unknown,
    @body @doc("`web`/`ios`?") field_27eb53fc9058f8c3?: unknown,
    @body @doc("`android`") field_4409e2ce8ffd12b8?: unknown,
    @body @doc("`android`") dfca71928277209b?: unknown,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("二维码内容 url")
  url?: string;

  @doc("扫码登录秘钥")
  auth_code?: string;

  @doc("APP密钥")
  appkey?: string;

  @doc("扫码秘钥")
  auth_code?: string;

  @doc("TV端id")
  local_id?: int64;

  @doc("当前时间戳")
  ts?: int64;

  @doc("APP签名")
  sign?: string;

  @doc("返回值")
  code?: int64;

  @doc("错误信息")
  message?: string;

  @doc("1")
  ttl?: int64;

  @doc("信息本体")
  data?: unknown;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("登录用户mid")
  mid?: int64;

  @doc("APP登录Token")
  access_token?: string;

  @doc("APP刷新Token")
  refresh_token?: string;

  @doc("有效时间")
  expires_in?: int64;

  @doc("platform")
  APPKEY?: unknown;

  @doc("`android`")
  field_783bbb7264451d82?: unknown;

  @doc("`android`")
  field_8d23902c1688a798?: unknown;

  @doc("?")
  bca7e84c2d947ac6?: unknown;

  @doc("`web`/`ios`?")
  field_27eb53fc9058f8c3?: unknown;

  @doc("`android`")
  field_4409e2ce8ffd12b8?: unknown;

  @doc("`android`")
  dfca71928277209b?: unknown;

}
