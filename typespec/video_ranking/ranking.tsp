import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Videoranking;

/**
 * 获取分区视频排行榜列表
 */
@route("/x/web-interface/ranking/v2")
@tag("Videoranking")
interface 获取分区视频排行榜列表 {
  @get
  @doc("获取分区视频排行榜列表")
  获取分区视频排行榜列表(
    @query @doc("目标分区 tid") rid: int64,
    @query @doc("排行榜类型") type: string,
    @query @doc("333.934") web_location: string,
    @query @doc("WBI 签名") w_rid: string,
    @query @doc("Unix 时间戳") wts: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("视频列表") data?: unknown[],
    @query @doc("“根据稿件内容质量、近期的数据综合展示，动态更新”") note?: string,
    @query @doc("视频列表") list?: unknown,
    @query @doc("内容") 项?: unknown,
    @query @doc("排行榜第1名") field_0?: Record<unknown>,
    @query @doc("排行榜第(n+1)名") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("排行榜第100名") field_99?: Record<unknown>,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("“根据稿件内容质量、近期的数据综合展示，动态更新”")
  note?: string;

  @doc("视频列表")
  list?: unknown;

  @doc("内容")
  项?: unknown;

  @doc("排行榜第1名")
  field_0?: Record<unknown>;

  @doc("排行榜第(n+1)名")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("排行榜第100名")
  field_99?: Record<unknown>;

}
