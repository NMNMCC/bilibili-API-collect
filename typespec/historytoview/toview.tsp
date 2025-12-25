import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Historytoview;

/**
 * 视频添加稍后再看
 */
@route("/x/v2/history/toview/add")
@tag("Historytoview")
interface 视频添加稍后再看 {
  @post
  @doc("视频添加稍后再看")
  视频添加稍后再看(
    @body @doc("稿件avid") aid: int64,
    @body @doc("稿件bvid") bvid: string,
    @body @doc("CSRF Token（位于cookie）") csrf: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
  ): ApiResponse<unknown>;
}

/**
 * 添加频道中所有视频到稍后再看
 */
@route("/ajax/channel/addAllToView")
@tag("Historytoview")
interface 添加频道中所有视频到稍后再看 {
  @post
  @doc("添加频道中所有视频到稍后再看")
  添加频道中所有视频到稍后再看(
    @body @doc("目标频道id") cid: int64,
    @body @doc("目标频道所属的用户mid") mid: int64,
    @body @doc("CSRF Token（位于cookie）") csrf: string,
    @body @doc("是否成功") status?: boolean,
    @body @doc("错误信息") data?: string,
  ): ApiResponse<unknown>;
}

/**
 * 获取稍后再看视频列表
 */
@route("/x/v2/history/toview")
@tag("Historytoview")
interface 获取稍后再看视频列表 {
  @get
  @doc("获取稍后再看视频列表")
  获取稍后再看视频列表(
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("数据本体") data?: unknown,
    @query @doc("稍后再看视频数") count?: int64,
    @query @doc("稍后再看视频列表") list?: unknown[],
    @query @doc("内容") 项?: unknown,
    @query @doc("稍后再看1") field_0?: Record<unknown>,
    @query @doc("稍后再看(n+1)") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("最后一项") field_99?: Record<unknown>,
    @query @doc("稿件avid") aid?: int64,
    @query @doc("稿件分P总数") videos?: int64,
    @query @doc("分区tid") tid?: int64,
    @query @doc("子分区名称") tname?: string,
    @query @doc("是否转载") copyright?: int64,
    @query @doc("稿件封面图片url") pic?: string,
    @query @doc("稿件标题") title?: string,
    @query @doc("稿件发布时间") pubdate?: int64,
    @query @doc("用户提交稿件的时间") ctime?: int64,
    @query @doc("视频简介") desc?: string,
    @query @doc("视频状态") state?: int64,
    @query @doc("~~稿件属性位配置~~") __attribute___仅做历史性保留_?: unknown,
    @query @doc("稿件总时长（所有分P）") duration?: int64,
    @query @doc("稿件属性标志") rights?: Record<unknown>,
    @query @doc("稿件UP主信息") owner?: Record<unknown>,
    @query @doc("稿件状态数") stat?: Record<unknown>,
    @query @doc("视频同步发布的的动态的文字内容") dynamic?: string,
    @query @doc("稿件1P分辨率") dimension?: Record<unknown>,
    @query @doc("稿件分P数") count?: int64,
    @query @doc("视频cid") cid?: int64,
    @query @doc("观看进度时间") progress?: int64,
    @query @doc("添加时间") add_at?: int64,
    @query @doc("稿件bvid") bvid?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("稍后再看视频数")
  count?: int64;

  @doc("稍后再看视频列表")
  list?: unknown[];

  @doc("内容")
  项?: unknown;

  @doc("稍后再看1")
  field_0?: Record<unknown>;

  @doc("稍后再看(n+1)")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("最后一项")
  field_99?: Record<unknown>;

  @doc("稿件avid")
  aid?: int64;

  @doc("稿件分P总数")
  videos?: int64;

  @doc("分区tid")
  tid?: int64;

  @doc("子分区名称")
  tname?: string;

  @doc("是否转载")
  copyright?: int64;

  @doc("稿件封面图片url")
  pic?: string;

  @doc("稿件标题")
  title?: string;

  @doc("稿件发布时间")
  pubdate?: int64;

  @doc("用户提交稿件的时间")
  ctime?: int64;

  @doc("视频简介")
  desc?: string;

  @doc("视频状态")
  state?: int64;

  @doc("稿件总时长（所有分P）")
  duration?: int64;

}

/**
 * rights 对象
 */
@doc("rights 数据模型")
model Rights {
}

/**
 * owner 对象
 */
@doc("owner 数据模型")
model Owner {
}

/**
 * stat 对象
 */
@doc("stat 数据模型")
model Stat {
  @doc("视频同步发布的的动态的文字内容")
  dynamic?: string;

}

/**
 * dimension 对象
 */
@doc("dimension 数据模型")
model Dimension {
  @doc("稿件分P数")
  count?: int64;

  @doc("视频cid")
  cid?: int64;

  @doc("观看进度时间")
  progress?: int64;

  @doc("添加时间")
  add_at?: int64;

  @doc("稿件bvid")
  bvid?: string;

}

/**
 * 删除稍后再看视频
 */
@route("/x/v2/history/toview/del")
@tag("Historytoview")
interface 删除稍后再看视频 {
  @post
  @doc("删除稍后再看视频")
  删除稍后再看视频(
    @body @doc("是否删除所有已观看的视频") viewed: boolean,
    @body @doc("删除的目标记录的avid") aid: int64,
    @body @doc("CSRF Token（位于cookie）") csrf: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
  ): ApiResponse<unknown>;
}

/**
 * 清空稍后再看视频列表
 */
@route("/x/v2/history/toview/clear")
@tag("Historytoview")
interface 清空稍后再看视频列表 {
  @post
  @doc("清空稍后再看视频列表")
  清空稍后再看视频列表(
    @body @doc("CSRF Token（位于cookie）") csrf: int64,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
  ): ApiResponse<unknown>;
}
