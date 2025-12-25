import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.User;

/**
 * ~~检查昵称（已失效）~~
 */
@route("/web/generic/check/nickname")
@tag("User")
interface 检查昵称已失效 {
  @get
  @doc("~~检查昵称（已失效）~~")
  检查昵称已失效(
    @query @doc("目标昵称") nickName: string,
    @query @doc("状态码") code?: int64,
    @query @doc("错误详情") message?: string,
  ): ApiResponse<unknown>;
}
