import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Live;

/**
 * 获取直播场次的直播数据
 */
@route("/xlive/app-blink/v1/live/StopLiveData")
@tag("Live")
interface 获取直播场次的直播数据 {
  @get
  @doc("获取直播场次的直播数据")
  获取直播场次的直播数据(
    @query @doc("标记直播场次的key") live_key: string,
    @query @doc("返回值") code?: int64,
    @query @doc("提示信息") message?: string,
    @query @doc("`1`") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("该直播场次的直播时长") LiveTime?: int64,
    @query @doc("该直播场次的新增粉丝") AddFans?: int64,
    @query @doc("该直播场次的收益") HamsterRmb?: int64,
    @query @doc("该直播场次新获得粉丝勋章数量") NewFansClub?: int64,
    @query @doc("该直播场次的弹幕条数") DanmuNum?: int64,
    @query @doc("该直播场次的最大在线?") MaxOnline?: int64,
    @query @doc("该直播场次的看过人数") WatchedCount?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("该直播场次的直播时长")
  LiveTime?: int64;

  @doc("该直播场次的新增粉丝")
  AddFans?: int64;

  @doc("该直播场次的收益")
  HamsterRmb?: int64;

  @doc("该直播场次新获得粉丝勋章数量")
  NewFansClub?: int64;

  @doc("该直播场次的弹幕条数")
  DanmuNum?: int64;

  @doc("该直播场次的最大在线?")
  MaxOnline?: int64;

  @doc("该直播场次的看过人数")
  WatchedCount?: int64;

}

/**
 * 获取直播表现
 */
@route("/xlive/app-blink/v1/date/Overview")
@tag("Live")
interface 获取直播表现 {
  @get
  @doc("获取直播表现")
  获取直播表现(
    @query @doc("返回值") code?: int64,
    @query @doc("提示信息") message?: string,
    @query @doc("`1`") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("图表数据") graph?: unknown[],
    @query @doc("(?)") propose?: null,
    @query @doc("内容") 索引?: unknown,
    @query @doc("数据类别") field_0?: Record<unknown>,
    @query @doc("数据类别") _?: Record<unknown>,
    @query @doc("显示的名称") name?: string,
    @query @doc("类别标识") index?: string,
    @query @doc("自己在这个类别的数值") me?: int64,
    @query @doc("这个类别最外侧那条线的数值") max?: int64,
    @query @doc("同水平主播在这个类别的数值") aver?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("图表数据")
  graph?: unknown[];

  @doc("(?)")
  propose?: null;

  @doc("内容")
  索引?: unknown;

  @doc("数据类别")
  field_0?: Record<unknown>;

  @doc("数据类别")
  _?: Record<unknown>;

  @doc("显示的名称")
  name?: string;

  @doc("类别标识")
  index?: string;

  @doc("自己在这个类别的数值")
  me?: int64;

  @doc("这个类别最外侧那条线的数值")
  max?: int64;

  @doc("同水平主播在这个类别的数值")
  aver?: int64;

}
