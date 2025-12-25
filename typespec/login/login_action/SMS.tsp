import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Login.Loginaction;

/**
 * 获取国际冠字码_web端
 */
@route("/web/generic/country/list")
@tag("Login.Loginaction")
interface 获取国际冠字码_web端 {
  @get
  @doc("获取国际冠字码_web端")
  获取国际冠字码_web端(
    @query @doc("返回值") code?: int64,
    @query @doc("数据本体") data?: Record<unknown>,
    @query @doc("常用国家&地区") common?: unknown[],
    @query @doc("其他国家&地区") others?: unknown[],
    @query @doc("内容") 项?: unknown,
    @query @doc("国家&地区1") field_0?: Record<unknown>,
    @query @doc("国家&地区(n+1)") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("国际代码值") id?: int64,
    @query @doc("国家&地区名") cname?: string,
    @query @doc("国家&地区区号") country_id?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("常用国家&地区")
  common?: unknown[];

  @doc("其他国家&地区")
  others?: unknown[];

  @doc("内容")
  项?: unknown;

  @doc("国家&地区1")
  field_0?: Record<unknown>;

  @doc("国家&地区(n+1)")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("国际代码值")
  id?: int64;

  @doc("国家&地区名")
  cname?: string;

  @doc("国家&地区区号")
  country_id?: string;

}

/**
 * 发送短信验证码_app端
 */
@route("/x/passport-login/sms/send")
@tag("Login.Loginaction")
interface 发送短信验证码_app端 {
  @post
  @doc("发送短信验证码_app端")
  发送短信验证码_app端(
    @body @doc("国际冠字码") cid: int64,
    @body @doc("手机号码") tel: int64,
    @body @doc("登录标识") login_session_id: string,
    @body @doc("登录 API token") recaptcha_token: string,
    @body @doc("极验 challenge") gee_challenge: string,
    @body @doc("极验 result") gee_validate: string,
    @body @doc("极验 result +`\\") gee_seccode?: string,
    @body @doc("通道?") channel: string,
    @body @doc("buvid") buvid: string,
    @body @doc("同上") local_id: string,
    @body @doc("?") statistics: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("信息本体") data?: Record<unknown>,
    @body @doc("短信登录 token") captcha_key?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("短信登录 token")
  captcha_key?: string;

}

/**
 * 发送短信验证码_web端
 */
@route("/x/passport-login/web/sms/send")
@tag("Login.Loginaction")
interface 发送短信验证码_web端 {
  @post
  @doc("发送短信验证码_web端")
  发送短信验证码_web端(
    @body @doc("国际冠字码") cid: int64,
    @body @doc("手机号码") tel: int64,
    @body @doc("登录来源") source: string,
    @body @doc("登录 API token") token: string,
    @body @doc("极验 challenge") challenge: string,
    @body @doc("极验 result") validate: string,
    @body @doc("极验 result +`\\") seccode?: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("信息本体") data?: Record<unknown>,
    @body @doc("短信登录 token") captcha_key?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("短信登录 token")
  captcha_key?: string;

}

/**
 * 使用短信验证码登录_app端
 */
@route("/x/passport-login/login/sms")
@tag("Login.Loginaction")
interface 使用短信验证码登录_app端 {
  @post
  @doc("使用短信验证码登录_app端")
  使用短信验证码登录_app端(
    @body @doc("国际冠字码") cid: int64,
    @body @doc("手机号码") tel: int64,
    @body @doc("登录标识") login_session_id: string,
    @body @doc("短信验证码") code: int64,
    @body @doc("短信登录 token") captcha_key: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("信息本体") data?: Record<unknown>,
    @body @doc("用户uid") mid?: string,
    @body @doc("过时时间") expires_in?: string,
    @body @doc("登录 token") access_token?: string,
    @body @doc("刷新 token") refresh_token?: string,
    @body @doc("cookie集合") cookie_info?: unknown[],
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("用户uid")
  mid?: string;

  @doc("过时时间")
  expires_in?: string;

  @doc("登录 token")
  access_token?: string;

  @doc("刷新 token")
  refresh_token?: string;

  @doc("cookie集合")
  cookie_info?: unknown[];

}

/**
 * 使用短信验证码登录_web端
 */
@route("/x/passport-login/web/login/sms")
@tag("Login.Loginaction")
interface 使用短信验证码登录_web端 {
  @post
  @doc("使用短信验证码登录_web端")
  使用短信验证码登录_web端(
    @body @doc("国际冠字码") cid: int64,
    @body @doc("手机号码") tel: int64,
    @body @doc("短信验证码") code: int64,
    @body @doc("登录来源") source: string,
    @body @doc("短信登录 token") captcha_key: string,
    @body @doc("跳转url") go_url: string,
    @body @doc("是否记住登录") keep: boolean,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("信息本体") data?: Record<unknown>,
    @body @doc("是否为新注册用户") is_new?: boolean,
    @body @doc("0") status?: int64,
    @body @doc("跳转 url") url?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("是否为新注册用户")
  is_new?: boolean;

  @doc("0")
  status?: int64;

  @doc("跳转 url")
  url?: string;

}
