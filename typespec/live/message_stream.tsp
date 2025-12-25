import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Live;

/**
 * 获取信息流认证秘钥
 */
@route("/xlive/web-room/v1/index/getDanmuInfo")
@tag("Live")
interface 获取信息流认证秘钥 {
  @get
  @doc("获取信息流认证秘钥")
  获取信息流认证秘钥(
    @query @doc("直播间真实id") id: int64,
    @query @doc("(?)") type: int64,
    @query @doc("(?)") web_location: string,
    @query @doc("Wbi 签名") w_rid: string,
    @query @doc("当前时间戳") wts: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("live") group?: string,
    @query @doc("0") business_id?: int64,
    @query @doc("0.125") refresh_row_factor?: int64,
    @query @doc("100") refresh_rate?: int64,
    @query @doc("5000") max_delay?: int64,
    @query @doc("认证秘钥") token?: string,
    @query @doc("信息流服务器节点列表") host_list?: unknown[],
    @query @doc("服务器域名") host?: string,
    @query @doc("TCP 端口") port?: int64,
    @query @doc("WSS 端口") wss_port?: int64,
    @query @doc("WS 端口") ws_port?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("live")
  group?: string;

  @doc("0")
  business_id?: int64;

  @doc("0.125")
  refresh_row_factor?: int64;

  @doc("100")
  refresh_rate?: int64;

  @doc("5000")
  max_delay?: int64;

  @doc("认证秘钥")
  token?: string;

  @doc("信息流服务器节点列表")
  host_list?: unknown[];

}

/**
 * data.host_list[n] 对象
 */
@doc("data.host_list[n] 数据模型")
model Datahost_listn {
  @doc("服务器域名")
  host?: string;

  @doc("TCP 端口")
  port?: int64;

  @doc("WSS 端口")
  wss_port?: int64;

  @doc("WS 端口")
  ws_port?: int64;

}
