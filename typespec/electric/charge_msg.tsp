import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Electric;

/**
 * 发送充电留言
 */
@route("/x/ugcpay/trade/elec/message")
@tag("Electric")
interface 发送充电留言 {
  @post
  @doc("发送充电留言")
  发送充电留言(
    @body @doc("留言token") order_id: string,
    @body @doc("留言内容") message: string,
    @body @doc("CSRF Token（位于cookie）") csrf: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
  ): ApiResponse<unknown>;
}

/**
 * 查询我收到的充电留言
 */
@route("/x/web/elec/remark/list")
@tag("Electric")
interface 查询我收到的充电留言 {
  @get
  @doc("查询我收到的充电留言")
  查询我收到的充电留言(
    @query @doc("起始日期") begin: string,
    @query @doc("结束日期") end: string,
    @query @doc("页数") pn: string,
    @query @doc("分页大小") ps: string,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") msg?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("信息本体") list?: unknown[],
    @query @doc("分页信息") pager?: Record<unknown>,
    @query @doc("留言记录id") id?: int64,
    @query @doc("0") mid?: int64,
    @query @doc("0") reply_mid?: int64,
    @query @doc("0") elec_num?: int64,
    @query @doc("UP是否已经回复这条留言") state?: int64,
    @query @doc("留言信息") msg?: string,
    @query @doc("空") aname?: string,
    @query @doc("空") uname?: string,
    @query @doc("空") avator?: string,
    @query @doc("空") reply_name?: string,
    @query @doc("空") reply_avator?: string,
    @query @doc("空") reply_msg?: string,
    @query @doc("留言时间") ctime?: int64,
    @query @doc("0") reply_time?: int64,
    @query @doc("当前页数") current?: int64,
    @query @doc("当前分页大小") size?: int64,
    @query @doc("记录总数") total?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("信息本体")
  list?: unknown[];

  @doc("分页信息")
  pager?: Record<unknown>;

  @doc("留言记录id")
  id?: int64;

  @doc("0")
  mid?: int64;

  @doc("0")
  reply_mid?: int64;

  @doc("0")
  elec_num?: int64;

  @doc("UP是否已经回复这条留言")
  state?: int64;

  @doc("留言信息")
  msg?: string;

  @doc("空")
  aname?: string;

  @doc("空")
  uname?: string;

  @doc("空")
  avator?: string;

  @doc("空")
  reply_name?: string;

  @doc("空")
  reply_avator?: string;

  @doc("空")
  reply_msg?: string;

  @doc("留言时间")
  ctime?: int64;

  @doc("0")
  reply_time?: int64;

}

/**
 * pager 对象
 */
@doc("pager 数据模型")
model Pager {
  @doc("当前页数")
  current?: int64;

  @doc("当前分页大小")
  size?: int64;

  @doc("记录总数")
  total?: int64;

}

/**
 * 查询充电留言详情
 */
@route("/x/web/elec/remark/detail")
@tag("Electric")
interface 查询充电留言详情 {
  @get
  @doc("查询充电留言详情")
  查询充电留言详情(
    @query @doc("留言id") id: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("留言id") id?: int64,
    @query @doc("留言者mid（充电用户）") mid?: int64,
    @query @doc("UP主mid") reply_mid?: int64,
    @query @doc("0") elec_num?: int64,
    @query @doc("UP是否已经回复这条留言") state?: int64,
    @query @doc("留言内容") msg?: string,
    @query @doc("空") aname?: string,
    @query @doc("留言者用户名") uname?: string,
    @query @doc("留言者头像") avator?: string,
    @query @doc("UP主用户名") reply_name?: string,
    @query @doc("UP主头像") reply_avator?: string,
    @query @doc("回复内容") reply_msg?: string,
    @query @doc("留言时间") ctime?: int64,
    @query @doc("回复时间") reply_time?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("留言id")
  id?: int64;

  @doc("留言者mid（充电用户）")
  mid?: int64;

  @doc("UP主mid")
  reply_mid?: int64;

  @doc("0")
  elec_num?: int64;

  @doc("UP是否已经回复这条留言")
  state?: int64;

  @doc("留言内容")
  msg?: string;

  @doc("空")
  aname?: string;

  @doc("留言者用户名")
  uname?: string;

  @doc("留言者头像")
  avator?: string;

  @doc("UP主用户名")
  reply_name?: string;

  @doc("UP主头像")
  reply_avator?: string;

  @doc("回复内容")
  reply_msg?: string;

  @doc("留言时间")
  ctime?: int64;

  @doc("回复时间")
  reply_time?: int64;

}

/**
 * 回复充电留言
 */
@route("/x/web/elec/remark/reply")
@tag("Electric")
interface 回复充电留言 {
  @post
  @doc("回复充电留言")
  回复充电留言(
    @body @doc("csrf") csrf: string,
    @body @doc("留言id") id: int64,
    @body @doc("回复信息") msg: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
    @body @doc("数据本体") data?: int64,
  ): ApiResponse<unknown>;
}
