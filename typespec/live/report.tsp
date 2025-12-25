import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Live;

/**
 * 直播心跳 (Web端)
 */
@route("/xlive/rdata-interface/v1/heartbeat/webHeartBeat")
@tag("Live")
interface 直播心跳Web端 {
  @get
  @doc("直播心跳 (Web端)")
  直播心跳Web端(
    @query @doc("heartbeat 正文") hb: string,
    @query @doc("平台名称") pf: string,
    @query @doc("内容") 项?: unknown,
    @query @doc("上次返回的 next_interval 值") field_0?: int64,
    @query @doc("真实直播间号") field_1?: int64,
    @query @doc("1") field_2?: int64,
    @query @doc("0") field_3?: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("下次心跳间隔") next_interval?: int64,
    @query @doc("1") __data_urlencode__hb___echo__60?: unknown,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("下次心跳间隔")
  next_interval?: int64;

  @doc("1")
  __data_urlencode__hb___echo__60?: unknown;

}
