import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Bangumi;

/**
 * 获取番剧视频流URL
 */
@route("/pgc/player/web/playurl")
@tag("Bangumi")
interface 获取番剧视频流url {
  @get
  @doc("获取番剧视频流URL")
  获取番剧视频流url(
    @query @doc("稿件avid") avid: int64,
    @query @doc("稿件bvid") bvid: string,
    @query @doc("稿件epid") ep_id: int64,
    @query @doc("视频cid") cid: int64,
    @query @doc("视频清晰度选择") qn: int64,
    @query @doc("视频获取方式选择") fnval: int64,
    @query @doc("0") fnver: int64,
    @query @doc("是否允许4K视频") fourk: int64,
    @query @doc("非必要") session?: string,
    @query @doc("BROWSER") from_client: string,
    @query @doc("2") drm_tech_type: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("数据本体") result?: unknown,
    @query @doc("0") code?: int64,
    @query @doc("0") is_preview?: int64,
    @query @doc("请求时提供的fnver") fnver?: int64,
    @query @doc("请求时提供的fnval") fnval?: int64,
    @query @doc("true") video_project?: boolean,
    @query @doc("视频流类型（DASH、FLV、MP4）") type?: string,
    @query @doc("是否可以承包") bp?: int64,
    @query @doc("当前用户大会员类型") vip_type?: int64,
    @query @doc("当前用户大会员状态") vip_status?: int64,
    @query @doc("false") is_drm?: boolean,
    @query @doc("0") no_rexcode?: int64,
    @query @doc("false") has_paid?: boolean,
    @query @doc("2") status?: int64,
    @query @doc("local") from?: string,
    @query @doc("suee") result?: string,
    @query @doc("空") message?: string,
    @query @doc("当前的视频分辨率代码") quality?: int64,
    @query @doc("视频格式") format?: string,
    @query @doc("视频长度") timelength?: int64,
    @query @doc("视频支持的全部格式") accept_format?: string,
    @query @doc("视频支持的分辨率列表") accept_description?: unknown[],
    @query @doc("视频支持的分辨率代码列表") accept_quality?: unknown[],
    @query @doc("默认选择视频流的编码id") video_codecid?: int64,
    @query @doc("固定值：start") seek_param?: string,
    @query @doc("offset（dash、flv）<br/> second（mp4）") seek_type?: string,
    @query @doc("视频分段") durl?: unknown[],
    @query @doc("dash音视频流信息") dash?: Record<unknown>,
    @query @doc("支持格式的详细信息") support_formats?: unknown[],
    @query @doc("空，待补充") clip_info_list?: unknown[],
    @query @doc("备案登记信息") record_info?: Record<unknown>,
    @query @doc("内容") 项?: unknown,
    @query @doc("分辨率名称1") field_0?: string,
    @query @doc("分辨率名称(n+1)") n?: string,
    @query @doc("……") __?: string,
    @query @doc("内容") 项?: unknown,
    @query @doc("分辨率代码1") field_0?: string,
    @query @doc("分辨率代码(n+1)") n?: string,
    @query @doc("……") __?: string,
    @query @doc("内容") 项?: unknown,
    @query @doc("播放格式详细信息1") field_0?: Record<unknown>,
    @query @doc("播放格式详细信息(n+1)") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("视频清晰度代码") quality?: int64,
    @query @doc("视频格式") format?: string,
    @query @doc("格式描述") new_description?: string,
    @query @doc("格式描述") description?: string,
    @query @doc("格式描述") display_desc?: string,
    @query @doc("(?)") superscript?: string,
    @query @doc("编码格式列表") codecs?: unknown[],
    @query @doc("需要登录") need_login?: boolean,
    @query @doc("需要大会员") need_vip?: boolean,
    @query @doc("内容") 项?: unknown,
    @query @doc("编码格式") field_0?: string,
    @query @doc("编码格式") field_1?: string,
    @query @doc("内容") 项?: unknown,
    @query @doc("空串") record_icon?: string,
    @query @doc("显示文案") record?: string,
    @query @doc("内容") 项?: unknown,
    @query @doc("视频分段1信息") field_0?: Record<unknown>,
    @query @doc("视频分段(n+1)信息") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("视频分段序号") order?: int64,
    @query @doc("视频长度") length?: int64,
    @query @doc("视频大小") size?: int64,
    @query @doc("空") vhead?: string,
    @query @doc("视频流url") url?: string,
    @query @doc("备用视频流") backup_url?: unknown[],
    @query @doc("内容") 项?: unknown,
    @query @doc("备用视频流url 1") field_0?: string,
    @query @doc("备用视频流url (n+1)") n?: string,
    @query @doc("……") __?: string,
  ): ApiResponse<Result>;
}

/**
 * result 对象
 */
@doc("result 数据模型")
model Result {
  @doc("0")
  code?: int64;

  @doc("0")
  is_preview?: int64;

  @doc("请求时提供的fnver")
  fnver?: int64;

  @doc("请求时提供的fnval")
  fnval?: int64;

  @doc("true")
  video_project?: boolean;

  @doc("视频流类型（DASH、FLV、MP4）")
  type?: string;

  @doc("是否可以承包")
  bp?: int64;

  @doc("当前用户大会员类型")
  vip_type?: int64;

  @doc("当前用户大会员状态")
  vip_status?: int64;

  @doc("false")
  is_drm?: boolean;

  @doc("0")
  no_rexcode?: int64;

  @doc("false")
  has_paid?: boolean;

  @doc("2")
  status?: int64;

  @doc("local")
  from?: string;

  @doc("suee")
  result?: string;

  @doc("空")
  message?: string;

  @doc("当前的视频分辨率代码")
  quality?: int64;

  @doc("视频格式")
  format?: string;

  @doc("视频长度")
  timelength?: int64;

  @doc("视频支持的全部格式")
  accept_format?: string;

  @doc("视频支持的分辨率列表")
  accept_description?: unknown[];

  @doc("视频支持的分辨率代码列表")
  accept_quality?: unknown[];

  @doc("默认选择视频流的编码id")
  video_codecid?: int64;

  @doc("固定值：start")
  seek_param?: string;

  @doc("offset（dash、flv）<br/> second（mp4）")
  seek_type?: string;

  @doc("视频分段")
  durl?: unknown[];

  @doc("dash音视频流信息")
  dash?: Record<unknown>;

  @doc("支持格式的详细信息")
  support_formats?: unknown[];

  @doc("空，待补充")
  clip_info_list?: unknown[];

  @doc("备案登记信息")
  record_info?: Record<unknown>;

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
  field_0?: string;

  @doc("分辨率代码(n+1)")
  n?: string;

  @doc("……")
  __?: string;

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
  description?: string;

  @doc("格式描述")
  display_desc?: string;

  @doc("(?)")
  superscript?: string;

  @doc("编码格式列表")
  codecs?: unknown[];

  @doc("需要登录")
  need_login?: boolean;

  @doc("需要大会员")
  need_vip?: boolean;

  @doc("内容")
  项?: unknown;

  @doc("编码格式")
  field_0?: string;

  @doc("编码格式")
  field_1?: string;

}

/**
 * record_info 对象
 */
@doc("record_info 数据模型")
model Record_info {
  @doc("内容")
  项?: unknown;

  @doc("空串")
  record_icon?: string;

  @doc("显示文案")
  record?: string;

  @doc("内容")
  项?: unknown;

  @doc("视频分段1信息")
  field_0?: Record<unknown>;

  @doc("视频分段(n+1)信息")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("视频分段序号")
  order?: int64;

  @doc("视频长度")
  length?: int64;

  @doc("视频大小")
  size?: int64;

  @doc("空")
  vhead?: string;

  @doc("视频流url")
  url?: string;

  @doc("备用视频流")
  backup_url?: unknown[];

  @doc("内容")
  项?: unknown;

  @doc("备用视频流url 1")
  field_0?: string;

  @doc("备用视频流url (n+1)")
  n?: string;

  @doc("……")
  __?: string;

}
