import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Dynamic;

/**
 * 动态首页公告栏 (新版)
 */
@route("/x/dynamic/feed/dyn/banner")
@tag("Dynamic")
interface 动态首页公告栏新版 {
  @get
  @doc("动态首页公告栏 (新版)")
  动态首页公告栏新版(
    @query @doc("平台?") platform: int64,
    @query @doc("位置?") position: string,
    @query @doc("`333.1365`") web_location: string,
    @query @doc("返回值") code?: int64,
    @query @doc("数据本体") data?: Record<unknown>,
    @query @doc("错误信息") message?: string,
    @query @doc("`1`") ttl?: int64,
    @query @doc("横幅们") banners?: unknown,
    @query @doc("横幅 id") banner_id?: int64,
    @query @doc("结束时间") end_time?: int64,
    @query @doc("图片 URL") img_url?: string,
    @query @doc("跳转链接") link?: string,
    @query @doc("平台") platform?: int64,
    @query @doc("位置") position?: string,
    @query @doc("开始时间") start_time?: int64,
    @query @doc("标题") title?: string,
    @query @doc("权重") weight?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("横幅们")
  banners?: unknown;

}

/**
 * data.banners[] 对象
 */
@doc("data.banners[] 数据模型")
model Databanners {
  @doc("横幅 id")
  banner_id?: int64;

  @doc("结束时间")
  end_time?: int64;

  @doc("图片 URL")
  img_url?: string;

  @doc("跳转链接")
  link?: string;

  @doc("平台")
  platform?: int64;

  @doc("位置")
  position?: string;

  @doc("开始时间")
  start_time?: int64;

  @doc("标题")
  title?: string;

  @doc("权重")
  weight?: int64;

}

/**
 * 动态首页公告栏 (旧版)
 */
@route("/banner_svr/v1/banner_svr/show")
@tag("Dynamic")
interface 动态首页公告栏旧版 {
  @get
  @doc("动态首页公告栏 (旧版)")
  动态首页公告栏旧版(
    @query @doc("平台?") platform: int64,
    @query @doc("位置?") position: string,
  ): ApiResponse<unknown>;
}
