import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Emoji;

/**
 * 添加表情包
 */
@route("/x/emote/package/add")
@tag("Emoji")
interface 添加表情包 {
  @post
  @doc("添加表情包")
  添加表情包(
    @body @doc("表情包id") package_id: int64,
    @body @doc("使用场景") business: string,
    @body @doc("CSRF Token（位于cookie）") csrf: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
  ): ApiResponse<unknown>;
}

/**
 * 移除表情包
 */
@route("/x/emote/package/remove")
@tag("Emoji")
interface 移除表情包 {
  @post
  @doc("移除表情包")
  移除表情包(
    @body @doc("表情包id") package_id: int64,
    @body @doc("使用场景") business: string,
    @body @doc("CSRF Token（位于cookie）") csrf: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
  ): ApiResponse<unknown>;
}
