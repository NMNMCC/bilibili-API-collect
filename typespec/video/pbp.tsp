import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Video;

/**
 * 获取弹幕趋势顶点列表
 */
@route("/pbp/data")
@tag("Video")
interface 获取弹幕趋势顶点列表 {
  @get
  @doc("获取弹幕趋势顶点列表")
  获取弹幕趋势顶点列表(
    @query @doc("视频cid") cid: int64,
    @query @doc("稿件avid") aid: int64,
    @query @doc("稿件bvid") bvid: int64,
    @query @doc("采样间隔时间") step_sec?: int64,
    @query @doc("？？？") tagstr?: string,
    @query @doc("数据本体") events?: Record<unknown>,
    @query @doc("调试信息") debug?: string,
    @query @doc("顶点值列表") default?: unknown[],
    @query @doc("内容") 项?: unknown,
    @query @doc("顶点1") field_0?: int64,
    @query @doc("顶点(n+1)") n?: int64,
    @query @doc("……") __?: int64,
  ): ApiResponse<Events>;
}

/**
 * events 对象
 */
@doc("events 数据模型")
model Events {
  @doc("顶点值列表")
  default?: unknown[];

}

/**
 * events 对象
 */
@doc("events 数据模型")
model Events {
  @doc("内容")
  项?: unknown;

  @doc("顶点1")
  field_0?: int64;

  @doc("顶点(n+1)")
  n?: int64;

  @doc("……")
  __?: int64;

}
