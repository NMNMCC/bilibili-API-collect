import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Login;

/**
 * 退出登录(web端)
 */
@route("/login/exit/v2")
@tag("Login")
interface 退出登录web端 {
  @get
  @doc("退出登录(web端)")
  退出登录web端(
    @body @doc("CSRF Token (位于 cookie 中的 `bili_jct`)") biliCSRF: string,
    @body @doc("成功后跳转到的页面") gourl: string,
    @body @doc("返回值") code?: int64,
    @body @doc("返回值") status?: boolean,
    @body @doc("时间戳") ts?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("信息本体") data?: unknown,
    @body @doc("重定向 url") redirectUrl?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("重定向 url")
  redirectUrl?: string;

}
