import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Danmaku;

/**
 * 获取弹幕快照
 */
@route("/x/v2/dm/ajax")
@tag("Danmaku")
interface 获取弹幕快照 {
  @get
  @doc("获取弹幕快照")
  获取弹幕快照(
    @query @doc("稿件avid或稿件bvid") aid: unknown,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("预览列表") data?: unknown[],
    @query @doc("内容") 项?: unknown,
    @query @doc("预览内容1") field_0?: string,
    @query @doc("预览内容（n+1）") n?: string,
    @query @doc("……") __?: string,
    @query @doc("预览内容20") field_19?: string,
  ): ApiResponse<unknown>;
}
