import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Activity;

/**
 * 获取活动列表
 */
@route("/x/activity/page/list")
@tag("Activity")
interface 获取活动列表 {
  @get
  @doc("获取活动列表")
  获取活动列表(
    @query @doc("活动平台类型?") plat: string,
    @query @doc("0") mold: int32,
    @query @doc("3") http: int32,
    @query @doc("目标页码") pn: int32,
    @query @doc("每页条数") ps: int32,
    @query @doc("-") _?: unknown,
    @query @doc("返回值") code?: int32,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int32,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("-") _?: unknown,
    @query @doc("活动列表") list?: unknown[],
    @query @doc("当前页码") num?: int32,
    @query @doc("每页条数") size?: int32,
    @query @doc("总条数") total?: int32,
    @query @doc("-") _?: unknown,
    @query @doc("活动 ID") id?: int32,
    @query @doc("1") state?: int32,
    @query @doc("开始时间") stime?: int32,
    @query @doc("结束时间") etime?: int32,
    @query @doc("创建时间?") ctime?: int32,
    @query @doc("修改时间?") mtime?: int32,
    @query @doc("活动名称") name?: string,
    @query @doc("空") author?: string,
    @query @doc("空") pc_url?: string,
    @query @doc("0") rank?: int32,
    @query @doc("活动链接") h5_url?: string,
    @query @doc("空") pc_cover?: string,
    @query @doc("活动封面") h5_cover?: string,
    @query @doc("页面名称") page_name?: string,
    @query @doc("活动平台类型?") plat?: int32,
    @query @doc("活动描述") desc?: string,
    @query @doc("0") click?: int32,
    @query @doc("0") type?: int32,
    @query @doc("0") mold?: int32,
    @query @doc("0") series?: int32,
    @query @doc("0") dept?: int32,
    @query @doc("0") reply_id?: int32,
    @query @doc("0") tp_id?: int32,
    @query @doc("0") ptime?: int32,
    @query @doc("0") catalog?: int32,
    @query @doc("空") creator?: string,
    @query @doc("空") spm_id?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("-")
  _?: unknown;

  @doc("活动列表")
  list?: unknown[];

  @doc("当前页码")
  num?: int32;

  @doc("每页条数")
  size?: int32;

  @doc("总条数")
  total?: int32;

  @doc("-")
  _?: unknown;

  @doc("活动 ID")
  id?: int32;

  @doc("1")
  state?: int32;

  @doc("开始时间")
  stime?: int32;

  @doc("结束时间")
  etime?: int32;

  @doc("创建时间?")
  ctime?: int32;

  @doc("修改时间?")
  mtime?: int32;

  @doc("活动名称")
  name?: string;

  @doc("空")
  author?: string;

  @doc("空")
  pc_url?: string;

  @doc("0")
  rank?: int32;

  @doc("活动链接")
  h5_url?: string;

  @doc("空")
  pc_cover?: string;

  @doc("活动封面")
  h5_cover?: string;

  @doc("页面名称")
  page_name?: string;

  @doc("活动平台类型?")
  plat?: int32;

  @doc("活动描述")
  desc?: string;

  @doc("0")
  click?: int32;

  @doc("0")
  type?: int32;

  @doc("0")
  mold?: int32;

  @doc("0")
  series?: int32;

  @doc("0")
  dept?: int32;

  @doc("0")
  reply_id?: int32;

  @doc("0")
  tp_id?: int32;

  @doc("0")
  ptime?: int32;

  @doc("0")
  catalog?: int32;

  @doc("空")
  creator?: string;

  @doc("空")
  spm_id?: string;

}
