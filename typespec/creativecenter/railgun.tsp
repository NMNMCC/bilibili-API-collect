import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Creativecenter;

/**
 * 获取电磁力等级（web端）
 */
@route("/studio/up-rating/v3/rating/info")
@tag("Creativecenter")
interface 获取电磁力等级web端 {
  @get
  @doc("获取电磁力等级（web端）")
  获取电磁力等级web端(
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("当前用户mid") mid?: int64,
    @query @doc("电磁力等级") level?: int64,
    @query @doc("电磁力分数") score?: int64,
    @query @doc("信用分") credit?: int64,
    @query @doc("?") state?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("当前用户mid")
  mid?: int64;

  @doc("电磁力等级")
  level?: int64;

  @doc("电磁力分数")
  score?: int64;

  @doc("信用分")
  credit?: int64;

  @doc("?")
  state?: int64;

}

/**
 * （失效）获取电磁力详细数值（双端）
 */
@route("/studio/up-rating/rating/summary")
@tag("Creativecenter")
interface 失效获取电磁力详细数值双端 {
  @get
  @doc("（失效）获取电磁力详细数值（双端）")
  失效获取电磁力详细数值双端(
    @query @doc("APP登录Token") access_key: string,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("数据刷新时间") date?: string,
    @query @doc("电磁力等级") level?: Record<unknown>,
    @query @doc("创作力") creative?: Record<unknown>,
    @query @doc("影响力") influence?: Record<unknown>,
    @query @doc("信用分") credit?: Record<unknown>,
    @query @doc("数值") data?: int64,
    @query @doc("？？？") prev?: int64,
    @query @doc("描述") desc?: string,
    @query @doc("刷新时间") date?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("数据刷新时间")
  date?: string;

  @doc("电磁力等级")
  level?: Record<unknown>;

  @doc("创作力")
  creative?: Record<unknown>;

  @doc("影响力")
  influence?: Record<unknown>;

  @doc("信用分")
  credit?: Record<unknown>;

}

/**
 * credit 对象
 */
@doc("credit 数据模型")
model Credit {
  @doc("数值")
  data?: int64;

  @doc("？？？")
  prev?: int64;

  @doc("描述")
  desc?: string;

  @doc("刷新时间")
  date?: int64;

}

/**
 * 获取电磁力数值历史变化（双端）
 */
@route("/studio/up-rating/rating/history")
@tag("Creativecenter")
interface 获取电磁力数值历史变化双端 {
  @get
  @doc("获取电磁力数值历史变化（双端）")
  获取电磁力数值历史变化双端(
    @query @doc("APP登录Token") access_key: string,
    @query @doc("目标数据类型") type: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("数据记录时间") date?: unknown[],
    @query @doc("电磁力等级") score?: unknown[],
    @query @doc("内容") 项?: unknown,
    @query @doc("1周前的日期") field_0?: string,
    @query @doc("（n+1）周前的日期") n?: string,
    @query @doc("……") __?: string,
    @query @doc("8周前的日期") field_7?: string,
    @query @doc("内容") 项?: unknown,
    @query @doc("1周前的数值") field_0?: int64,
    @query @doc("（n+1）周前的数值") n?: int64,
    @query @doc("……") __?: int64,
    @query @doc("8周前的数值") field_7?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("数据记录时间")
  date?: unknown[];

  @doc("电磁力等级")
  score?: unknown[];

  @doc("内容")
  项?: unknown;

  @doc("1周前的日期")
  field_0?: string;

  @doc("（n+1）周前的日期")
  n?: string;

  @doc("……")
  __?: string;

  @doc("8周前的日期")
  field_7?: string;

  @doc("内容")
  项?: unknown;

  @doc("1周前的数值")
  field_0?: int64;

  @doc("（n+1）周前的数值")
  n?: int64;

  @doc("……")
  __?: int64;

  @doc("8周前的数值")
  field_7?: int64;

}
