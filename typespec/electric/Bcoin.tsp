import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Electric;

/**
 * 新版本B币充电
 */
@route("/x/ugcpay/web/v2/trade/elec/pay/quick")
@tag("Electric")
interface 新版本b币充电 {
  @post
  @doc("新版本B币充电")
  新版本b币充电(
    @body @doc("贝壳数量") bp_num: int64,
    @body @doc("是否优先扣除B币余额") is_bp_remains_prior: boolean,
    @body @doc("充电对象用户mid") up_mid: int64,
    @body @doc("充电来源") otype: string,
    @body @doc("充电来源代码") oid: int64,
    @body @doc("CSRF Token（位于cookie）") csrf: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
    @body @doc("信息本体") data?: Record<unknown>,
    @body @doc("本用户mid") mid?: int64,
    @body @doc("目标用户mid") up_mid?: int64,
    @body @doc("留言token") order_no?: string,
    @body @doc("充电贝壳数") bp_num?: string,
    @body @doc("获得经验数") exp?: int64,
    @body @doc("返回结果") status?: int64,
    @body @doc("错误信息") msg?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("本用户mid")
  mid?: int64;

  @doc("目标用户mid")
  up_mid?: int64;

  @doc("留言token")
  order_no?: string;

  @doc("充电贝壳数")
  bp_num?: string;

  @doc("获得经验数")
  exp?: int64;

  @doc("返回结果")
  status?: int64;

  @doc("错误信息")
  msg?: string;

}

/**
 * 老版本B币充电
 */
@route("/x/ugcpay/trade/elec/pay/quick")
@tag("Electric")
interface 老版本b币充电 {
  @post
  @doc("老版本B币充电")
  老版本b币充电(
    @body @doc("充电电池数量") elec_num: int64,
    @body @doc("充电对象用户mid") up_mid: int64,
    @body @doc("充电来源") otype: string,
    @body @doc("充电来源代码") oid: int64,
    @body @doc("CSRF Token（位于cookie）") csrf: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
    @body @doc("信息本体") data?: Record<unknown>,
    @body @doc("本用户mid") mid?: int64,
    @body @doc("目标用户mid") up_mid?: int64,
    @body @doc("留言token") order_no?: string,
    @body @doc("充电电池数") elec_num?: int64,
    @body @doc("获得经验数") exp?: int64,
    @body @doc("返回结果") status?: int64,
    @body @doc("错误信息") msg?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("本用户mid")
  mid?: int64;

  @doc("目标用户mid")
  up_mid?: int64;

  @doc("留言token")
  order_no?: string;

  @doc("充电电池数")
  elec_num?: int64;

  @doc("获得经验数")
  exp?: int64;

  @doc("返回结果")
  status?: int64;

  @doc("错误信息")
  msg?: string;

}
