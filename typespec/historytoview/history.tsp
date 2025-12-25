import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Historytoview;

/**
 * 获取历史记录列表_web端
 */
@route("/x/web-interface/history/cursor")
@tag("Historytoview")
interface 获取历史记录列表_web端 {
  @get
  @doc("获取历史记录列表_web端")
  获取历史记录列表_web端(
    @query @doc("历史记录截止目标 id") max: int64,
    @query @doc("历史记录截止目标业务类型") business: string,
    @query @doc("历史记录截止时间") view_at: int64,
    @query @doc("历史记录分类筛选") type: string,
    @query @doc("每页项数") ps: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("历史记录列表") data?: unknown[],
    @query @doc("历史记录页面信息") cursor?: Record<unknown>,
    @query @doc("历史记录筛选类型") tab?: unknown[],
    @query @doc("分段历史记录列表") list?: unknown[],
    @query @doc("最后一项目标 id") max?: int64,
    @query @doc("最后一项时间节点") view_at?: int64,
    @query @doc("最后一项业务类型") business?: string,
    @query @doc("每页项数") ps?: int64,
    @query @doc("内容") 项?: unknown,
    @query @doc("历史记录筛选类型 1") field_0?: Record<unknown>,
    @query @doc("历史记录筛选类型 2") field_1?: Record<unknown>,
    @query @doc("历史记录筛选类型 3") field_2?: Record<unknown>,
    @query @doc("类型") type?: string,
    @query @doc("类型名") name?: string,
    @query @doc("内容") 项?: unknown,
    @query @doc("历史记录 1") field_0?: Record<unknown>,
    @query @doc("历史记录 (n+1)") n?: Record<unknown>,
    @query @doc("条目标题") title?: string,
    @query @doc("条目副标题") long_title?: string,
    @query @doc("条目封面图 url") cover?: string,
    @query @doc("条目封面图组") covers?: unknown,
    @query @doc("重定向 url") uri?: string,
    @query @doc("条目详细信息") history?: Record<unknown>,
    @query @doc("视频分 P 数目") videos?: int64,
    @query @doc("UP 主昵称") author_name?: string,
    @query @doc("UP 主头像 url") author_face?: string,
    @query @doc("UP 主 mid") author_mid?: int64,
    @query @doc("查看时间") view_at?: int64,
    @query @doc("视频观看进度") progress?: int64,
    @query @doc("角标文案") badge?: string,
    @query @doc("分 P 标题") show_title?: string,
    @query @doc("视频总时长") duration?: int64,
    @query @doc("(?)") current?: string,
    @query @doc("总计分集数") total?: int64,
    @query @doc("最新一话 / 最新一 P 标识") new_desc?: string,
    @query @doc("是否已完结") is_finish?: int64,
    @query @doc("是否收藏") is_fav?: int64,
    @query @doc("条目目标 id") kid?: int64,
    @query @doc("子分区名") tag_name?: string,
    @query @doc("直播状态") live_status?: int64,
    @query @doc("内容") 项?: unknown,
    @query @doc("封面图片 1") field_0?: string,
    @query @doc("封面图片 (n+1)") n?: string,
    @query @doc("……") __?: string,
    @query @doc("目标id") oid?: int64,
    @query @doc("剧集epid") epid?: int64,
    @query @doc("稿件bvid") bvid?: string,
    @query @doc("观看到的视频分P数") page?: int64,
    @query @doc("观看到的对象id") cid?: int64,
    @query @doc("观看到的视频分 P 标题") part?: string,
    @query @doc("业务类型") business?: string,
    @query @doc("记录查看的平台代码") dt?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("历史记录页面信息")
  cursor?: Record<unknown>;

  @doc("历史记录筛选类型")
  tab?: unknown[];

  @doc("分段历史记录列表")
  list?: unknown[];

}

/**
 * cursor 对象
 */
@doc("cursor 数据模型")
model Cursor {
  @doc("最后一项目标 id")
  max?: int64;

  @doc("最后一项时间节点")
  view_at?: int64;

  @doc("最后一项业务类型")
  business?: string;

  @doc("每页项数")
  ps?: int64;

  @doc("内容")
  项?: unknown;

  @doc("历史记录筛选类型 1")
  field_0?: Record<unknown>;

  @doc("历史记录筛选类型 2")
  field_1?: Record<unknown>;

  @doc("历史记录筛选类型 3")
  field_2?: Record<unknown>;

  @doc("类型")
  type?: string;

  @doc("类型名")
  name?: string;

  @doc("内容")
  项?: unknown;

  @doc("历史记录 1")
  field_0?: Record<unknown>;

  @doc("历史记录 (n+1)")
  n?: Record<unknown>;

  @doc("条目标题")
  title?: string;

  @doc("条目副标题")
  long_title?: string;

  @doc("条目封面图 url")
  cover?: string;

  @doc("条目封面图组")
  covers?: unknown;

  @doc("重定向 url")
  uri?: string;

  @doc("条目详细信息")
  history?: Record<unknown>;

  @doc("视频分 P 数目")
  videos?: int64;

  @doc("UP 主昵称")
  author_name?: string;

  @doc("UP 主头像 url")
  author_face?: string;

  @doc("UP 主 mid")
  author_mid?: int64;

  @doc("查看时间")
  view_at?: int64;

  @doc("视频观看进度")
  progress?: int64;

  @doc("角标文案")
  badge?: string;

  @doc("分 P 标题")
  show_title?: string;

  @doc("视频总时长")
  duration?: int64;

  @doc("(?)")
  current?: string;

  @doc("总计分集数")
  total?: int64;

  @doc("最新一话 / 最新一 P 标识")
  new_desc?: string;

  @doc("是否已完结")
  is_finish?: int64;

  @doc("是否收藏")
  is_fav?: int64;

  @doc("条目目标 id")
  kid?: int64;

  @doc("子分区名")
  tag_name?: string;

  @doc("直播状态")
  live_status?: int64;

  @doc("内容")
  项?: unknown;

  @doc("封面图片 1")
  field_0?: string;

  @doc("封面图片 (n+1)")
  n?: string;

  @doc("……")
  __?: string;

}

/**
 * history 对象
 */
@doc("history 数据模型")
model History {
  @doc("目标id")
  oid?: int64;

  @doc("剧集epid")
  epid?: int64;

  @doc("稿件bvid")
  bvid?: string;

  @doc("观看到的视频分P数")
  page?: int64;

  @doc("观看到的对象id")
  cid?: int64;

  @doc("观看到的视频分 P 标题")
  part?: string;

  @doc("业务类型")
  business?: string;

  @doc("记录查看的平台代码")
  dt?: int64;

}

/**
 * 获取视频观看历史记录_web端旧版
 */
@route("/x/v2/history")
@tag("Historytoview")
interface 获取视频观看历史记录_web端旧版 {
  @get
  @doc("获取视频观看历史记录_web端旧版")
  获取视频观看历史记录_web端旧版(
    @query @doc("页码") pn: int64,
    @query @doc("每页项数") ps: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("历史记录列表") data?: unknown[],
    @query @doc("内容") 项?: unknown,
    @query @doc("历史观看1") field_0?: Record<unknown>,
    @query @doc("历史观看(n+1)") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("稿件avid") aid?: int64,
    @query @doc("视频分P总数") videos?: int64,
    @query @doc("分区tid") tid?: int64,
    @query @doc("子分区名称") tname?: string,
    @query @doc("是否转载") copyright?: int64,
    @query @doc("视频封面图片url") pic?: string,
    @query @doc("稿件标题") title?: string,
    @query @doc("稿件发布时间") pubdate?: int64,
    @query @doc("用户提交稿件的时间") ctime?: int64,
    @query @doc("视频简介") desc?: string,
    @query @doc("视频状态") state?: int64,
    @query @doc("~~稿件属性位配置~~") __attribute___仅做历史性保留_?: unknown,
    @query @doc("视频总计持续时长（所有分P）") duration?: int64,
    @query @doc("视频属性标志") rights?: Record<unknown>,
    @query @doc("视频UP主信息") owner?: Record<unknown>,
    @query @doc("视频状态数") stat?: Record<unknown>,
    @query @doc("视频同步发布的的动态的文字内容") dynamic?: string,
    @query @doc("视频1P cid") cid?: int64,
    @query @doc("视频1P分辨率") dimension?: Record<unknown>,
    @query @doc("番剧/影视信息") bangumi?: Record<unknown>,
    @query @doc("课程信息") cheese?: Record<unknown>,
    @query @doc("是否已收藏") favorite?: boolean,
    @query @doc("视频属性") type?: int64,
    @query @doc("附视频属性") sub_type?: int64,
    @query @doc("观看平台代码") device?: int64,
    @query @doc("最后观看的分P信息") page?: Record<unknown>,
    @query @doc("分P数") count?: int64,
    @query @doc("观看进度") progress?: int64,
    @query @doc("观看时间") view_at?: int64,
    @query @doc("稿件avid") kid?: int64,
    @query @doc("视频类型标识") business?: string,
    @query @doc("重定向url") redirect_link?: string,
    @query @doc("稿件bvid") bvid?: string,
    @query @doc("番剧封面图片url") cover?: string,
    @query @doc("番剧epid") ep_id?: int64,
    @query @doc("？？？") episode_status?: int64,
    @query @doc("0") follow?: int64,
    @query @doc("单集标题") long_title?: string,
    @query @doc("剧集信息") season?: Record<unknown>,
    @query @doc("集数") title?: string,
    @query @doc("是否完结") is_finish?: int64,
    @query @doc("最细一话epid") newest_ep_id?: int64,
    @query @doc("最细一话集数") newest_ep_index?: string,
    @query @doc("番剧ssid") season_id?: int64,
    @query @doc("？？？") season_status?: int64,
    @query @doc("？？？") season_type?: int64,
    @query @doc("番剧标题") title?: string,
    @query @doc("总集数") total_count?: int64,
    @query @doc("课程封面图片url") cover?: string,
    @query @doc("完整标题") long_title?: string,
    @query @doc("本集数") number?: string,
    @query @doc("课程ssid") season_id?: int64,
    @query @doc("总集数") update_info?: string,
  ): ApiResponse<Rights>;
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

  @doc("视频1P cid")
  cid?: int64;

}

/**
 * dimension 对象
 */
@doc("dimension 数据模型")
model Dimension {
  @doc("番剧/影视信息")
  bangumi?: Record<unknown>;

  @doc("课程信息")
  cheese?: Record<unknown>;

  @doc("是否已收藏")
  favorite?: boolean;

  @doc("视频属性")
  type?: int64;

  @doc("附视频属性")
  sub_type?: int64;

  @doc("观看平台代码")
  device?: int64;

  @doc("最后观看的分P信息")
  page?: Record<unknown>;

  @doc("分P数")
  count?: int64;

  @doc("观看进度")
  progress?: int64;

  @doc("观看时间")
  view_at?: int64;

  @doc("稿件avid")
  kid?: int64;

  @doc("视频类型标识")
  business?: string;

  @doc("重定向url")
  redirect_link?: string;

  @doc("稿件bvid")
  bvid?: string;

}

/**
 * bangumi 对象
 */
@doc("bangumi 数据模型")
model Bangumi {
  @doc("番剧封面图片url")
  cover?: string;

  @doc("番剧epid")
  ep_id?: int64;

  @doc("？？？")
  episode_status?: int64;

  @doc("0")
  follow?: int64;

  @doc("单集标题")
  long_title?: string;

  @doc("剧集信息")
  season?: Record<unknown>;

  @doc("集数")
  title?: string;

}

/**
 * season 对象
 */
@doc("season 数据模型")
model Season {
  @doc("是否完结")
  is_finish?: int64;

  @doc("最细一话epid")
  newest_ep_id?: int64;

  @doc("最细一话集数")
  newest_ep_index?: string;

  @doc("番剧ssid")
  season_id?: int64;

  @doc("？？？")
  season_status?: int64;

  @doc("？？？")
  season_type?: int64;

  @doc("番剧标题")
  title?: string;

  @doc("总集数")
  total_count?: int64;

}

/**
 * cheese 对象
 */
@doc("cheese 数据模型")
model Cheese {
  @doc("课程封面图片url")
  cover?: string;

  @doc("完整标题")
  long_title?: string;

  @doc("本集数")
  number?: string;

  @doc("课程ssid")
  season_id?: int64;

  @doc("总集数")
  update_info?: string;

}

/**
 * 删除历史记录
 */
@route("/x/v2/history/delete")
@tag("Historytoview")
interface 删除历史记录 {
  @post
  @doc("删除历史记录")
  删除历史记录(
    @body @doc("删除的目标记录，格式为`{业务类型}_{目标id}`详见备注") kid: string,
    @body @doc("CSRF Token（位于cookie）") csrf: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
  ): ApiResponse<unknown>;
}

/**
 * 清空历史记录
 */
@route("/x/v2/history/clear")
@tag("Historytoview")
interface 清空历史记录 {
  @post
  @doc("清空历史记录")
  清空历史记录(
    @body @doc("CSRF Token（位于cookie）") csrf: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
  ): ApiResponse<unknown>;
}

/**
 * 停用历史记录
 */
@route("/x/v2/history/shadow/set")
@tag("Historytoview")
interface 停用历史记录 {
  @post
  @doc("停用历史记录")
  停用历史记录(
    @body @doc("停用开关") switch: boolean,
    @body @doc("CSRF Token（位于cookie）") csrf: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
  ): ApiResponse<unknown>;
}

/**
 * 查询历史记录停用状态
 */
@route("/x/v2/history/shadow")
@tag("Historytoview")
interface 查询历史记录停用状态 {
  @get
  @doc("查询历史记录停用状态")
  查询历史记录停用状态(
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("停用状态") data?: boolean,
  ): ApiResponse<unknown>;
}
