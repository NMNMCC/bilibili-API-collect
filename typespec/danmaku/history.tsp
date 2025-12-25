import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Danmaku;

/**
 * 查询历史弹幕日期
 */
@route("/x/v2/dm/history/index")
@tag("Danmaku")
interface 查询历史弹幕日期 {
  @get
  @doc("查询历史弹幕日期")
  查询历史弹幕日期(
    @query @doc("1") type: int64,
    @query @doc("视频cid") oid: int64,
    @query @doc("查询目标年月") month: string,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("日期列表") data?: unknown,
    @query @doc("内容") 项?: unknown,
    @query @doc("存在弹幕的日期1") field_0?: string,
    @query @doc("存在弹幕的日期(n+1)") n?: string,
    @query @doc("……") __?: string,
  ): ApiResponse<unknown>;
}

/**
 * 获取历史弹幕protobuf接口
 */
@route("/x/v2/dm/web/history/seg.so")
@tag("Danmaku")
interface 获取历史弹幕protobuf接口 {
  @get
  @doc("获取历史弹幕protobuf接口")
  获取历史弹幕protobuf接口(
    @query @doc("弹幕类") type: int64,
    @query @doc("视频cid") oid: int64,
    @query @doc("弹幕日期") date: string,
  ): ApiResponse<unknown>;
}

/**
 * 获取历史弹幕xml接口
 */
@route("/x/v2/dm/history")
@tag("Danmaku")
interface 获取历史弹幕xml接口 {
  @get
  @doc("获取历史弹幕xml接口")
  获取历史弹幕xml接口(
    @query @doc("1") type: int64,
    @query @doc("视频cid") oid: int64,
    @query @doc("弹幕日期") date: string,
  ): ApiResponse<unknown>;
}
