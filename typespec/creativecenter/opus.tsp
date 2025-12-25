import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Creativecenter;

/**
 * 删除动态
 */
@route("/x/dynamic/feed/operate/remove")
@tag("Creativecenter")
interface 删除动态 {
  @get
  @doc("删除动态")
  删除动态(
    @query @doc("CSRF Token (即 Cookie 中 bili_jct)") csrf: string,
    @query @doc("平台标识") platform: string,
    @body @doc("动态的 opus id") dyn_id_str: string,
    @body @doc("动态类型?") dyn_type: int64,
    @body @doc("不必要") rid_str?: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("`1`") ttl?: int64,
    @body @doc("空对象") data?: Record<unknown>,
  ): ApiResponse<unknown>;
}
