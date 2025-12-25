import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Dynamic;

/**
 * 获取正在直播的已关注者
 */
@route("/dynamic_svr/v1/dynamic_svr/w_live_users")
@tag("Dynamic")
interface 获取正在直播的已关注者 {
  @get
  @doc("获取正在直播的已关注者")
  获取正在直播的已关注者(
    @query @doc("每页显示数") size: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("错误信息") message?: string,
    @query @doc("空") msg?: int64,
    @query @doc("直播者数量") count?: int64,
    @query @doc("\"default\"") group?: string,
    @query @doc("直播者列表") items?: unknown[],
    @query @doc("0") _gt_?: int64,
    @query @doc("内容") 项?: unknown,
    @query @doc("第一位直播者") field_0?: Record<unknown>,
    @query @doc("第(n+1)位直播者") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("直播者头像") face?: string,
    @query @doc("直播链接") link?: string,
    @query @doc("直播标题") title?: string,
    @query @doc("直播者id") uid?: int64,
    @query @doc("直播者昵称") uname?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("直播者数量")
  count?: int64;

  @doc("\"default\"")
  group?: string;

  @doc("直播者列表")
  items?: unknown[];

  @doc("0")
  _gt_?: int64;

  @doc("内容")
  项?: unknown;

  @doc("第一位直播者")
  field_0?: Record<unknown>;

  @doc("第(n+1)位直播者")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("直播者头像")
  face?: string;

  @doc("直播链接")
  link?: string;

  @doc("直播标题")
  title?: string;

  @doc("直播者id")
  uid?: int64;

  @doc("直播者昵称")
  uname?: string;

}

/**
 * 获取发布新动态的已关注者
 */
@route("/dynamic_svr/v1/dynamic_svr/w_dyn_uplist")
@tag("Dynamic")
interface 获取发布新动态的已关注者 {
  @get
  @doc("获取发布新动态的已关注者")
  获取发布新动态的已关注者(
    @query @doc("是否开启青少年模式") teenagers_mode: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("错误信息") message?: string,
    @query @doc("空") msg?: int64,
    @query @doc("空") button_statement?: string,
    @query @doc("更新者列表") items?: unknown[],
    @query @doc("0") _gt_?: int64,
    @query @doc("内容") 项?: unknown,
    @query @doc("第一位更新者") field_0?: Record<unknown>,
    @query @doc("第(n+1)位更新者") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("空")
  button_statement?: string;

  @doc("更新者列表")
  items?: unknown[];

  @doc("0")
  _gt_?: int64;

  @doc("内容")
  项?: unknown;

  @doc("第一位更新者")
  field_0?: Record<unknown>;

  @doc("第(n+1)位更新者")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

}
