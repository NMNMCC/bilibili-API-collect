import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Dynamic;

/**
 * 动态转发列表
 */
@route("/dynamic_repost/v1/dynamic_repost/repost_detail")
@tag("Dynamic")
interface 动态转发列表 {
  @get
  @doc("动态转发列表")
  动态转发列表(
    @query @doc("动态id") dynamic_id: unknown,
    @query @doc("-") offset: unknown,
    @query @doc("返回值") code?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("错误信息") message?: string,
    @query @doc("空") msg?: int64,
    @query @doc("是否还有下一页") has_more?: boolean,
    @query @doc("总计包含") total?: int32,
    @query @doc("0") _gt_?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("是否还有下一页")
  has_more?: boolean;

  @doc("总计包含")
  total?: int32;

  @doc("0")
  _gt_?: int64;

}

/**
 * items 对象
 */
@doc("items 数据模型")
model Items {
}

/**
 * 动态点赞列表
 */
@route("/dynamic_like/v1/dynamic_like/spec_item_likes")
@tag("Dynamic")
interface 动态点赞列表 {
  @get
  @doc("动态点赞列表")
  动态点赞列表(
    @query @doc("动态id") dynamic_id?: unknown,
    @query @doc("页码") pn?: unknown,
    @query @doc("每页数量") ps?: unknown,
    @query @doc("返回值") code?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("错误信息") message?: string,
    @query @doc("空") msg?: int64,
    @query @doc("点赞信息列表主体") item_likes?: unknown,
    @query @doc("是否还有下一页") has_more?: boolean,
    @query @doc("总计点赞数") total_count?: int32,
    @query @doc("0") _gt_?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("点赞信息列表主体")
  item_likes?: unknown;

  @doc("是否还有下一页")
  has_more?: boolean;

  @doc("总计点赞数")
  total_count?: int32;

  @doc("0")
  _gt_?: int64;

}

/**
 * item_likes 对象
 */
@doc("item_likes 数据模型")
model Item_likes {
}

/**
 * 获取草稿列表
 */
@route("/dynamic_draft/v1/dynamic_draft/get_drafts")
@tag("Dynamic")
interface 获取草稿列表 {
  @get
  @doc("获取草稿列表")
  获取草稿列表(
    @query @doc("返回值") code?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("草稿列表") drafts?: unknown[],
    @query @doc("草稿id") draft_id?: string,
    @query @doc("定时发送的秒级时间戳") publish_time?: int64,
    @query @doc("动态类型") type?: int64,
    @query @doc("自己的mid") uid?: int64,
    @query @doc("自己的用户信息") user_profile?: Record<unknown>,
    @query @doc("动态内容") request?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("草稿列表")
  drafts?: unknown[];

  @doc("草稿id")
  draft_id?: string;

  @doc("定时发送的秒级时间戳")
  publish_time?: int64;

  @doc("动态类型")
  type?: int64;

  @doc("自己的mid")
  uid?: int64;

  @doc("自己的用户信息")
  user_profile?: Record<unknown>;

  @doc("动态内容")
  request?: string;

}
