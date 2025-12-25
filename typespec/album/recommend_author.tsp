import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Album;

/**
 * 获取摄影推荐作者
 */
@route("/link_draw/v2/Photo/uper")
@tag("Album")
interface 获取摄影推荐作者 {
  @get
  @doc("获取摄影推荐作者")
  获取摄影推荐作者(
    @query @doc("请求数量") num: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") msg?: string,
    @query @doc("错误信息") message?: string,
    @query @doc("信息本体") data?: unknown[],
    @query @doc("内容") 项?: unknown,
    @query @doc("作者 1") field_0?: Record<unknown>,
    @query @doc("作者 (n+1)") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("作者mid") uid?: int64,
    @query @doc("头像url") head_url?: string,
    @query @doc("昵称") name?: string,
    @query @doc("0") is_followed?: int64,
  ): ApiResponse<unknown>;
}

/**
 * 获取画友推荐作者
 */
@route("/link_draw/v2/Doc/drawer")
@tag("Album")
interface 获取画友推荐作者 {
  @get
  @doc("获取画友推荐作者")
  获取画友推荐作者(
    @query @doc("请求数量") num: int64,
  ): ApiResponse<unknown>;
}
