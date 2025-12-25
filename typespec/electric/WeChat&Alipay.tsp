import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Electric;

/**
 * 申请充电二维码及扫码秘钥
 */
@route("/x/ugcpay/web/v2/trade/elec/pay/qr_code/create")
@tag("Electric")
interface 申请充电二维码及扫码秘钥 {
  @post
  @doc("申请充电二维码及扫码秘钥")
  申请充电二维码及扫码秘钥(
    @body @doc("充电B币数量") bp_num: int64,
    @body @doc("是否优先扣除B币") is_bp_remains_prior: boolean,
    @body @doc("充电对象用户mid") up_mid: int64,
    @body @doc("充电来源") otype: string,
    @body @doc("充电来源代码") oid: int64,
    @body @doc("CSRF Token（位于cookie）") csrf: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
    @body @doc("信息本体") data?: Record<unknown>,
    @body @doc("支付二维码生成内容") qr_code_url?: string,
    @body @doc("扫码秘钥") qr_token?: string,
    @body @doc("获得经验数") exp?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("支付二维码生成内容")
  qr_code_url?: string;

  @doc("扫码秘钥")
  qr_token?: string;

  @doc("获得经验数")
  exp?: int64;

}

/**
 * 检查扫码支付结果
 */
@route("/x/ugcpay/trade/elec/pay/order/status")
@tag("Electric")
interface 检查扫码支付结果 {
  @get
  @doc("检查扫码支付结果")
  检查扫码支付结果(
    @query @doc("扫码秘钥") qr_token: string,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("扫码秘钥") qr_token?: string,
    @query @doc("留言token") order_no?: string,
    @query @doc("当前用户mid") mid?: int64,
    @query @doc("状态值") status?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("扫码秘钥")
  qr_token?: string;

  @doc("留言token")
  order_no?: string;

  @doc("当前用户mid")
  mid?: int64;

  @doc("状态值")
  status?: int64;

}
