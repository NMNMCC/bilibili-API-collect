import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.User;

/**
 * 提交注册请求
 */
@route("/web/reg/tel")
@tag("User")
interface 提交注册请求 {
  @post
  @doc("提交注册请求")
  提交注册请求(
    @body @doc("国际冠字码") cid: int64,
    @body @doc("手机号码") tel: int64,
    @body @doc("短信验证码") code: int64,
    @body @doc("昵称") nickName: string,
    @body @doc("密码") pwd: string,
    @body @doc("0") plat: int64,
    @body @doc("注册成功跳转地址") gourl: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("信息本体") data?: Record<unknown>,
    @body @doc("跳转链接") redirectUrl?: string,
    @body @doc("\"注册成功\"") hint?: string,
    @body @doc("(?)") in_reg_audit?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("跳转链接")
  redirectUrl?: string;

  @doc("\"注册成功\"")
  hint?: string;

  @doc("(?)")
  in_reg_audit?: int64;

}
