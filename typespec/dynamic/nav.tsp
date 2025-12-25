import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Dynamic;

/**
 * 获取导航栏动态列表
 */
@route("/x/polymer/web-dynamic/v1/feed/nav")
@tag("Dynamic")
interface 获取导航栏动态列表 {
  @get
  @doc("获取导航栏动态列表")
  获取导航栏动态列表(
    @query @doc("更新基线") update_baseline: int64,
    @query @doc("分页偏移量") offset: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("是否有更多数据") has_more?: boolean,
    @query @doc("数据数组") items?: unknown[],
    @query @doc("偏移量") offset?: string,
    @query @doc("更新基线") update_baseline?: string,
    @query @doc("本次获取获取到了多少条新动态") update_num?: int64,
    @query @doc("UP主") author?: Record<unknown>,
    @query @doc("封面URL") cover?: string,
    @query @doc("动态id") id_str?: string,
    @query @doc("发布时间") pub_time?: string,
    @query @doc("关联id") rid?: int64,
    @query @doc("标题") title?: string,
    @query @doc("动态类型") type?: int64,
    @query @doc("是否可见") visible?: boolean,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("是否有更多数据")
  has_more?: boolean;

  @doc("数据数组")
  items?: unknown[];

  @doc("偏移量")
  offset?: string;

  @doc("更新基线")
  update_baseline?: string;

  @doc("本次获取获取到了多少条新动态")
  update_num?: int64;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("UP主")
  author?: Record<unknown>;

  @doc("封面URL")
  cover?: string;

  @doc("动态id")
  id_str?: string;

  @doc("发布时间")
  pub_time?: string;

  @doc("关联id")
  rid?: int64;

  @doc("标题")
  title?: string;

  @doc("动态类型")
  type?: int64;

  @doc("是否可见")
  visible?: boolean;

}
