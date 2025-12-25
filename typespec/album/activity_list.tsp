import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Album;

/**
 * 获取相簿热门活动列表
 */
@route("/photo_activity/v2/Activity/list")
@tag("Album")
interface 获取相簿热门活动列表 {
  @get
  @doc("获取相簿热门活动列表")
  获取相簿热门活动列表(
    @query @doc("活动类型") type: int64,
    @query @doc("分区") biz: int64,
    @query @doc("页码") page_num: int64,
    @query @doc("每页项数") page_size: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") msg?: string,
    @query @doc("错误信息") message?: string,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("总计活动数") total_count?: string,
    @query @doc("活动列表") items?: unknown[],
    @query @doc("内容") 项?: unknown,
    @query @doc("活动 1") field_0?: Record<unknown>,
    @query @doc("活动 (n+1)") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("活动图片url") cover?: string,
    @query @doc("活动标题") title?: string,
    @query @doc("活动页面url") link?: string,
    @query @doc("活动类型") type?: int64,
    @query @doc("所属分区") biz?: int64,
    @query @doc("活动关联的TAG") tag?: string,
    @query @doc("开始时间") start_time?: int64,
    @query @doc("结束时间") end_time?: int64,
    @query @doc("备注") desc?: string,
    @query @doc("活动状态") desc_type?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("总计活动数")
  total_count?: string;

  @doc("活动列表")
  items?: unknown[];

  @doc("内容")
  项?: unknown;

  @doc("活动 1")
  field_0?: Record<unknown>;

  @doc("活动 (n+1)")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("活动图片url")
  cover?: string;

  @doc("活动标题")
  title?: string;

  @doc("活动页面url")
  link?: string;

  @doc("活动类型")
  type?: int64;

  @doc("所属分区")
  biz?: int64;

  @doc("活动关联的TAG")
  tag?: string;

  @doc("开始时间")
  start_time?: int64;

  @doc("结束时间")
  end_time?: int64;

  @doc("备注")
  desc?: string;

  @doc("活动状态")
  desc_type?: int64;

}
