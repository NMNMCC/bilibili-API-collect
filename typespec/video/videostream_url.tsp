import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Video;

/**
 * 获取视频流地址_web端
 */
@route("/x/player/wbi/playurl")
@tag("Video")
interface 获取视频流地址_web端 {
  @get
  @doc("获取视频流地址_web端")
  获取视频流地址_web端(
    @query @doc("稿件 avid") avid: int64,
    @query @doc("稿件 bvid") bvid: string,
    @query @doc("视频 cid") cid: int64,
    @query @doc("view-card<br />pre-load") gaia_source: string,
    @query @doc("true/false") isGaiaAvoided: boolean,
    @query @doc("视频清晰度选择") qn: int64,
    @query @doc("视频流格式标识") fnval: int64,
    @query @doc("0") fnver: int64,
    @query @doc("是否允许 4K 视频") fourk: int64,
    @query @doc("非必要") session?: string,
    @query @doc("非必要") otype?: string,
    @query @doc("非必要") type?: string,
    @query @doc("非必要") platform?: string,
    @query @doc("是否高画质") high_quality: int64,
    @query @doc("未登录高画质") try_look: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("数据本体") data?: unknown,
    @query @doc("(?)") v_voucher?: string,
    @query @doc("`local`？") from?: string,
    @query @doc("`suee`？") result?: string,
    @query @doc("空？") message?: string,
    @query @doc("清晰度标识") quality?: int64,
    @query @doc("视频格式") format?: string,
    @query @doc("视频长度") timelength?: int64,
    @query @doc("支持的全部格式") accept_format?: string,
    @query @doc("支持的清晰度列表（文字说明）") accept_description?: unknown[],
    @query @doc("支持的清晰度列表（代码）") accept_quality?: unknown[],
    @query @doc("默认选择视频流的编码id") video_codecid?: int64,
    @query @doc("`start`？") seek_param?: string,
    @query @doc("`offset`（DASH / FLV）？<br/> `second`（MP4）？") seek_type?: string,
    @query @doc("视频分段流信息") durl?: unknown[],
    @query @doc("DASH 流信息") dash?: Record<unknown>,
    @query @doc("支持格式的详细信息") support_formats?: unknown[],
    @query @doc("（？）") high_format?: null,
    @query @doc("上次播放进度") last_play_time?: int64,
    @query @doc("上次播放分P的 cid") last_play_cid?: int64,
    @query @doc("内容") 项?: unknown,
    @query @doc("分辨率名称1") field_0?: string,
    @query @doc("分辨率名称(n+1)") n?: string,
    @query @doc("……") __?: string,
    @query @doc("内容") 项?: unknown,
    @query @doc("分辨率代码1") field_0?: int64,
    @query @doc("分辨率代码(n+1)") n?: int64,
    @query @doc("……") __?: int64,
    @query @doc("内容") 项?: unknown,
    @query @doc("播放格式详细信息1") field_0?: Record<unknown>,
    @query @doc("播放格式详细信息(n+1)") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("视频清晰度代码") quality?: int64,
    @query @doc("视频格式") format?: string,
    @query @doc("格式描述") new_description?: string,
    @query @doc("格式描述") display_desc?: string,
    @query @doc("(?)") superscript?: string,
    @query @doc("可用编码格式列表") codecs?: unknown[],
    @query @doc("内容") 项?: unknown,
    @query @doc("例：av01.0.13M.08.0.110.01.01.01.0") field_0?: string,
    @query @doc("例子：avc1.640034") field_1?: string,
    @query @doc("例子：hev1.1.6.L153.90") field_2?: string,
    @query @doc("内容") 项?: unknown,
    @query @doc("视频分段 1 信息") field_0?: Record<unknown>,
    @query @doc("视频分段 (n+1) 信息") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("视频分段序号") order?: int64,
    @query @doc("视频长度") length?: int64,
    @query @doc("视频大小") size?: int64,
    @query @doc("（？）") ahead?: string,
    @query @doc("（？）") vhead?: string,
    @query @doc("默认流 URL") url?: string,
    @query @doc("备用视频流") backup_url?: unknown[],
    @query @doc("内容") 项?: unknown,
    @query @doc("备用流 URL 1") field_0?: string,
    @query @doc("备用流 URL (n+1)") n?: string,
    @query @doc("……") __?: string,
    @query @doc("视频长度") duration?: int64,
    @query @doc("1.5？") minBufferTime?: int64,
    @query @doc("1.5？") min_buffer_time?: int64,
    @query @doc("视频流信息") video?: unknown[],
    @query @doc("伴音流信息") audio?: unknown[],
    @query @doc("杜比全景声伴音信息") dolby?: Record<unknown>,
    @query @doc("无损音轨伴音信息") flac?: Record<unknown>,
    @query @doc("内容") 项?: unknown,
    @query @doc("视频码流 1") field_0?: Record<unknown>,
    @query @doc("视频码流（n+1）") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("内容") 项?: unknown,
    @query @doc("清晰度1") field_0?: Record<unknown>,
    @query @doc("清晰度（n+1）") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("音视频清晰度代码") id?: int64,
    @query @doc("默认流 URL") baseUrl?: string,
    @query @doc("**同上**") base_url?: string,
    @query @doc("备用流 URL") backupUrl?: unknown[],
    @query @doc("**同上**") backup_url?: unknown[],
    @query @doc("所需最低带宽") bandwidth?: int64,
    @query @doc("格式 mimetype 类型") mimeType?: string,
    @query @doc("**同上**") mime_type?: string,
    @query @doc("编码/音频类型") codecs?: string,
    @query @doc("视频宽度") width?: int64,
    @query @doc("视频高度") height?: int64,
    @query @doc("视频帧率") frameRate?: string,
    @query @doc("**同上**") frame_rate?: string,
    @query @doc("Sample Aspect Ratio（单个像素的宽高比）") sar?: string,
    @query @doc("Stream Access Point（流媒体访问位点）") startWithSap?: int64,
    @query @doc("**同上**") start_with_sap?: int64,
    @query @doc("见下表") SegmentBase?: Record<unknown>,
    @query @doc("**同上**") segment_base?: Record<unknown>,
    @query @doc("码流编码标识代码") codecid?: int64,
    @query @doc("内容") 项?: unknown,
    @query @doc("备用流 URL 1") field_0?: string,
    @query @doc("备用流 URL (n+1)") n?: string,
    @query @doc("……") __?: string,
    @query @doc("`${init_first}-${init_last}`") initialization?: string,
    @query @doc("`${sidx_first}-${sidx_last}`") index_range?: string,
    @query @doc("杜比音效类型") type?: int64,
    @query @doc("杜比伴音流列表") audio?: unknown[],
    @query @doc("内容") 项?: unknown,
    @query @doc("杜比伴音流信息") field_0?: Record<unknown>,
    @query @doc("内容") 项?: unknown,
    @query @doc("是否在播放器显示切换Hi-Res无损音轨按钮") display?: boolean,
    @query @doc("音频流信息") audio?: Record<unknown>,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("(?)")
  v_voucher?: string;

  @doc("`local`？")
  from?: string;

  @doc("`suee`？")
  result?: string;

  @doc("空？")
  message?: string;

  @doc("清晰度标识")
  quality?: int64;

  @doc("视频格式")
  format?: string;

  @doc("视频长度")
  timelength?: int64;

  @doc("支持的全部格式")
  accept_format?: string;

  @doc("支持的清晰度列表（文字说明）")
  accept_description?: unknown[];

  @doc("支持的清晰度列表（代码）")
  accept_quality?: unknown[];

  @doc("默认选择视频流的编码id")
  video_codecid?: int64;

  @doc("`start`？")
  seek_param?: string;

  @doc("`offset`（DASH / FLV）？<br/> `second`（MP4）？")
  seek_type?: string;

  @doc("支持格式的详细信息")
  support_formats?: unknown[];

  @doc("（？）")
  high_format?: null;

  @doc("上次播放进度")
  last_play_time?: int64;

  @doc("上次播放分P的 cid")
  last_play_cid?: int64;

  @doc("内容")
  项?: unknown;

  @doc("分辨率名称1")
  field_0?: string;

  @doc("分辨率名称(n+1)")
  n?: string;

  @doc("……")
  __?: string;

  @doc("内容")
  项?: unknown;

  @doc("分辨率代码1")
  field_0?: int64;

  @doc("分辨率代码(n+1)")
  n?: int64;

  @doc("……")
  __?: int64;

  @doc("内容")
  项?: unknown;

  @doc("播放格式详细信息1")
  field_0?: Record<unknown>;

  @doc("播放格式详细信息(n+1)")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("视频清晰度代码")
  quality?: int64;

  @doc("视频格式")
  format?: string;

  @doc("格式描述")
  new_description?: string;

  @doc("格式描述")
  display_desc?: string;

  @doc("(?)")
  superscript?: string;

  @doc("可用编码格式列表")
  codecs?: unknown[];

  @doc("内容")
  项?: unknown;

  @doc("例：av01.0.13M.08.0.110.01.01.01.0")
  field_0?: string;

  @doc("例子：avc1.640034")
  field_1?: string;

  @doc("例子：hev1.1.6.L153.90")
  field_2?: string;

  @doc("内容")
  项?: unknown;

  @doc("视频分段 1 信息")
  field_0?: Record<unknown>;

  @doc("视频分段 (n+1) 信息")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("视频分段序号")
  order?: int64;

  @doc("视频长度")
  length?: int64;

  @doc("视频大小")
  size?: int64;

  @doc("（？）")
  ahead?: string;

  @doc("（？）")
  vhead?: string;

  @doc("默认流 URL")
  url?: string;

  @doc("备用视频流")
  backup_url?: unknown[];

  @doc("内容")
  项?: unknown;

  @doc("备用流 URL 1")
  field_0?: string;

  @doc("备用流 URL (n+1)")
  n?: string;

  @doc("……")
  __?: string;

}

/**
 * dash 对象
 */
@doc("dash 数据模型")
model Dash {
  @doc("视频长度")
  duration?: int64;

  @doc("1.5？")
  minBufferTime?: int64;

  @doc("1.5？")
  min_buffer_time?: int64;

  @doc("视频流信息")
  video?: unknown[];

  @doc("伴音流信息")
  audio?: unknown[];

  @doc("杜比全景声伴音信息")
  dolby?: Record<unknown>;

  @doc("无损音轨伴音信息")
  flac?: Record<unknown>;

  @doc("内容")
  项?: unknown;

  @doc("视频码流 1")
  field_0?: Record<unknown>;

  @doc("视频码流（n+1）")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("内容")
  项?: unknown;

  @doc("清晰度1")
  field_0?: Record<unknown>;

  @doc("清晰度（n+1）")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("音视频清晰度代码")
  id?: int64;

  @doc("默认流 URL")
  baseUrl?: string;

  @doc("**同上**")
  base_url?: string;

  @doc("备用流 URL")
  backupUrl?: unknown[];

  @doc("**同上**")
  backup_url?: unknown[];

  @doc("所需最低带宽")
  bandwidth?: int64;

  @doc("格式 mimetype 类型")
  mimeType?: string;

  @doc("**同上**")
  mime_type?: string;

  @doc("编码/音频类型")
  codecs?: string;

  @doc("**同上**")
  frame_rate?: string;

  @doc("Sample Aspect Ratio（单个像素的宽高比）")
  sar?: string;

  @doc("Stream Access Point（流媒体访问位点）")
  startWithSap?: int64;

  @doc("**同上**")
  start_with_sap?: int64;

  @doc("见下表")
  SegmentBase?: Record<unknown>;

  @doc("**同上**")
  segment_base?: Record<unknown>;

  @doc("码流编码标识代码")
  codecid?: int64;

  @doc("内容")
  项?: unknown;

  @doc("备用流 URL 1")
  field_0?: string;

  @doc("备用流 URL (n+1)")
  n?: string;

  @doc("……")
  __?: string;

}

/**
 * SegmentBase 对象
 */
@doc("SegmentBase 数据模型")
model Segmentbase {
  @doc("`${init_first}-${init_last}`")
  initialization?: string;

  @doc("`${sidx_first}-${sidx_last}`")
  index_range?: string;

}

/**
 * dolby 对象
 */
@doc("dolby 数据模型")
model Dolby {
  @doc("杜比音效类型")
  type?: int64;

  @doc("杜比伴音流列表")
  audio?: unknown[];

}

/**
 * dolby 对象
 */
@doc("dolby 数据模型")
model Dolby {
  @doc("内容")
  项?: unknown;

  @doc("杜比伴音流信息")
  field_0?: Record<unknown>;

}

/**
 * flac 对象
 */
@doc("flac 数据模型")
model Flac {
  @doc("内容")
  项?: unknown;

  @doc("是否在播放器显示切换Hi-Res无损音轨按钮")
  display?: boolean;

  @doc("音频流信息")
  audio?: Record<unknown>;

}
