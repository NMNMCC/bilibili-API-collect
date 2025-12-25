import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Emoji;

/**
 * 获取我的表情列表
 */
@route("/x/emote/user/panel/web")
@tag("Emoji")
interface 获取我的表情列表 {
  @get
  @doc("获取我的表情列表")
  获取我的表情列表(
    @query @doc("使用场景") business: string,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("表情包") packages?: unknown[],
    @query @doc("内容") 项?: unknown,
    @query @doc("表情包1") field_0?: Record<unknown>,
    @query @doc("表情包(n+1)") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("表情包")
  packages?: unknown[];

  @doc("内容")
  项?: unknown;

  @doc("表情包1")
  field_0?: Record<unknown>;

  @doc("表情包(n+1)")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

}

/**
 * 获取指定的表情包明细
 */
@route("/x/emote/package")
@tag("Emoji")
interface 获取指定的表情包明细 {
  @get
  @doc("获取指定的表情包明细")
  获取指定的表情包明细(
    @query @doc("使用场景") business: string,
    @query @doc("表情包id") ids: unknown,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: unknown,
    @query @doc("表情包") packages?: unknown[],
    @query @doc("内容") 项?: unknown,
    @query @doc("表情包1") field_0?: Record<unknown>,
    @query @doc("表情包(n+1)") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("表情包")
  packages?: unknown[];

  @doc("内容")
  项?: unknown;

  @doc("表情包1")
  field_0?: Record<unknown>;

  @doc("表情包(n+1)")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

}

/**
 * 获取所有表情包列表
 */
@route("/x/emote/setting/panel")
@tag("Emoji")
interface 获取所有表情包列表 {
  @get
  @doc("获取所有表情包列表")
  获取所有表情包列表(
    @query @doc("使用场景") business: string,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("用户拥有的表情包") user_panel_packages?: unknown[],
    @query @doc("所有表情包") all_packages?: unknown[],
    @query @doc("商城页面") mall?: Record<unknown>,
    @query @doc("内容") 项?: unknown,
    @query @doc("用户拥有的表情包1") field_0?: Record<unknown>,
    @query @doc("用户拥有的表情包(n+1)") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("内容") 项?: unknown,
    @query @doc("所有表情包1") field_0?: Record<unknown>,
    @query @doc("所有表情包(n+1)") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("商城名称") title?: string,
    @query @doc("商城页面url") url?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("用户拥有的表情包")
  user_panel_packages?: unknown[];

  @doc("所有表情包")
  all_packages?: unknown[];

  @doc("商城页面")
  mall?: Record<unknown>;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("内容")
  项?: unknown;

  @doc("用户拥有的表情包1")
  field_0?: Record<unknown>;

  @doc("用户拥有的表情包(n+1)")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("内容")
  项?: unknown;

  @doc("所有表情包1")
  field_0?: Record<unknown>;

  @doc("所有表情包(n+1)")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("商城名称")
  title?: string;

  @doc("商城页面url")
  url?: string;

}
