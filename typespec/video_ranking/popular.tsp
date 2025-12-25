import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Videoranking;

/**
 * 获取当前热门视频列表
 */
@route("/x/web-interface/popular")
@tag("Videoranking")
interface 获取当前热门视频列表 {
  @get
  @doc("获取当前热门视频列表")
  获取当前热门视频列表(
    @query @doc("页码") pn: int64,
    @query @doc("每页项数") ps: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("视频列表") list?: unknown[],
    @query @doc("是否有更多数据") no_more?: boolean,
    @query @doc("内容") 项?: unknown,
    @query @doc("视频1") field_0?: Record<unknown>,
    @query @doc("视频(n+1)") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("视频列表")
  list?: unknown[];

  @doc("是否有更多数据")
  no_more?: boolean;

  @doc("内容")
  项?: unknown;

  @doc("视频1")
  field_0?: Record<unknown>;

  @doc("视频(n+1)")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

}

/**
 * 每周必看全部列表
 */
@route("/x/web-interface/popular/series/list")
@tag("Videoranking")
interface 每周必看全部列表 {
  @get
  @doc("每周必看全部列表")
  每周必看全部列表(
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("全部信息列表") list?: unknown[],
    @query @doc("内容") 项?: unknown,
    @query @doc("第 n+1 期") field_0?: Record<unknown>,
    @query @doc("第 n 期") field_1?: Record<unknown>,
    @query @doc("第 n-1 期") field_2?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("第 1 期") n?: Record<unknown>,
    @query @doc("期数") number?: int64,
    @query @doc("主题") subject?: string,
    @query @doc("状态") status?: int64,
    @query @doc("名称") name?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("全部信息列表")
  list?: unknown[];

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("内容")
  项?: unknown;

  @doc("第 n+1 期")
  field_0?: Record<unknown>;

  @doc("第 n 期")
  field_1?: Record<unknown>;

  @doc("第 n-1 期")
  field_2?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("第 1 期")
  n?: Record<unknown>;

  @doc("期数")
  number?: int64;

  @doc("主题")
  subject?: string;

  @doc("状态")
  status?: int64;

  @doc("名称")
  name?: string;

}

/**
 * 每周必看选期详细信息
 */
@route("/x/web-interface/popular/series/one")
@tag("Videoranking")
interface 每周必看选期详细信息 {
  @get
  @doc("每周必看选期详细信息")
  每周必看选期详细信息(
    @query @doc("期数") number: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("选期信息") config?: Record<unknown>,
    @query @doc("提醒") reminder?: string,
    @query @doc("选期视频列表") list?: unknown[],
    @query @doc("选期ID") id?: int64,
    @query @doc("选期类型") type?: string,
    @query @doc("期数") number?: int64,
    @query @doc("主题") subject?: string,
    @query @doc("开始时间") stime?: int64,
    @query @doc("结束时间") etime?: int64,
    @query @doc("状态") status?: int64,
    @query @doc("名称") name?: string,
    @query @doc("标题") label?: string,
    @query @doc("提示") hint?: string,
    @query @doc("颜色?") color?: int64,
    @query @doc("封面") cover?: string,
    @query @doc("分享标题") share_title?: string,
    @query @doc("分享副标题") share_subtitle?: string,
    @query @doc("媒体ID?") media_id?: int64,
    @query @doc("内容") 项?: unknown,
    @query @doc("第 1 个视频") field_0?: Record<unknown>,
    @query @doc("第 2 个视频") field_1?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("第 n 个视频") n?: Record<unknown>,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("选期信息")
  config?: Record<unknown>;

  @doc("提醒")
  reminder?: string;

  @doc("选期视频列表")
  list?: unknown[];

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("选期ID")
  id?: int64;

  @doc("选期类型")
  type?: string;

  @doc("期数")
  number?: int64;

  @doc("主题")
  subject?: string;

  @doc("开始时间")
  stime?: int64;

  @doc("结束时间")
  etime?: int64;

  @doc("状态")
  status?: int64;

  @doc("名称")
  name?: string;

  @doc("标题")
  label?: string;

  @doc("提示")
  hint?: string;

  @doc("颜色?")
  color?: int64;

  @doc("封面")
  cover?: string;

  @doc("分享标题")
  share_title?: string;

  @doc("分享副标题")
  share_subtitle?: string;

  @doc("媒体ID?")
  media_id?: int64;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("内容")
  项?: unknown;

  @doc("第 1 个视频")
  field_0?: Record<unknown>;

  @doc("第 2 个视频")
  field_1?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("第 n 个视频")
  n?: Record<unknown>;

}
