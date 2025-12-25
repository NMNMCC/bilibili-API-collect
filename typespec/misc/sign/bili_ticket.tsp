import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Misc.Sign;

/**
 * 接口
 */
@route("/bapis/bilibili.api.ticket.v1.Ticket/GenWebTicket")
@tag("Misc.Sign")
interface 接口 {
  @post
  @doc("接口")
  接口(
    @query @doc("ec02") key_id: string,
    @query @doc("由 `hmac_sha256` 算法计算的 `hexsign` 值") hexsign: string,
    @query @doc("UNIX 秒级时间戳") context_ts_: int64,
    @query @doc("cookie 中的 `bili_jct` 值") csrf: string,
    @query @doc("返回值") code?: int64,
    @query @doc("返回消息") message?: string,
    @query @doc("数据本体") data?: Record<unknown>,
    @query @doc("1") ttl?: int64,
    @query @doc("bili_ticket") ticket?: string,
    @query @doc("创建时间") created_at?: int64,
    @query @doc("有效时长") ttl?: int64,
    @query @doc("空") context?: Record<unknown>,
    @query @doc("wbi_img 相关") nav?: Record<unknown>,
    @query @doc("img_key 值") img?: string,
    @query @doc("sub_key 值") sub?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("bili_ticket")
  ticket?: string;

  @doc("创建时间")
  created_at?: int64;

  @doc("有效时长")
  ttl?: int64;

  @doc("空")
  context?: Record<unknown>;

  @doc("wbi_img 相关")
  nav?: Record<unknown>;

}

/**
 * nav 对象
 */
@doc("nav 数据模型")
model Nav {
  @doc("img_key 值")
  img?: string;

  @doc("sub_key 值")
  sub?: string;

}
