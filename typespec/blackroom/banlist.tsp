import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Blackroom;

/**
 * 获取封禁用户公示列表
 */
@route("/x/credit/blocked/list")
@tag("Blackroom")
interface 获取封禁用户公示列表 {
  @get
  @doc("获取封禁用户公示列表")
  获取封禁用户公示列表(
    @query @doc("来源筛选") btype: int64,
    @query @doc("类型筛选") otype: int64,
    @query @doc("页码") pn: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("`1`") ttl?: int64,
    @query @doc("公示列表") data?: unknown[],
    @query @doc("内容") 项?: unknown,
    @query @doc("封禁公示1") field_0?: Record<unknown>,
    @query @doc("封禁公示（n+1）") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("封禁公示id") id?: int64,
    @query @doc("对象用户名") uname?: string,
    @query @doc("对象用户头像url") face?: string,
    @query @doc("对象用户mid") uid?: int64,
    @query @doc("来源标题") originTitle?: string,
    @query @doc("来源url") originUrl?: string,
    @query @doc("裁决正文") originContentModify?: string,
    @query @doc("来源类型") originType?: int64,
    @query @doc("来源名") originTypeName?: string,
    @query @doc("公示标题") punishTitle?: string,
    @query @doc("处罚时间") punishTime?: int64,
    @query @doc("处理手段类型") punishType?: int64,
    @query @doc("处理手段名") punishTypeName?: string,
    @query @doc("`0`节操值") moralNum?: int64,
    @query @doc("封禁天数") blockedDays?: int64,
    @query @doc("`1`") publishStatus?: int64,
    @query @doc("处理来源") blockedType?: int64,
    @query @doc("是否永封") blockedForever?: int64,
    @query @doc("封禁原因类型") reasonType?: int64,
    @query @doc("封禁原因类型名称") reasonTypeName?: string,
    @query @doc("空") operatorName?: string,
    @query @doc("仲裁信息id") caseId?: int64,
    @query @doc("创建时间") ctime?: int64,
    @query @doc("该条目评论数") commentSum?: int64,
  ): ApiResponse<unknown>;
}

/**
 * 封禁处理公示详情
 */
@route("/x/credit/blocked/info")
@tag("Blackroom")
interface 封禁处理公示详情 {
  @get
  @doc("封禁处理公示详情")
  封禁处理公示详情(
    @query @doc("封禁公示id") id: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("封禁公示id") id?: int64,
    @query @doc("对象用户名") uname?: string,
    @query @doc("对象用户头像url") face?: string,
    @query @doc("对象用户mid") uid?: int64,
    @query @doc("来源标题") originTitle?: string,
    @query @doc("来源url") originUrl?: string,
    @query @doc("裁决正文") originContentModify?: string,
    @query @doc("来源类型") originType?: int64,
    @query @doc("来源名") originTypeName?: string,
    @query @doc("公示标题") punishTitle?: string,
    @query @doc("处罚时间") punishTime?: int64,
    @query @doc("处理手段类型") punishType?: int64,
    @query @doc("处理手段名") punishTypeName?: string,
    @query @doc("`0`节操值") moralNum?: int64,
    @query @doc("封禁天数") blockedDays?: int64,
    @query @doc("`1`") publishStatus?: int64,
    @query @doc("处理来源") blockedType?: int64,
    @query @doc("是否永封") blockedForever?: int64,
    @query @doc("封禁原因类型") reasonType?: int64,
    @query @doc("封禁原因类型名称") reasonTypeName?: string,
    @query @doc("空") operatorName?: string,
    @query @doc("仲裁信息id") caseId?: int64,
    @query @doc("创建时间") ctime?: int64,
    @query @doc("该条目评论数") commentSum?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("封禁公示id")
  id?: int64;

  @doc("对象用户名")
  uname?: string;

  @doc("对象用户头像url")
  face?: string;

  @doc("对象用户mid")
  uid?: int64;

  @doc("来源标题")
  originTitle?: string;

  @doc("来源url")
  originUrl?: string;

  @doc("裁决正文")
  originContentModify?: string;

  @doc("来源类型")
  originType?: int64;

  @doc("来源名")
  originTypeName?: string;

  @doc("公示标题")
  punishTitle?: string;

  @doc("处罚时间")
  punishTime?: int64;

  @doc("处理手段类型")
  punishType?: int64;

  @doc("处理手段名")
  punishTypeName?: string;

  @doc("`0`节操值")
  moralNum?: int64;

  @doc("封禁天数")
  blockedDays?: int64;

  @doc("`1`")
  publishStatus?: int64;

  @doc("处理来源")
  blockedType?: int64;

  @doc("是否永封")
  blockedForever?: int64;

  @doc("封禁原因类型")
  reasonType?: int64;

  @doc("封禁原因类型名称")
  reasonTypeName?: string;

  @doc("空")
  operatorName?: string;

  @doc("仲裁信息id")
  caseId?: int64;

  @doc("创建时间")
  ctime?: int64;

  @doc("该条目评论数")
  commentSum?: int64;

}
