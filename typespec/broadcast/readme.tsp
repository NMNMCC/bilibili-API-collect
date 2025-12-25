import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Broadcast;

/**
 * 获取广播服务器地址
 */
@route("/x/web-interface/broadcast/servers")
@tag("Broadcast")
interface 获取广播服务器地址 {
  @get
  @doc("获取广播服务器地址")
  获取广播服务器地址(
    @query @doc("平台选择") platform: string,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("广播服务器url") domain?: string,
    @query @doc("tcp端口") tcp_port?: int64,
    @query @doc("websocket端口") ws_port?: int64,
    @query @doc("websocket ssl端口") wss_port?: int64,
    @query @doc("最大心跳包间隔时间") heartbeat?: int64,
    @query @doc("服务节点地址列表") nodes?: unknown[],
    @query @doc("？？？") backoff?: Record<unknown>,
    @query @doc("？？？") heartbeat_max?: int64,
    @query @doc("内容") 项?: unknown,
    @query @doc("服务节点1") field_0?: string,
    @query @doc("服务节点(n+1)") n?: string,
    @query @doc("……") __?: string,
    @query @doc("？？？") max_delay?: int64,
    @query @doc("？？？") base_delay?: int64,
    @query @doc("？？？") factor?: int64,
    @query @doc("？？？") jitter?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("广播服务器url")
  domain?: string;

  @doc("tcp端口")
  tcp_port?: int64;

  @doc("websocket端口")
  ws_port?: int64;

  @doc("websocket ssl端口")
  wss_port?: int64;

  @doc("最大心跳包间隔时间")
  heartbeat?: int64;

  @doc("服务节点地址列表")
  nodes?: unknown[];

  @doc("？？？")
  backoff?: Record<unknown>;

  @doc("？？？")
  heartbeat_max?: int64;

  @doc("内容")
  项?: unknown;

  @doc("服务节点1")
  field_0?: string;

  @doc("服务节点(n+1)")
  n?: string;

  @doc("……")
  __?: string;

}

/**
 * backoff 对象
 */
@doc("backoff 数据模型")
model Backoff {
  @doc("？？？")
  max_delay?: int64;

  @doc("？？？")
  base_delay?: int64;

  @doc("？？？")
  factor?: int64;

  @doc("？？？")
  jitter?: int64;

}
