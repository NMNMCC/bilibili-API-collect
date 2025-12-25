import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Live;

/**
 * 根据真实直播间号获取直播视频流
 */
@route("/room/v1/Room/playUrl")
@tag("Live")
interface 根据真实直播间号获取直播视频流 {
  @get
  @doc("根据真实直播间号获取直播视频流")
  根据真实直播间号获取直播视频流(
    @query @doc("目标真实直播间号") cid: int64,
    @query @doc("直播流格式") platform: string,
    @query @doc("画质") quality: int64,
    @query @doc("画质") qn: string,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: string,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("当前画质代码`qn`") current_quality?: int64,
    @query @doc("可选画质数参数") accept_quality?: unknown[],
    @query @doc("当前画质代码`quality`") current_qn?: int64,
    @query @doc("可选画质参数`quality`") quality_description?: unknown[],
    @query @doc("直播流url组") durl?: unknown[],
    @query @doc("内容") 项?: unknown,
    @query @doc("`qn`画质代码1") field_0?: string,
    @query @doc("`qn`画质代码(n+1)") n?: string,
    @query @doc("……") __?: string,
    @query @doc("内容") 项?: unknown,
    @query @doc("画质代码1") field_0?: Record<unknown>,
    @query @doc("画质代码(n+1)") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("画质代码") qn?: int64,
    @query @doc("该代码对应的画质名称") desc?: string,
    @query @doc("内容") 项?: unknown,
    @query @doc("主线服务器") field_0?: Record<unknown>,
    @query @doc("备线n服务器") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("直播流url") url?: string,
    @query @doc("0") length?: int64,
    @query @doc("服务器线路序号") order?: int64,
    @query @doc("0") stream_type?: int64,
    @query @doc("0") p2p_type?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("当前画质代码`qn`")
  current_quality?: int64;

  @doc("可选画质数参数")
  accept_quality?: unknown[];

  @doc("当前画质代码`quality`")
  current_qn?: int64;

  @doc("可选画质参数`quality`")
  quality_description?: unknown[];

  @doc("直播流url组")
  durl?: unknown[];

  @doc("内容")
  项?: unknown;

  @doc("`qn`画质代码1")
  field_0?: string;

  @doc("`qn`画质代码(n+1)")
  n?: string;

  @doc("……")
  __?: string;

  @doc("内容")
  项?: unknown;

  @doc("画质代码1")
  field_0?: Record<unknown>;

  @doc("画质代码(n+1)")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("画质代码")
  qn?: int64;

  @doc("该代码对应的画质名称")
  desc?: string;

  @doc("内容")
  项?: unknown;

  @doc("主线服务器")
  field_0?: Record<unknown>;

  @doc("备线n服务器")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("直播流url")
  url?: string;

  @doc("0")
  length?: int64;

  @doc("服务器线路序号")
  order?: int64;

  @doc("0")
  stream_type?: int64;

  @doc("0")
  p2p_type?: int64;

}
