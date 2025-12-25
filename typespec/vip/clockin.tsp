import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Vip;

/**
 * 大积分签到
 */
@route("/pgc/activity/score/task/sign")
@tag("Vip")
interface 大积分签到 {
  @post
  @doc("大积分签到")
  大积分签到(
    @body @doc("APP登录Token") access_key: string,
    @body @doc("CSRF Token (位于cookie)") csrf: string,
    @body @doc("内容") 字段名?: unknown,
    @body @doc("响应码") code?: int64,
    @body @doc("错误信息") message?: string,
  ): ApiResponse<unknown>;
}
