import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Dynamic;

/**
 * 点赞动态
 */
@route("/x/dynamic/feed/dyn/thumb")
@tag("Dynamic")
interface 点赞动态 {
  @get
  @doc("点赞动态")
  点赞动态(
    @query @doc("CSRF Token (即 Cookie 中 bili_jct)") csrf: string,
    @body @doc("动态 id") dyn_id_str: string,
    @body @doc("点赞状态") up: int64,
    @body @doc("`333.1369.0.0`") spmid: string,
    @body @doc("`333.999.0.0`") from_spmid: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误消息") message?: string,
    @body @doc("`1`") ttl?: int64,
    @body @doc("空对象") data?: Record<unknown>,
  ): ApiResponse<unknown>;
}

/**
 * 点赞动态 (旧版)
 */
@route("/dynamic_like/v1/dynamic_like/thumb")
@tag("Dynamic")
interface 点赞动态旧版 {
  @get
  @doc("点赞动态 (旧版)")
  点赞动态旧版(
    @body @doc("动态 id") dynamic_id: string,
    @body @doc("点赞状态") up: int64,
    @body @doc("CSRF Token (即 Cookie 中 bili_jct)") csrf: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误消息") message?: string,
    @body @doc("`1`") ttl?: int64,
    @body @doc("空对象") data?: Record<unknown>,
  ): ApiResponse<unknown>;
}

/**
 * 设置置顶动态
 */
@route("/x/dynamic/feed/space/set_top")
@tag("Dynamic")
interface 设置置顶动态 {
  @get
  @doc("设置置顶动态")
  设置置顶动态(
    @query @doc("CSRF Token (即 Cookie 中 bili_jct)") csrf: string,
    @body @doc("动态 id") dyn_str: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误消息") message?: string,
    @body @doc("`1`") ttl?: int64,
    @body @doc("空对象") data?: Record<unknown>,
  ): ApiResponse<unknown>;
}

/**
 * 取消置顶动态
 */
@route("/x/dynamic/feed/space/rm_top")
@tag("Dynamic")
interface 取消置顶动态 {
  @get
  @doc("取消置顶动态")
  取消置顶动态(
    @query @doc("CSRF Token (即 Cookie 中 bili_jct)") csrf: string,
    @body @doc("动态 id") dyn_str: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误消息") message?: string,
    @body @doc("`1`") ttl?: int64,
    @body @doc("空对象") data?: Record<unknown>,
  ): ApiResponse<unknown>;
}
