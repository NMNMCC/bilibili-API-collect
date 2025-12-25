import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Audio;

/**
 * 获取音频流URL(web端)
 */
@route("/audio/music-service-c/web/url")
@tag("Audio")
interface 获取音频流urlweb端 {
  @get
  @doc("获取音频流URL(web端)")
  获取音频流urlweb端(
    @query @doc("音频auid") sid: int64,
    @query @doc("2") quality: int64,
    @query @doc("2") privilege: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("返回值") message?: string,
    @query @doc("返回信息") msg?: string,
    @query @doc("数据本体") data?: Record<unknown>,
    @query @doc("音频auid") sid?: int64,
    @query @doc("音质标识") type?: int64,
    @query @doc("空") info?: string,
    @query @doc("有效时长") timeout?: int64,
    @query @doc("文件大小") size?: int64,
    @query @doc("音频流url") cdns?: unknown[],
    @query @doc("空") title?: string,
    @query @doc("空") cover?: string,
    @query @doc("内容") 项?: unknown,
    @query @doc("音频流url") field_0?: string,
    @query @doc("备用音频流url") field_1?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("音频auid")
  sid?: int64;

  @doc("音质标识")
  type?: int64;

  @doc("空")
  info?: string;

  @doc("有效时长")
  timeout?: int64;

  @doc("文件大小")
  size?: int64;

  @doc("音频流url")
  cdns?: unknown[];

  @doc("空")
  title?: string;

  @doc("空")
  cover?: string;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("内容")
  项?: unknown;

  @doc("音频流url")
  field_0?: string;

  @doc("备用音频流url")
  field_1?: string;

}

/**
 * 获取音频流URL（可获取付费音频）
 */
@route("/audio/music-service-c/url")
@tag("Audio")
interface 获取音频流url可获取付费音频 {
  @get
  @doc("获取音频流URL（可获取付费音频）")
  获取音频流url可获取付费音频(
    @query @doc("APP登录Token") access_key: string,
    @query @doc("音频auid") songid: int64,
    @query @doc("音质代码") quality: int64,
    @query @doc("必须为`2`") privilege: int64,
    @query @doc("当前用户mid") mid: int64,
    @query @doc("平台标识") platform: string,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") msg?: string,
    @query @doc("数据本体") data?: Record<unknown>,
    @query @doc("音频auid") sid?: int64,
    @query @doc("音质标识") type?: int64,
    @query @doc("空") info?: string,
    @query @doc("有效时长") timeout?: int64,
    @query @doc("文件大小") size?: int64,
    @query @doc("音频流url") cdns?: unknown[],
    @query @doc("音质列表") qualities?: unknown[],
    @query @doc("音频标题") title?: string,
    @query @doc("音频封面url") cover?: string,
    @query @doc("内容") 项?: unknown,
    @query @doc("音频流url") field_0?: string,
    @query @doc("备用音频流url") field_1?: string,
    @query @doc("内容") 项?: unknown,
    @query @doc("音质1") field_0?: Record<unknown>,
    @query @doc("音质（n+1）") n?: Record<unknown>,
    @query @doc("音质代码") type?: int64,
    @query @doc("音质名称") desc?: string,
    @query @doc("该音质的文件大小") size?: int64,
    @query @doc("比特率标签") bps?: string,
    @query @doc("音质标签") tag?: string,
    @query @doc("是否需要会员权限") require?: int64,
    @query @doc("会员权限标签") requiredesc?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("音频auid")
  sid?: int64;

  @doc("音质标识")
  type?: int64;

  @doc("空")
  info?: string;

  @doc("有效时长")
  timeout?: int64;

  @doc("文件大小")
  size?: int64;

  @doc("音频流url")
  cdns?: unknown[];

  @doc("音质列表")
  qualities?: unknown[];

  @doc("音频标题")
  title?: string;

  @doc("音频封面url")
  cover?: string;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("内容")
  项?: unknown;

  @doc("音频流url")
  field_0?: string;

  @doc("备用音频流url")
  field_1?: string;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("内容")
  项?: unknown;

  @doc("音质1")
  field_0?: Record<unknown>;

  @doc("音质（n+1）")
  n?: Record<unknown>;

  @doc("音质代码")
  type?: int64;

  @doc("音质名称")
  desc?: string;

  @doc("该音质的文件大小")
  size?: int64;

  @doc("比特率标签")
  bps?: string;

  @doc("音质标签")
  tag?: string;

  @doc("是否需要会员权限")
  require?: int64;

  @doc("会员权限标签")
  requiredesc?: string;

}
