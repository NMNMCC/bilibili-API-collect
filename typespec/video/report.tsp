import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Video;

/**
 * 上报观看进度（双端）
 */
@route("/x/v2/history/report")
@tag("Video")
interface 上报观看进度双端 {
  @post
  @doc("上报观看进度（双端）")
  上报观看进度双端(
    @body @doc("APP登录Token") access_key: string,
    @body @doc("稿件avid") aid: int64,
    @body @doc("视频cid") cid: int64,
    @body @doc("观看进度") progress: int64,
    @body @doc("平台标识") platform: string,
    @body @doc("CSRF Token（位于cookie）") csrf: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
  ): ApiResponse<unknown>;
}

/**
 * 上报视频播放心跳（web端）
 */
@route("/x/click-interface/web/heartbeat")
@tag("Video")
interface 上报视频播放心跳web端 {
  @post
  @doc("上报视频播放心跳（web端）")
  上报视频播放心跳web端(
    @query @doc("参见请求正文同名无`w_`前缀参数") w_start_ts: int64,
    @query @doc("参见请求正文同名无`w_`前缀参数") w_mid: int64,
    @query @doc("参见请求正文同名无`w_`前缀参数") w_aid: int64,
    @query @doc("2") w_dt: int64,
    @query @doc("参见请求正文同名无`w_`前缀参数") w_realtime: int64,
    @query @doc("参见请求正文同名无`w_`前缀参数") w_playedtime: int64,
    @query @doc("参见请求正文同名无`w_`前缀参数") w_real_played_time: int64,
    @query @doc("参见请求正文同名无`w_`前缀参数") w_video_duration: int64,
    @query @doc("参见请求正文同名无`w_`前缀参数") w_last_play_progress_time: int64,
    @query @doc("网页位置") web_location: int64,
    @query @doc("WBI 签名") w_rid: int64,
    @query @doc("UNIX 秒级时间戳") wts: int64,
    @body @doc("稿件avid") aid: int64,
    @body @doc("稿件bvid") bvid: string,
    @body @doc("视频cid") cid: int64,
    @body @doc("番剧epid") epid: int64,
    @body @doc("番剧ssid") sid: int64,
    @body @doc("当前用户mid") mid: int64,
    @body @doc("视频播放进度") played_time: int64,
    @body @doc("本轮页面会话真实播放时间") realtime: int64,
    @body @doc("本轮页面会话真实视频播放持续时间") real_played_time: int64,
    @body @doc("与请求头 Referer 字段相同") refer_url: string,
    @body @doc("视频清晰度") quality: int64,
    @body @doc("视频时长") video_duration: int64,
    @body @doc("play_time 与 本轮页面会话开始时 played_time  之和") last_play_progress_time: int64,
    @body @doc("本轮页面会话所有最大 last_play_progress_time 与 本轮页面会话开始时 played_time  之和") max_play_progress_time: int64,
    @body @doc("开始播放时刻") start_ts: int64,
    @body @doc("视频类型") type: int64,
    @body @doc("剧集副类型") sub_type: int64,
    @body @doc("2") dt: int64,
    @body @doc("0") outer: int64,
    @body @doc("333.788.0.0") spmid: string,
    @body @doc("播放来源?") from_spmid: string,
    @body @doc("会话信息?") session: string,
    @body @doc("额外信息, 如播放器版本") extra: Record<unknown>,
    @body @doc("播放动作") play_type: int64,
    @body @doc("CSRF Token (即 Cookie 中 bili_jct)") csrf: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
  ): ApiResponse<unknown>;
}

/**
 * 开始观看视频 (web端)
 */
@route("/x/click-interface/click/web/h5")
@tag("Video")
interface 开始观看视频Web端 {
  @post
  @doc("开始观看视频 (web端)")
  开始观看视频Web端(
    @query @doc("稿件 aid") w_aid: int64,
    @query @doc("视频分 P 编号") w_part: int64,
    @query @doc("点击时间戳?") w_ftime: int64,
    @query @doc("开始播放时间戳?") w_stime: int64,
    @query @doc("视频类型") w_type: int64,
    @query @doc("网页位置?") web_location: int64,
    @query @doc("WBI 签名") w_rid: int64,
    @query @doc("UNIX 秒级时间戳") wts: int64,
    @body @doc("当前用户 mid") mid: int64,
    @body @doc("稿件 aid") aid: int64,
    @body @doc("视频 cid") cid: int64,
    @body @doc("视频分 P 编号") part: int64,
    @body @doc("当前用户等级") lv: int64,
    @body @doc("同 URL 参数中带有 `w_` 前缀的同名参数") ftime: int64,
    @body @doc("同 URL 参数中带有 `w_` 前缀的同名参数") stime: int64,
    @body @doc("视频类型") type: int64,
    @body @doc("视频子类型") sub_type: int64,
    @body @doc("与请求头 Referer 字段相同") referer_url: string,
    @body @doc("0") outer: int64,
    @body @doc("333.788.0.0") spmid: string,
    @body @doc("播放来源?") from_spmid: string,
    @body @doc("会话信息?") session: string,
    @body @doc("CSRF Token (即 Cookie 中 bili_jct)") csrf: string,
    @body @doc("-") _?: unknown,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
  ): ApiResponse<unknown>;
}
