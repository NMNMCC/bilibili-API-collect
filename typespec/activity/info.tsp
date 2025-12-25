import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Activity;

/**
 * 主题信息
 */
@route("/x/activity/subject/info")
@tag("Activity")
interface 主题信息 {
  @get
  @doc("主题信息")
  主题信息(
    @query @doc("-") _?: unknown,
    @query @doc("活动 id") sid: int64,
    @query @doc("来源视频 bvid") bvid: string,
    @query @doc("-") _?: unknown,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("数据本体") data?: Record<unknown>,
    @query @doc("-") _?: unknown,
    @query @doc("活动 id") id?: int64,
    @query @doc("0") oid?: int64,
    @query @doc("13") type?: int64,
    @query @doc("1") state?: int64,
    @query @doc("开始时间") stime?: int64,
    @query @doc("结束时间") etime?: int64,
    @query @doc("创建时间") ctime?: int64,
    @query @doc("修改时间") mtime?: int64,
    @query @doc("活动名称") name?: string,
    @query @doc("活动链接") act_url?: string,
    @query @doc("?") lstime?: int64,
    @query @doc("?") letime?: int64,
    @query @doc("封面图片") cover?: string,
    @query @doc("简介") dic?: string,
    @query @doc("H5 封面") h5_cover?: string,
    @query @doc("Android 端活动链接") android_url?: string,
    @query @doc("iOS 端活动链接") ios_url?: string,
    @query @doc("子活动 id?") child_sids?: string,
    @query @doc("日历?") calendar?: string,
    @query @doc("?") lid?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("-")
  _?: unknown;

  @doc("活动 id")
  id?: int64;

  @doc("0")
  oid?: int64;

  @doc("13")
  type?: int64;

  @doc("1")
  state?: int64;

  @doc("开始时间")
  stime?: int64;

  @doc("结束时间")
  etime?: int64;

  @doc("创建时间")
  ctime?: int64;

  @doc("修改时间")
  mtime?: int64;

  @doc("活动名称")
  name?: string;

  @doc("活动链接")
  act_url?: string;

  @doc("?")
  lstime?: int64;

  @doc("?")
  letime?: int64;

  @doc("封面图片")
  cover?: string;

  @doc("简介")
  dic?: string;

  @doc("H5 封面")
  h5_cover?: string;

  @doc("Android 端活动链接")
  android_url?: string;

  @doc("iOS 端活动链接")
  ios_url?: string;

  @doc("子活动 id?")
  child_sids?: string;

  @doc("日历?")
  calendar?: string;

  @doc("?")
  lid?: int64;

}
