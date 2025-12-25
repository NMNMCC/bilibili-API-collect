import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Login.Loginaction;

/**
 * 验证登录
 */
@route("/x/passport-login/captcha")
@tag("Login.Loginaction")
interface 验证登录 {
  @get
  @doc("验证登录")
  验证登录(
    @query @doc("返回值") code?: int64,
    @query @doc("返回信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("极验captcha数据") geetest?: Record<unknown>,
    @query @doc("(?)") tencent?: Record<unknown>,
    @query @doc("登录 API token") token?: string,
    @query @doc("验证方式") type?: string,
    @query @doc("极验id") gt?: string,
    @query @doc("极验KEY") challenge?: string,
    @query @doc("平台类型") plat: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("套了个娃") result?: Record<unknown>,
    @query @doc("1") type?: int64,
    @query @doc("1") success?: int64,
    @query @doc("极验id") gt?: string,
    @query @doc("极验KEY") challenge?: string,
    @query @doc("登录秘钥") key?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("极验captcha数据")
  geetest?: Record<unknown>;

  @doc("(?)")
  tencent?: Record<unknown>;

  @doc("登录 API token")
  token?: string;

  @doc("验证方式")
  type?: string;

}

/**
 * geetest 对象
 */
@doc("geetest 数据模型")
model Geetest {
  @doc("极验id")
  gt?: string;

  @doc("极验KEY")
  challenge?: string;

  @doc("平台类型")
  plat?: int64;

  @doc("返回值")
  code?: int64;

  @doc("信息本体")
  data?: Record<unknown>;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("套了个娃")
  result?: Record<unknown>;

  @doc("1")
  type?: int64;

}

/**
 * result 对象
 */
@doc("result 数据模型")
model Result {
  @doc("1")
  success?: int64;

  @doc("极验id")
  gt?: string;

  @doc("极验KEY")
  challenge?: string;

  @doc("登录秘钥")
  key?: string;

}
