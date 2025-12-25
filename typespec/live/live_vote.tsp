import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Live;

/**
 * 查询投票信息
 */
@route("/xlive/app-room/v1/dm/interaction/votePanel")
@tag("Live")
interface 查询投票信息 {
  @get
  @doc("查询投票信息")
  查询投票信息(
    @query @doc("直播间id") room_id: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("`1`") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("当前活动的投票信息") vote_info?: Record<unknown>,
    @query @doc("投票模板") templates?: unknown[],
    @query @doc("投票状态") status?: int64,
    @query @doc("投票问题") question?: string,
    @query @doc("投票选项") options?: unknown[],
    @query @doc("投票持续时间") duration?: int64,
    @query @doc("投票结果偏向哪一方状态") result?: int64,
    @query @doc("投票结果偏向哪一方") result_text?: string,
    @query @doc("投票结束时间") etime_str?: string,
    @query @doc("投票剩余时间") left_duration?: int64,
    @query @doc("投票互动id") interaction_id?: int64,
    @query @doc("投票模板id") template_id?: int64,
    @query @doc("内容") 索引?: unknown,
    @query @doc("投票选项1") field_0?: Record<unknown>,
    @query @doc("投票选项2") field_1?: Record<unknown>,
    @query @doc("选项id") idx?: int64,
    @query @doc("投票选项描述") desc?: string,
    @query @doc("投票选项占比显示") percent?: int64,
    @query @doc("内容") 索引?: unknown,
    @query @doc("投票模板信息") field_0?: Record<unknown>,
    @query @doc("投票模板信息") _?: Record<unknown>,
    @query @doc("模板id") template_id?: int64,
    @query @doc("投票问题") question?: string,
    @query @doc("投票选项A") option_a?: string,
    @query @doc("投票选项B") option_b?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("当前活动的投票信息")
  vote_info?: Record<unknown>;

  @doc("投票模板")
  templates?: unknown[];

}

/**
 * data.vote_info 对象
 */
@doc("data.vote_info 数据模型")
model Datavote_info {
  @doc("投票状态")
  status?: int64;

  @doc("投票问题")
  question?: string;

  @doc("投票选项")
  options?: unknown[];

  @doc("投票持续时间")
  duration?: int64;

  @doc("投票结果偏向哪一方状态")
  result?: int64;

  @doc("投票结果偏向哪一方")
  result_text?: string;

  @doc("投票结束时间")
  etime_str?: string;

  @doc("投票剩余时间")
  left_duration?: int64;

  @doc("投票互动id")
  interaction_id?: int64;

  @doc("投票模板id")
  template_id?: int64;

  @doc("内容")
  索引?: unknown;

  @doc("投票选项1")
  field_0?: Record<unknown>;

  @doc("投票选项2")
  field_1?: Record<unknown>;

  @doc("选项id")
  idx?: int64;

  @doc("投票选项描述")
  desc?: string;

  @doc("投票选项占比显示")
  percent?: int64;

  @doc("内容")
  索引?: unknown;

  @doc("投票模板信息")
  field_0?: Record<unknown>;

  @doc("投票模板信息")
  _?: Record<unknown>;

  @doc("模板id")
  template_id?: int64;

  @doc("投票问题")
  question?: string;

  @doc("投票选项A")
  option_a?: string;

  @doc("投票选项B")
  option_b?: string;

}

/**
 * 查询投票历史
 */
@route("/xlive/app-room/v1/dm/interaction/voteHistory")
@tag("Live")
interface 查询投票历史 {
  @get
  @doc("查询投票历史")
  查询投票历史(
    @query @doc("直播间id") room_id: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("`1`") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("投票历史列表") history?: unknown[],
    @query @doc("内容") 索引?: unknown,
    @query @doc("投票历史") field_0?: Record<unknown>,
    @query @doc("投票历史") _?: Record<unknown>,
    @query @doc("投票历史") field_9?: Record<unknown>,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("投票历史列表")
  history?: unknown[];

  @doc("内容")
  索引?: unknown;

  @doc("投票历史")
  field_0?: Record<unknown>;

  @doc("投票历史")
  _?: Record<unknown>;

  @doc("投票历史")
  field_9?: Record<unknown>;

}

/**
 * 创建直播投票
 */
@route("/xlive/app-room/v1/dm/interaction/createVote")
@tag("Live")
interface 创建直播投票 {
  @get
  @doc("创建直播投票")
  创建直播投票(
    @body @doc("直播间id") room_id: int64,
    @body @doc("持续时间") duration: int64,
    @body @doc("投票问题") question: string,
    @body @doc("选项A") option_a: string,
    @body @doc("选项B") option_b: string,
    @body @doc("投票模板id") template_id: int64,
    @body @doc("直播场次key") live_key: string,
    @body @doc("(?)") sub_session_key: string,
    @body @doc("CSRF Token（位于cookie）") csrf_token: string,
    @body @doc("CSRF Token（位于cookie）") csrf: string,
    @body @doc("(?)") visit_id: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("`1`") ttl?: int64,
    @body @doc("信息本体") data?: Record<unknown>,
    @body @doc("投票互动id") interaction_id?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("投票互动id")
  interaction_id?: int64;

}

/**
 * 中断直播投票
 */
@route("/xlive/app-room/v1/dm/interaction/terminateVote")
@tag("Live")
interface 中断直播投票 {
  @get
  @doc("中断直播投票")
  中断直播投票(
    @body @doc("投票互动id") interaction_id: int64,
    @body @doc("直播间id") room_id: int64,
    @body @doc("CSRF Token（位于cookie）") csrf_token: string,
    @body @doc("CSRF Token（位于cookie）") csrf: string,
    @body @doc("(?)") visit_id: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("`1`") ttl?: int64,
    @body @doc("无") data?: null,
  ): ApiResponse<unknown>;
}

/**
 * 弹幕投票主播侧界面
 */
@route("/p/html/live-app-guessing-game/anchor_vote.html")
@tag("Live")
interface 弹幕投票主播侧界面 {
  @get
  @doc("弹幕投票主播侧界面")
  弹幕投票主播侧界面(
    @query @doc("直播间id") room_id: int64,
  ): ApiResponse<unknown>;
}
