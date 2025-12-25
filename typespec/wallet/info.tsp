import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Wallet;

/**
 * 获取用户钱包
 */
@route("/paywallet/wallet/getUserWallet")
@tag("Wallet")
interface 获取用户钱包 {
  @get
  @doc("获取用户钱包")
  获取用户钱包(
    @body @doc("面板类型") panelType: int64,
    @body @doc("平台类型") platformType: int64,
    @body @doc("当前时间") timestamp: int64,
    @body @doc("追踪 ID") traceId: int64,
    @body @doc("版本") version: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误码") errno?: int64,
    @body @doc("返回信息") msg?: string,
    @body @doc("显示信息") showMsg?: string,
    @body @doc("数据本体") data?: Record<unknown>,
    @body @doc("是否成功") success?: boolean,
    @body @doc("用户 mid") mid?: int64,
    @body @doc("总计 B 币") totalBp?: int64,
    @body @doc("默认 B 币?") defaultBp?: int64,
    @body @doc("iOS B 币?") iosBp?: int64,
    @body @doc("优惠券余额") couponBalance?: int64,
    @body @doc("可用 B 币") availableBp?: int64,
    @body @doc("不可用 B 币") unavailableBp?: int64,
    @body @doc("不可用原因") unavailableReason?: string,
    @body @doc("请XXXXX") tip?: string,
    @body @doc("需要显示类余额??") needShowClassBalance?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("用户 mid")
  mid?: int64;

  @doc("总计 B 币")
  totalBp?: int64;

  @doc("默认 B 币?")
  defaultBp?: int64;

  @doc("iOS B 币?")
  iosBp?: int64;

  @doc("优惠券余额")
  couponBalance?: int64;

  @doc("可用 B 币")
  availableBp?: int64;

  @doc("不可用 B 币")
  unavailableBp?: int64;

  @doc("不可用原因")
  unavailableReason?: string;

  @doc("请XXXXX")
  tip?: string;

  @doc("需要显示类余额??")
  needShowClassBalance?: int64;

}
