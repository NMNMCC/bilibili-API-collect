import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Login;

/**
 * 检查是否需要刷新
 */
@route("/x/passport-login/web/cookie/info")
@tag("Login")
interface 检查是否需要刷新 {
  @get
  @doc("检查是否需要刷新")
  检查是否需要刷新(
    @query @doc("CSRF Token（位于 Cookie）") csrf: string,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("是否应该刷新 Cookie") refresh?: boolean,
    @query @doc("当前毫秒时间戳") timestamp?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("是否应该刷新 Cookie")
  refresh?: boolean;

  @doc("当前毫秒时间戳")
  timestamp?: int64;

}

/**
 * 获取refresh_csrf
 */
@route("/correspond/1/{correspondPath}")
@tag("Login")
interface 获取refresh_csrf {
  @get
  @doc("获取refresh_csrf")
  获取refresh_csrf(
    @query @doc("使用当前毫秒时间戳生成的签名") correspondPath: string,
    @query @doc("xpath") 标签_id?: unknown,
    @query @doc("//div[id='1-name']/text()") field_1_name?: unknown,
  ): ApiResponse<unknown>;
}

/**
 * 刷新Cookie
 */
@route("/x/passport-login/web/cookie/refresh")
@tag("Login")
interface 刷新cookie {
  @post
  @doc("刷新Cookie")
  刷新cookie(
    @body @doc("CSRF Token") csrf: string,
    @body @doc("实时刷新口令") refresh_csrf: string,
    @body @doc("访问来源？") source: string,
    @body @doc("持久化刷新口令") refresh_token: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
    @body @doc("信息本体") data?: Record<unknown>,
    @body @doc("0") status?: int64,
    @body @doc("空") message?: string,
    @body @doc("新的持久化刷新口令") refresh_token?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("0")
  status?: int64;

  @doc("空")
  message?: string;

}

/**
 * 确认更新
 */
@route("/x/passport-login/web/confirm/refresh")
@tag("Login")
interface 确认更新 {
  @post
  @doc("确认更新")
  确认更新(
    @body @doc("CSRF Token（位于 cookie）") csrf: string,
    @body @doc("旧的持久化刷新口令") refresh_token: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
  ): ApiResponse<unknown>;
}
