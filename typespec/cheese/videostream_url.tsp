import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Cheese;

/**
 * 获取课程视频流URL（web端）
 */
@route("/pugv/player/web/playurl")
@tag("Cheese")
interface 获取课程视频流urlweb端 {
  @get
  @doc("获取课程视频流URL（web端）")
  获取课程视频流urlweb端(
    @query @doc("课程avid") avid: int64,
    @query @doc("课程epid") ep_id: int64,
    @query @doc("视频cid") cid: int64,
    @query @doc("视频清晰度选择") qn: int64,
    @query @doc("视频流版本") fnver: int64,
    @query @doc("视频流类型") fnval: int64,
    @query @doc("是否允许4K视频") fourk: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("数据本体") data?: Record<unknown>,
    @query @doc("视频支持的分辨率的格式") accept_format?: string,
    @query @doc("0") code?: int64,
    @query @doc("视频分段") durl?: unknown[],
    @query @doc("start") seek_param?: string,
    @query @doc("0") no_rexcode?: int64,
    @query @doc("视频格式") format?: string,
    @query @doc("0") fnval?: int64,
    @query @doc("true") video_project?: boolean,
    @query @doc("0") fnver?: int64,
    @query @doc("空") message?: string,
    @query @doc("视频格式") type?: string,
    @query @doc("视频支持的分辨率列表") accept_quality?: unknown[],
    @query @doc("视频分辨率代码") quality?: int64,
    @query @doc("视频长度") timelength?: int64,
    @query @doc("suee") result?: string,
    @query @doc("offset") seek_type?: string,
    @query @doc("false") has_paid?: boolean,
    @query @doc("视频分辨率详细列表") supportFormats?: unknown[],
    @query @doc("local") from?: string,
    @query @doc("？？？") video_codecid?: int64,
    @query @doc("视频支持的分辨率列表") accept_description?: unknown[],
    @query @doc("0") status?: int64,
    @query @doc("内容") 项?: unknown,
    @query @doc("视频分段1信息") field_0?: Record<unknown>,
    @query @doc("视频分段(n+1)信息") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("视频大小") size?: int64,
    @query @doc("空") ahead?: string,
    @query @doc("视频长度") length?: int64,
    @query @doc("空") vhead?: string,
    @query @doc("备用视频流") backup_url?: unknown[],
    @query @doc("视频流url") url?: string,
    @query @doc("视频分段序号") order?: int64,
    @query @doc("内容") 项?: unknown,
    @query @doc("备用视频流url") field_0?: string,
    @query @doc("内容") 项?: unknown,
    @query @doc("分辨率详细信息1") field_0?: Record<unknown>,
    @query @doc("分辨率详细信息(n+1)") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("分辨率名称") format?: string,
    @query @doc("分辨率备注") description?: unknown,
    @query @doc("分辨率代码") quality?: int64,
    @query @doc("内容") 项?: unknown,
    @query @doc("分辨率名称1") field_0?: string,
    @query @doc("分辨率名称(n+1)") n?: string,
    @query @doc("……") __?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("视频支持的分辨率的格式")
  accept_format?: string;

  @doc("0")
  code?: int64;

  @doc("视频分段")
  durl?: unknown[];

  @doc("start")
  seek_param?: string;

  @doc("0")
  no_rexcode?: int64;

  @doc("视频格式")
  format?: string;

  @doc("0")
  fnval?: int64;

  @doc("true")
  video_project?: boolean;

  @doc("0")
  fnver?: int64;

  @doc("空")
  message?: string;

  @doc("视频格式")
  type?: string;

  @doc("视频支持的分辨率列表")
  accept_quality?: unknown[];

  @doc("视频分辨率代码")
  quality?: int64;

  @doc("视频长度")
  timelength?: int64;

  @doc("suee")
  result?: string;

  @doc("offset")
  seek_type?: string;

  @doc("false")
  has_paid?: boolean;

  @doc("视频分辨率详细列表")
  supportFormats?: unknown[];

  @doc("local")
  from?: string;

  @doc("？？？")
  video_codecid?: int64;

  @doc("视频支持的分辨率列表")
  accept_description?: unknown[];

  @doc("0")
  status?: int64;

  @doc("内容")
  项?: unknown;

  @doc("视频分段1信息")
  field_0?: Record<unknown>;

  @doc("视频分段(n+1)信息")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("视频大小")
  size?: int64;

  @doc("空")
  ahead?: string;

  @doc("视频长度")
  length?: int64;

  @doc("空")
  vhead?: string;

  @doc("备用视频流")
  backup_url?: unknown[];

  @doc("视频流url")
  url?: string;

  @doc("视频分段序号")
  order?: int64;

  @doc("内容")
  项?: unknown;

  @doc("备用视频流url")
  field_0?: string;

  @doc("内容")
  项?: unknown;

  @doc("分辨率详细信息1")
  field_0?: Record<unknown>;

  @doc("分辨率详细信息(n+1)")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("分辨率名称")
  format?: string;

  @doc("分辨率备注")
  description?: unknown;

  @doc("分辨率代码")
  quality?: int64;

  @doc("内容")
  项?: unknown;

  @doc("分辨率名称1")
  field_0?: string;

  @doc("分辨率名称(n+1)")
  n?: string;

  @doc("……")
  __?: string;

}
