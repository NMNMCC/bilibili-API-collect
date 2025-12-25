import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Videoranking;

/**
 * 获取入站必刷视频
 */
@route("/x/web-interface/popular/precious")
@tag("Videoranking")
interface 获取入站必刷视频 {
  @get
  @doc("获取入站必刷视频")
  获取入站必刷视频(
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("视频列表") data?: unknown[],
    @query @doc("-") _?: unknown,
    @query @doc("标题") title?: string,
    @query @doc("media_id") media_id?: int64,
    @query @doc("解释（概括）") explain?: string,
    @query @doc("列表") list?: unknown[],
  ): ApiResponse<unknown>;
}
