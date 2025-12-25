import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Appwidget;

/**
 * 获取版本信息
 */
@route("/x/v2/version")
@tag("Appwidget")
interface 获取版本信息 {
  @get
  @doc("获取版本信息")
  获取版本信息(
    @query @doc("目标客户端类型") mobi_app: string,
    @query @doc("返回值") code?: int32,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int32,
    @query @doc("版本信息列表") data?: unknown[],
    @query @doc("平台") plat?: int32,
    @query @doc("版本描述") desc?: string,
    @query @doc("版本号") version?: string,
    @query @doc("内部版本号") build?: int32,
  ): ApiResponse<unknown>;
}

/**
 * 版本升级
 */
@route("/x/v2/version/fawkes/upgrade")
@tag("Appwidget")
interface 版本升级 {
  @get
  @doc("版本升级")
  版本升级(
    @query @doc("-") _?: unknown,
    @query @doc("设备 CPU ABI") abi: string,
    @query @doc("客户端类型") appid: string,
    @query @doc("设备品牌") brand: string,
    @query @doc("当前 APP 版本号") build: int32,
    @query @doc("APP 分发渠道") channel: string,
    @query @doc("设备唯一 ID") deviceid: string,
    @query @doc("APP 分发环境") env: string,
    @query @doc("当前 APP innerVer") iv: int32,
    @query @doc("APP mobi_app") mobi_app: string,
    @query @doc("设备型号") model_: string,
    @query @doc("-") nt: string,
    @query @doc("设备 OS 版本") ov: string,
    @query @doc("设备平台") platform: string,
    @query @doc("设备屏幕参数") screen: string,
    @query @doc("当前 APP SN") sn: int32,
    @query @doc("当前 APP 版本名称") vn: string,
    @query @doc("-") _?: unknown,
    @query @doc("APPKey 名称") app_key: string,
    @query @doc("BUVID") buvid: string,
    @query @doc("-") _?: unknown,
    @query @doc("返回值") code?: int32,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int32,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("-") _?: unknown,
    @query @doc("标题") title?: string,
    @query @doc("内容") content?: string,
    @query @doc("最新版本名称") version?: string,
    @query @doc("最新版本号") version_code?: int32,
    @query @doc("下载地址") url?: string,
    @query @doc("大小") size?: int32,
    @query @doc("MD5 值") md5?: string,
    @query @doc("是否静默安装?") silent?: int32,
    @query @doc("升级类型?") upgrade_type?: int32,
    @query @doc("升级周期?") cycle?: int32,
    @query @doc("升级策略?") policy?: int32,
    @query @doc("升级策略链接?") policy_url?: string,
    @query @doc("发布时间") ptime?: int32,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("-")
  _?: unknown;

  @doc("标题")
  title?: string;

  @doc("内容")
  content?: string;

  @doc("最新版本名称")
  version?: string;

  @doc("最新版本号")
  version_code?: int32;

  @doc("下载地址")
  url?: string;

  @doc("大小")
  size?: int32;

  @doc("MD5 值")
  md5?: string;

  @doc("是否静默安装?")
  silent?: int32;

  @doc("升级类型?")
  upgrade_type?: int32;

  @doc("升级周期?")
  cycle?: int32;

  @doc("升级策略?")
  policy?: int32;

  @doc("升级策略链接?")
  policy_url?: string;

  @doc("发布时间")
  ptime?: int32;

}

/**
 * 拼接最新版本下载地址
 */
@route("/x/web-frontend/getappversion")
@tag("Appwidget")
interface 拼接最新版本下载地址 {
  @get
  @doc("拼接最新版本下载地址")
  拼接最新版本下载地址(
    @query @doc("目标平台") target?: string,
    @query @doc("CDN URL") cdn_url?: string,
    @query @doc("返回值") code?: int64,
    @query @doc("错误消息") message?: string,
    @query @doc("CDN URL") cdn_url?: string,
    @query @doc("带版本的 CDN URL") sole_cdn_url?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("CDN URL")
  cdn_url?: string;

  @doc("带版本的 CDN URL")
  sole_cdn_url?: string;

}
