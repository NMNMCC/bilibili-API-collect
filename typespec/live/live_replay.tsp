import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Live;

/**
 * 获取直播回放列表
 */
@route("/xlive/app-blink/v1/anchorVideo/AnchorGetReplayList")
@tag("Live")
interface 获取直播回放列表 {
  @get
  @doc("获取直播回放列表")
  获取直播回放列表(
    @query @doc("页码") page: int64,
    @query @doc("每页内容数量") page_size: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("提示信息") message?: string,
    @query @doc("`1`") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("回放信息列表") replay_info?: unknown[],
    @query @doc("分页信息") pagination?: Record<unknown>,
    @query @doc("(?)") archive_flag?: boolean,
    @query @doc("(?)") can__edit?: int64,
    @query @doc("(?)") can_upload?: boolean,
    @query @doc("(?)") has_third_platform_live?: boolean,
    @query @doc("直播回放id") replay_id?: int64,
    @query @doc("直播信息") live_info?: Record<unknown>,
    @query @doc("回放视频信息") video_info?: Record<unknown>,
    @query @doc("警报信息") alarm_info?: Record<unknown>,
    @query @doc("直播间id") room_id?: int64,
    @query @doc("标记直播场次的key") live_key?: string,
    @query @doc("直播开始秒时间戳") start_time?: int64,
    @query @doc("直播结束秒时间戳") end_time?: int64,
    @query @doc("直播标题") title?: string,
    @query @doc("直播封面") cover?: string,
    @query @doc("直播时间") live_time?: int64,
    @query @doc("直播类型?") live_type?: int64,
    @query @doc("直播平台") platform?: string,
    @query @doc("回放状态") replay_status?: int64,
    @query @doc("直播回放合成结束时间") estimated_time?: string,
    @query @doc("直播时长") duration?: int64,
    @query @doc("下载链接片段") download_url?: string,
    @query @doc("快速检查警告代码") alert_code?: int64,
    @query @doc("快速检查警告信息") alert_message?: string,
    @query @doc("回放合成警报代码") code?: int64,
    @query @doc("回放合成错误信息") message?: string,
    @query @doc("当前时间戳") cur_time?: int64,
    @query @doc("是否禁止发布?") is_ban_publish?: boolean,
    @query @doc("请求的页码") page?: int64,
    @query @doc("内容数量") page_size?: int64,
    @query @doc("总计内容数量") total?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("回放信息列表")
  replay_info?: unknown[];

  @doc("分页信息")
  pagination?: Record<unknown>;

  @doc("(?)")
  archive_flag?: boolean;

  @doc("(?)")
  can__edit?: int64;

  @doc("(?)")
  can_upload?: boolean;

  @doc("(?)")
  has_third_platform_live?: boolean;

  @doc("直播回放id")
  replay_id?: int64;

  @doc("直播信息")
  live_info?: Record<unknown>;

  @doc("回放视频信息")
  video_info?: Record<unknown>;

  @doc("警报信息")
  alarm_info?: Record<unknown>;

  @doc("直播间id")
  room_id?: int64;

  @doc("标记直播场次的key")
  live_key?: string;

  @doc("直播开始秒时间戳")
  start_time?: int64;

  @doc("直播结束秒时间戳")
  end_time?: int64;

}

/**
 * data.replay_info[i].live_info 对象
 */
@doc("data.replay_info[i].live_info 数据模型")
model Datareplay_infoilive_info {
  @doc("直播标题")
  title?: string;

  @doc("直播封面")
  cover?: string;

  @doc("直播时间")
  live_time?: int64;

  @doc("直播类型?")
  live_type?: int64;

  @doc("直播平台")
  platform?: string;

}

/**
 * data.replay_info[i].video_info 对象
 */
@doc("data.replay_info[i].video_info 数据模型")
model Datareplay_infoivideo_info {
  @doc("回放状态")
  replay_status?: int64;

  @doc("直播回放合成结束时间")
  estimated_time?: string;

  @doc("直播时长")
  duration?: int64;

  @doc("下载链接片段")
  download_url?: string;

  @doc("快速检查警告代码")
  alert_code?: int64;

  @doc("快速检查警告信息")
  alert_message?: string;

}

/**
 * data.replay_info[i].alarm_info 对象
 */
@doc("data.replay_info[i].alarm_info 数据模型")
model Datareplay_infoialarm_info {
  @doc("回放合成警报代码")
  code?: int64;

  @doc("回放合成错误信息")
  message?: string;

  @doc("当前时间戳")
  cur_time?: int64;

  @doc("是否禁止发布?")
  is_ban_publish?: boolean;

}

/**
 * data.pagination 对象
 */
@doc("data.pagination 数据模型")
model Datapagination {
  @doc("请求的页码")
  page?: int64;

  @doc("内容数量")
  page_size?: int64;

  @doc("总计内容数量")
  total?: int64;

}

/**
 * 获取某位主播的回放列表
 */
@route("/xlive/web-room/v1/videoService/GetOtherSliceList")
@tag("Live")
interface 获取某位主播的回放列表 {
  @get
  @doc("获取某位主播的回放列表")
  获取某位主播的回放列表(
    @query @doc("目标主播的uid") live_uid: int64,
    @query @doc("回放列表的时间范围") time_range: int64,
    @query @doc("页码") page: int64,
    @query @doc("每页内容数量") page_size: int64,
    @query @doc("(?)") web_location: string,
    @query @doc("返回值") code?: int64,
    @query @doc("提示信息") message?: string,
    @query @doc("`1`") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
  ): ApiResponse<unknown>;
}

/**
 * 获取已发布片段的信息
 */
@route("/xlive/app-blink/v1/anchorVideo/AnchorGetVideoSliceList")
@tag("Live")
interface 获取已发布片段的信息 {
  @get
  @doc("获取已发布片段的信息")
  获取已发布片段的信息(
    @query @doc("页码") page: int64,
    @query @doc("每页内容数量") page_size: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("提示信息") message?: string,
    @query @doc("`1`") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("切片信息") list?: unknown[],
    @query @doc("请求的页码") page?: int64,
    @query @doc("内容数量") page_size?: int64,
    @query @doc("总计内容数量") total?: int64,
    @query @doc("切片id") silce_id?: int64,
    @query @doc("切片标题") av_title?: string,
    @query @doc("切片封面") av_cover?: string,
    @query @doc("切片状态") av_status?: int64,
    @query @doc("切片视频的avid") avid?: int64,
    @query @doc("切片创建时间") ctime?: string,
    @query @doc("切片开始时间") start_tm?: string,
    @query @doc("切片结束时间") end_tm?: string,
    @query @doc("切片时长") av_duration?: int64,
    @query @doc("失败原因") failed_reason?: string,
    @query @doc("(?)") live_type?: int64,
    @query @doc("播放数") cnt_play?: int64,
    @query @doc("弹幕数") cnt_danmaku?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("切片信息")
  list?: unknown[];

  @doc("请求的页码")
  page?: int64;

  @doc("内容数量")
  page_size?: int64;

  @doc("总计内容数量")
  total?: int64;

  @doc("切片id")
  silce_id?: int64;

  @doc("切片标题")
  av_title?: string;

  @doc("切片封面")
  av_cover?: string;

  @doc("切片状态")
  av_status?: int64;

  @doc("切片视频的avid")
  avid?: int64;

  @doc("切片创建时间")
  ctime?: string;

  @doc("切片开始时间")
  start_tm?: string;

  @doc("切片结束时间")
  end_tm?: string;

  @doc("切片时长")
  av_duration?: int64;

  @doc("失败原因")
  failed_reason?: string;

  @doc("(?)")
  live_type?: int64;

  @doc("播放数")
  cnt_play?: int64;

  @doc("弹幕数")
  cnt_danmaku?: int64;

}

/**
 * 获取你为某位主播剪辑的已发布片段
 */
@route("/xlive/web-room/v1/videoService/GetPublishedList")
@tag("Live")
interface 获取你为某位主播剪辑的已发布片段 {
  @get
  @doc("获取你为某位主播剪辑的已发布片段")
  获取你为某位主播剪辑的已发布片段(
    @query @doc("目标主播的uid") live_uid: int64,
    @query @doc("页码") page: int64,
    @query @doc("每页内容数量") page_size: int64,
    @query @doc("(?)") web_location: string,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("`1`") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("切片信息") slice_info?: unknown,
    @query @doc("分页信息") pagination?: Record<unknown>,
    @query @doc("切片id") slice_id?: int64,
    @query @doc("发布者uid?") uid?: int64,
    @query @doc("主播uid") live_uid?: int64,
    @query @doc("标记直播场次的key") live_key?: string,
    @query @doc("切片标题") title?: string,
    @query @doc("切片封面") cover?: string,
    @query @doc("绑定的高光时刻") high_light_id?: int64,
    @query @doc("片段开始时间") start_time?: string,
    @query @doc("片段结束时间") end_time?: string,
    @query @doc("切片状态") status?: int64,
    @query @doc("失败提示") fail_reason?: string,
    @query @doc("切片视频文件名") filename?: string,
    @query @doc("切片视频的avid") avid?: int64,
    @query @doc("切片创建时间") ctime?: string,
    @query @doc("切片时长") av_duration?: int64,
    @query @doc("(?)") live_type?: int64,
    @query @doc("请求的页码") page?: int64,
    @query @doc("内容数量") page_size?: int64,
    @query @doc("总计内容数量") total?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("切片信息")
  slice_info?: unknown;

  @doc("分页信息")
  pagination?: Record<unknown>;

  @doc("切片id")
  slice_id?: int64;

  @doc("发布者uid?")
  uid?: int64;

  @doc("主播uid")
  live_uid?: int64;

  @doc("标记直播场次的key")
  live_key?: string;

  @doc("切片标题")
  title?: string;

  @doc("绑定的高光时刻")
  high_light_id?: int64;

  @doc("片段开始时间")
  start_time?: string;

  @doc("片段结束时间")
  end_time?: string;

  @doc("切片状态")
  status?: int64;

  @doc("失败提示")
  fail_reason?: string;

  @doc("切片视频文件名")
  filename?: string;

  @doc("切片视频的avid")
  avid?: int64;

  @doc("切片创建时间")
  ctime?: string;

  @doc("切片时长")
  av_duration?: int64;

  @doc("(?)")
  live_type?: int64;

}

/**
 * data.pagination 对象
 */
@doc("data.pagination 数据模型")
model Datapagination {
  @doc("请求的页码")
  page?: int64;

  @doc("内容数量")
  page_size?: int64;

  @doc("总计内容数量")
  total?: int64;

}

/**
 * 获取回放剪辑草稿列表
 */
@route("/xlive/app-blink/v1/anchorVideo/GetDraftList")
@tag("Live")
interface 获取回放剪辑草稿列表 {
  @get
  @doc("获取回放剪辑草稿列表")
  获取回放剪辑草稿列表(
    @query @doc("页码") page: int64,
    @query @doc("每页内容数量") page_size: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("`1`") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("草稿信息") draft_info?: unknown[],
    @query @doc("分页信息") pagination?: Record<unknown>,
    @query @doc("回放剪辑id") id?: int64,
    @query @doc("回放剪辑标题") title?: string,
    @query @doc("回放剪辑封面") cover?: string,
    @query @doc("标记直播场次的key") live__key?: string,
    @query @doc("回放剪辑创建时间") ctime?: string,
    @query @doc("直播开始时间") live_start_time?: string,
    @query @doc("直播结束时间") live_end_time?: string,
    @query @doc("(?)") live_type?: int64,
    @query @doc("请求的页码") page?: int64,
    @query @doc("内容数量") page_size?: int64,
    @query @doc("总计内容数量") total?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("草稿信息")
  draft_info?: unknown[];

  @doc("分页信息")
  pagination?: Record<unknown>;

  @doc("回放剪辑id")
  id?: int64;

  @doc("回放剪辑标题")
  title?: string;

  @doc("回放剪辑封面")
  cover?: string;

  @doc("标记直播场次的key")
  live__key?: string;

  @doc("回放剪辑创建时间")
  ctime?: string;

  @doc("直播开始时间")
  live_start_time?: string;

  @doc("直播结束时间")
  live_end_time?: string;

  @doc("(?)")
  live_type?: int64;

}

/**
 * data.pagination 对象
 */
@doc("data.pagination 数据模型")
model Datapagination {
  @doc("请求的页码")
  page?: int64;

  @doc("内容数量")
  page_size?: int64;

  @doc("总计内容数量")
  total?: int64;

}

/**
 * 获取你为某位主播剪辑的草稿
 */
@route("/xlive/web-room/v1/videoService/GetDraftList")
@tag("Live")
interface 获取你为某位主播剪辑的草稿 {
  @get
  @doc("获取你为某位主播剪辑的草稿")
  获取你为某位主播剪辑的草稿(
    @query @doc("目标主播的uid") live_uid: int64,
    @query @doc("页码") page: int64,
    @query @doc("每页内容数量") page_size: int64,
    @query @doc("(?)") web_location: string,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("`1`") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
  ): ApiResponse<unknown>;
}

/**
 * 删除某个回放剪辑草稿
 */
@route("/xlive/app-blink/v1/anchorVideo/DeleteSliceDraft")
@tag("Live")
interface 删除某个回放剪辑草稿 {
  @get
  @doc("删除某个回放剪辑草稿")
  删除某个回放剪辑草稿(
    @body @doc("回放剪辑id") draft_id: int64,
    @body @doc("CSRF Token（位于cookie）") csrf_token: string,
    @body @doc("CSRF Token（位于cookie）") csrf: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("`1`") ttl?: int64,
    @body @doc("信息本体") data?: Record<unknown>,
    @body @doc("`0`") code?: int64,
    @body @doc("`\"\"`") message?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("`0`")
  code?: int64;

  @doc("`\"\"`")
  message?: string;

}

/**
 * 删除为某个主播剪辑的草稿
 */
@route("/xlive/web-room/v1/videoService/DeleteSliceDraft")
@tag("Live")
interface 删除为某个主播剪辑的草稿 {
  @get
  @doc("删除为某个主播剪辑的草稿")
  删除为某个主播剪辑的草稿(
    @query @doc("CSRF Token（位于cookie）") csrf: string,
    @body @doc("回放剪辑id") draft_id: int64,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("`1`") ttl?: int64,
    @body @doc("信息本体") data?: Record<unknown>,
  ): ApiResponse<unknown>;
}

/**
 * 请求整场直播回放下载链接
 */
@route("/xlive/app-blink/v1/anchorVideo/AnchorVideoDownload")
@tag("Live")
interface 请求整场直播回放下载链接 {
  @get
  @doc("请求整场直播回放下载链接")
  请求整场直播回放下载链接(
    @body @doc("直播回放id") record_id: int64,
    @body @doc("标记直播场次的key") live_key: string,
    @body @doc("CSRF Token（位于cookie）") csrf_token: string,
    @body @doc("CSRF Token（位于cookie）") csrf: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("`1`") ttl?: int64,
    @body @doc("信息本体") data?: Record<unknown>,
    @body @doc("回放状态") record?: Record<unknown>,
    @body @doc("回放下载链接") download_url?: string,
    @body @doc("回放下载链接列表") download_url_list?: unknown[],
    @body @doc("用户mid") uid?: int64,
    @body @doc("直播回放id") record_id?: int64,
    @body @doc("回放状态") status?: int64,
    @body @doc("预计结束时间") estimated_time?: int64,
    @body @doc("当前时间") current_time?: int64,
    @body @doc("开始合并时间") merge_time?: int64,
    @body @doc("提示信息") toast?: string,
    @body @doc("内容") 项?: unknown,
    @body @doc("回放下载链接") field_0?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("回放状态")
  record?: Record<unknown>;

  @doc("回放下载链接")
  download_url?: string;

  @doc("回放下载链接列表")
  download_url_list?: unknown[];

}

/**
 * data.record 对象
 */
@doc("data.record 数据模型")
model Datarecord {
  @doc("用户mid")
  uid?: int64;

  @doc("直播回放id")
  record_id?: int64;

  @doc("回放状态")
  status?: int64;

  @doc("预计结束时间")
  estimated_time?: int64;

  @doc("当前时间")
  current_time?: int64;

  @doc("开始合并时间")
  merge_time?: int64;

  @doc("提示信息")
  toast?: string;

  @doc("内容")
  项?: unknown;

  @doc("回放下载链接")
  field_0?: string;

}

/**
 * 获取回放的信息
 */
@route("/xlive/app-blink/v1/anchorVideo/GetAnchorVideoUidRecordsSubsect")
@tag("Live")
interface 获取回放的信息 {
  @get
  @doc("获取回放的信息")
  获取回放的信息(
    @query @doc("直播回放id") record_id: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("`1`") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("回放信息列表") list?: unknown[],
    @query @doc("用户mid") uid?: int64,
    @query @doc("直播回放id") record_id?: int64,
    @query @doc("直播标题") title?: string,
    @query @doc("直播封面") cover?: string,
    @query @doc("回放状态") status?: int64,
    @query @doc("直播开始时间") start__time?: int64,
    @query @doc("直播结束时间") end_time?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("回放信息列表")
  list?: unknown[];

  @doc("用户mid")
  uid?: int64;

  @doc("直播回放id")
  record_id?: int64;

  @doc("直播标题")
  title?: string;

  @doc("直播封面")
  cover?: string;

  @doc("回放状态")
  status?: int64;

  @doc("直播开始时间")
  start__time?: int64;

  @doc("直播结束时间")
  end_time?: int64;

}

/**
 * 轮询回放状态
 */
@route("/xlive/app-blink/v1/anchorVideo/GetAnchorVideoUidRecord")
@tag("Live")
interface 轮询回放状态 {
  @get
  @doc("轮询回放状态")
  轮询回放状态(
    @body @doc("直播回放id列表") records: string,
    @body @doc("CSRF Token（位于cookie）") csrf_token: string,
    @body @doc("CSRF Token（位于cookie）") csrf: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("`1`") ttl?: int64,
    @body @doc("信息本体") data?: Record<unknown>,
    @body @doc("查询结果") list?: unknown[],
    @body @doc("用户mid") uid?: int64,
    @body @doc("直播回放id") record_id?: int64,
    @body @doc("回放状态") status?: int64,
    @body @doc("当前时间戳") current_time?: int64,
    @body @doc("预计结束时间戳") estimated_time?: int64,
    @body @doc("合成开始时间戳") merge_time?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("查询结果")
  list?: unknown[];

  @doc("用户mid")
  uid?: int64;

  @doc("直播回放id")
  record_id?: int64;

  @doc("回放状态")
  status?: int64;

  @doc("当前时间戳")
  current_time?: int64;

  @doc("预计结束时间戳")
  estimated_time?: int64;

  @doc("合成开始时间戳")
  merge_time?: int64;

}

/**
 * 获取切片视频流
 */
@route("/xlive/app-blink/v1/anchorVideo/GetSliceStream")
@tag("Live")
interface 获取切片视频流 {
  @get
  @doc("获取切片视频流")
  获取切片视频流(
    @query @doc("标记直播场次的key") live_key: string,
    @query @doc("直播开始时间戳") start_time: int64,
    @query @doc("直播结束时间戳") end_time: int64,
    @query @doc("(?)") web_location: string,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("`1`") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("直播回放视频列表") list?: unknown,
    @query @doc("不可发布的回放时间") ban_list?: unknown,
    @query @doc("片段开始时间戳") start_time?: int64,
    @query @doc("片段结束时间戳") end_time?: int64,
    @query @doc("直播回放视频流") stream?: string,
    @query @doc("类型?") type?: int64,
    @query @doc("不可发布片段的开始时间戳") start_time?: int64,
    @query @doc("不可发布片段的结束时间戳") end_time?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("直播回放视频列表")
  list?: unknown;

  @doc("不可发布的回放时间")
  ban_list?: unknown;

  @doc("片段开始时间戳")
  start_time?: int64;

  @doc("片段结束时间戳")
  end_time?: int64;

  @doc("直播回放视频流")
  stream?: string;

  @doc("类型?")
  type?: int64;

  @doc("不可发布片段的开始时间戳")
  start_time?: int64;

  @doc("不可发布片段的结束时间戳")
  end_time?: int64;

}

/**
 * 获取某位主播的切片视频流
 */
@route("/xlive/web-room/v1/videoService/GetUserSliceStream")
@tag("Live")
interface 获取某位主播的切片视频流 {
  @get
  @doc("获取某位主播的切片视频流")
  获取某位主播的切片视频流(
    @query @doc("标记直播场次的key") live_key: string,
    @query @doc("直播开始时间戳") start_time: int64,
    @query @doc("直播结束时间戳") end_time: int64,
    @query @doc("目标主播的uid") live_uid: int64,
    @query @doc("(?)") web_location: string,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("`1`") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("直播回放视频列表") list?: unknown[],
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("直播回放视频列表")
  list?: unknown[];

}

/**
 * 获取直播会话数据
 */
@route("/xlive/app-blink/v1/anchorVideo/GetLiveSessionData")
@tag("Live")
interface 获取直播会话数据 {
  @get
  @doc("获取直播会话数据")
  获取直播会话数据(
    @query @doc("标记直播场次的key") live_key: string,
    @query @doc("开始时间") start_tm: string,
    @query @doc("开始时间") end_tm: string,
    @query @doc("(?)") web_location?: string,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("`1`") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("会话数据") session_data?: unknown[],
    @query @doc("弹幕最多的时间戳") max_danmaku?: int64,
    @query @doc("进房最多的时间戳") max_pcu?: int64,
    @query @doc("(?)") max_value?: int64,
    @query @doc("高光时刻数据") high_light_data?: unknown[],
    @query @doc("ASS字幕链接") ass_url?: string,
    @query @doc("高亮状态信息") high_light_stat?: Record<unknown>,
    @query @doc("采样时间") ts?: int64,
    @query @doc("弹幕数量") value?: int64,
    @query @doc("高光id") id?: int64,
    @query @doc("高光类型") type?: int64,
    @query @doc("高光开始时间戳") start_time?: int64,
    @query @doc("高光结束时间戳") end_time?: int64,
    @query @doc("高光提示标题") title?: string,
    @query @doc("(?)") cover?: string,
    @query @doc("(?)") extra?: string,
    @query @doc("“高光时刻”数量") original_hl?: int64,
    @query @doc("“已保存”数量") manual_hl?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("会话数据")
  session_data?: unknown[];

  @doc("弹幕最多的时间戳")
  max_danmaku?: int64;

  @doc("进房最多的时间戳")
  max_pcu?: int64;

  @doc("(?)")
  max_value?: int64;

  @doc("高光时刻数据")
  high_light_data?: unknown[];

  @doc("ASS字幕链接")
  ass_url?: string;

  @doc("高亮状态信息")
  high_light_stat?: Record<unknown>;

  @doc("采样时间")
  ts?: int64;

  @doc("弹幕数量")
  value?: int64;

  @doc("高光id")
  id?: int64;

  @doc("高光类型")
  type?: int64;

  @doc("高光开始时间戳")
  start_time?: int64;

  @doc("高光结束时间戳")
  end_time?: int64;

  @doc("高光提示标题")
  title?: string;

  @doc("(?)")
  cover?: string;

  @doc("(?)")
  extra?: string;

}

/**
 * data.high_light_stat 对象
 */
@doc("data.high_light_stat 数据模型")
model Datahigh_light_stat {
  @doc("“高光时刻”数量")
  original_hl?: int64;

  @doc("“已保存”数量")
  manual_hl?: int64;

}

/**
 * 获取某位主播的直播会话数据
 */
@route("/xlive/web-room/v1/videoService/GetUserLiveSessionData")
@tag("Live")
interface 获取某位主播的直播会话数据 {
  @get
  @doc("获取某位主播的直播会话数据")
  获取某位主播的直播会话数据(
    @query @doc("标记直播场次的key") live_key: string,
    @query @doc("开始时间") start_tm: string,
    @query @doc("开始时间") end_tm: string,
    @query @doc("目标主播的uid") live_uid: int64,
    @query @doc("(?)") web_location?: string,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("`1`") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
  ): ApiResponse<unknown>;
}

/**
 * 获取用户高光列表
 */
@route("/xlive/app-blink/v1/anchorVideo/UserGetManualHighlightList")
@tag("Live")
interface 获取用户高光列表 {
  @get
  @doc("获取用户高光列表")
  获取用户高光列表(
    @query @doc("标记直播场次的key") live_key: string,
    @query @doc("查询类型") manual_type: int64,
    @query @doc("目标主播的uid") live_uid: int64,
    @query @doc("(?)") web_location: string,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("`1`") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("高亮状态信息") high_light_stat?: Record<unknown>,
    @query @doc("高光列表") manual_highlight_list?: unknown[],
    @query @doc("内容") 索引?: unknown,
    @query @doc("第一条高光信息") field_0?: Record<unknown>,
    @query @doc("某一条高光信息") _?: Record<unknown>,
    @query @doc("最后一条高光信息") i?: Record<unknown>,
    @query @doc("片段id") manual_id?: int64,
    @query @doc("片段标题") highlight_title?: string,
    @query @doc("开始时间戳") start_ts?: int64,
    @query @doc("结束时间戳") end_ts?: int64,
    @query @doc("保存者uid?") uid?: int64,
    @query @doc("主播uid") ruid?: int64,
    @query @doc("标记直播场次的key") live_key?: string,
    @query @doc("“高光时刻”数量") original_hl?: int64,
    @query @doc("“已保存”数量") manual_hl?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("高亮状态信息")
  high_light_stat?: Record<unknown>;

  @doc("高光列表")
  manual_highlight_list?: unknown[];

  @doc("内容")
  索引?: unknown;

  @doc("第一条高光信息")
  field_0?: Record<unknown>;

  @doc("某一条高光信息")
  _?: Record<unknown>;

  @doc("最后一条高光信息")
  i?: Record<unknown>;

  @doc("片段id")
  manual_id?: int64;

  @doc("片段标题")
  highlight_title?: string;

  @doc("开始时间戳")
  start_ts?: int64;

  @doc("结束时间戳")
  end_ts?: int64;

  @doc("保存者uid?")
  uid?: int64;

  @doc("主播uid")
  ruid?: int64;

  @doc("标记直播场次的key")
  live_key?: string;

}

/**
 * data.high_light_stat 对象
 */
@doc("data.high_light_stat 数据模型")
model Datahigh_light_stat {
  @doc("“高光时刻”数量")
  original_hl?: int64;

  @doc("“已保存”数量")
  manual_hl?: int64;

}

/**
 * 获取某个时间的视频帧
 */
@route("/xlive/app-blink/v1/anchorVideo/GetAnchorVideoKeyFrame")
@tag("Live")
interface 获取某个时间的视频帧 {
  @get
  @doc("获取某个时间的视频帧")
  获取某个时间的视频帧(
    @query @doc("CSRF Token（位于cookie）") csrf: string,
    @body @doc("标记直播场次的key") live_key: string,
    @body @doc("目标主播的uid") live_uid: int64,
    @body @doc("秒时间戳列表，用`,`分隔") time_list: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("`1`") ttl?: int64,
    @body @doc("信息本体") data?: Record<unknown>,
    @body @doc("指定时间的视频帧列表") list?: unknown[],
    @body @doc("时间戳") ts?: int64,
    @body @doc("该时间的视频帧") url?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("指定时间的视频帧列表")
  list?: unknown[];

  @doc("时间戳")
  ts?: int64;

  @doc("该时间的视频帧")
  url?: string;

}

/**
 * 手动保存高亮片段
 */
@route("/xlive/app-blink/v1/anchorVideo/UserManualSaveHighlight")
@tag("Live")
interface 手动保存高亮片段 {
  @get
  @doc("手动保存高亮片段")
  手动保存高亮片段(
    @body @doc("标记直播场次的key") live_key: string,
    @body @doc("开始时间戳") start_ts: int64,
    @body @doc("结束时间戳") end_ts: int64,
    @body @doc("目标主播的uid") live_uid: int64,
    @body @doc("CSRF Token（位于cookie）") csrf: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("`1`") ttl?: int64,
    @body @doc("信息本体") data?: Record<unknown>,
    @body @doc("`-1`") code?: int64,
    @body @doc("错误提示") message?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("`-1`")
  code?: int64;

  @doc("错误提示")
  message?: string;

}

/**
 * 投稿直播回放片段
 */
@route("/xlive/app-blink/v1/anchorVideo/AnchorPublishVideoSlice")
@tag("Live")
interface 投稿直播回放片段 {
  @get
  @doc("投稿直播回放片段")
  投稿直播回放片段(
    @body @doc("标记直播场次的key") live_key: string,
    @body @doc("开始时间戳") start_ts: int64,
    @body @doc("结束时间戳") end_ts: int64,
    @body @doc("切片标题") av_title: string,
    @body @doc("切片封面URL") av_cover: string,
    @body @doc("高光绑定") av_highlight: int64,
    @body @doc("是否携带字幕") with_subtitle: int64,
    @body @doc("是否带弹幕?") with_danmaku: int64,
    @body @doc("投稿携带下场直播提醒") with_reserve: int64,
    @body @doc("倍速投稿") av_speed: string,
    @body @doc("CSRF Token（位于cookie）") csrf: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("`1`") ttl?: int64,
    @body @doc("信息本体") data?: Record<unknown>,
    @body @doc("切片id") video_slice_id?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("切片id")
  video_slice_id?: int64;

}

/**
 * 给某位主播投稿直播回放片段
 */
@route("/xlive/web-room/v1/videoService/UserPublishOtherVideoSlice")
@tag("Live")
interface 给某位主播投稿直播回放片段 {
  @get
  @doc("给某位主播投稿直播回放片段")
  给某位主播投稿直播回放片段(
    @body @doc("目标主播的uid") live_uid: int64,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("`1`") ttl?: int64,
    @body @doc("信息本体") data?: Record<unknown>,
    @body @doc("切片id") video_slice_id?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("切片id")
  video_slice_id?: int64;

}

/**
 * 直播回放片段发布页面
 */
@route("/web-cut/quick-publish.html")
@tag("Live")
interface 直播回放片段发布页面 {
  @get
  @doc("直播回放片段发布页面")
  直播回放片段发布页面(
    @query @doc("直播开始时间") start_time: int64,
    @query @doc("直播结束时间") end_time: int64,
    @query @doc("标记直播场次的key") live_key: string,
    @query @doc("封面URL") cover: string,
    @query @doc("目标主播的uid") anchor_id: int64,
    @query @doc("目标主播的名称") anchor_name: int64,
  ): ApiResponse<unknown>;
}

/**
 * 直播回放剪辑页面
 */
@route("/web-cut/index.html")
@tag("Live")
interface 直播回放剪辑页面 {
  @get
  @doc("直播回放剪辑页面")
  直播回放剪辑页面(
    @query @doc("直播开始时间戳") start_time: int64,
    @query @doc("直播结束时间戳") end_time: int64,
    @query @doc("标记直播场次的key") live_key: string,
    @query @doc("回放剪辑id") draft_id: int64,
    @query @doc("(?)") init: int64,
    @query @doc("投稿携带下场直播提醒?") with_reserve: int64,
    @query @doc("目标主播的uid") anchor_id: int64,
  ): ApiResponse<unknown>;
}

/**
 * 某位主播的直播回放剪辑界面
 */
@route("/web-cut/replay-cut.html")
@tag("Live")
interface 某位主播的直播回放剪辑界面 {
  @get
  @doc("某位主播的直播回放剪辑界面")
  某位主播的直播回放剪辑界面(
    @query @doc("主播名称") anchor_name: string,
  ): ApiResponse<unknown>;
}
