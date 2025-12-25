import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.User;

/**
 * 用户名查 mid
 */
@route("/x/polymer/web-dynamic/v1/name-to-uid")
@tag("User")
interface 用户名查Mid {
  @get
  @doc("用户名查 mid")
  用户名查Mid(
    @query @doc("用户名") names: string,
    @query @doc("返回值") code?: int64,
    @query @doc("数据本体") data?: Record<unknown>,
    @query @doc("错误信息") message?: string,
    @query @doc("`1`") ttl?: int64,
    @query @doc("UID 列表") uid_list?: unknown,
    @query @doc("用户名") name?: string,
    @query @doc("mid (UID)") uid?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("UID 列表")
  uid_list?: unknown;

}

/**
 * data.uid_list[] 对象
 */
@doc("data.uid_list[] 数据模型")
model Datauid_list {
  @doc("用户名")
  name?: string;

  @doc("mid (UID)")
  uid?: string;

}
