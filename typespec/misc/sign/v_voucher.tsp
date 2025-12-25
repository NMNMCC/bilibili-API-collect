import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Misc.Sign;

/**
 * 接口列表
 */
@route("/x/gaia-vgate/v1/register")
@tag("Misc.Sign")
interface 接口列表 {
  @post
  @doc("接口列表")
  接口列表(
    @body @doc("CSRF Token (位于 Cookie 的 bili_jct)") csrf: string,
    @body @doc("v_voucher") v_voucher: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
    @body @doc("信息本体") data?: Record<unknown>,
    @body @doc("验证码类型") type?: string,
    @body @doc("验证码 token") token?: string,
    @body @doc("极验信息") geetest?: Record<unknown>,
    @body @doc("极验id") gt?: string,
    @body @doc("极验KEY") challenge?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("验证码类型")
  type?: string;

  @doc("验证码 token")
  token?: string;

  @doc("极验信息")
  geetest?: Record<unknown>;

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

}

/**
 * 从验证结果获取 grisk_id
 */
@route("/x/gaia-vgate/v1/validate")
@tag("Misc.Sign")
interface 从验证结果获取Grisk_id {
  @post
  @doc("从验证结果获取 grisk_id")
  从验证结果获取Grisk_id(
    @body @doc("CSRF Token (位于 Cookie 的 bili_jct)") csrf: string,
    @body @doc("验证码 challenge") challenge: string,
    @body @doc("验证码 token") token: string,
    @body @doc("验证结果 validate") validate: string,
    @body @doc("验证结果 seccode") seccode: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
    @body @doc("信息本体") data?: Record<unknown>,
    @body @doc("验证结果") is_valid?: int64,
    @body @doc("gaia_vtoken") grisk_id?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("验证结果")
  is_valid?: int64;

  @doc("gaia_vtoken")
  grisk_id?: string;

}
