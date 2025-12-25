import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Live;

/**
 * 获取全部直播间分区列表
 */
@route("/room/v1/Area/getList")
@tag("Live")
interface 获取全部直播间分区列表 {
  @get
  @doc("获取全部直播间分区列表")
  获取全部直播间分区列表(
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") msg?: string,
    @query @doc("错误信息") message?: string,
    @query @doc("父分区列表") data?: unknown[],
    @query @doc("内容") 项?: unknown,
    @query @doc("父分区1") field_0?: Record<unknown>,
    @query @doc("父分区(n+1)") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("父分区id") id?: int64,
    @query @doc("父分区名") name?: unknown,
    @query @doc("子分区列表") list?: unknown,
    @query @doc("内容") 项?: unknown,
    @query @doc("子分区1") field_0?: Record<unknown>,
    @query @doc("子分区(n+1)") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("子分区id") id?: string,
    @query @doc("父分区id") parent_id?: string,
    @query @doc("旧分区id") old_area_id?: string,
    @query @doc("子分区名") name?: string,
    @query @doc("0") act_id?: string,
    @query @doc("？？？") pk_status?: string,
    @query @doc("是否为热门分区") hot_status?: int64,
    @query @doc("0") lock_status?: string,
    @query @doc("子分区标志图片url") pic?: string,
    @query @doc("父分区名") parent_name?: string,
  ): ApiResponse<unknown>;
}
