import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Video;

/**
 * 获取视频合集信息
 */
@route("/x/polymer/web-space/seasons_archives_list")
@tag("Video")
interface 获取视频合集信息 {
  @get
  @doc("获取视频合集信息")
  获取视频合集信息(
    @query @doc("用户 mid") mid: int64,
    @query @doc("视频合集 ID") season_id: int64,
    @query @doc("排序方式") sort_reverse?: boolean,
    @query @doc("页码索引") page_num?: int64,
    @query @doc("单页内容数量") page_size?: int64,
    @query @doc("风控验证?") gaia_vtoken?: string,
    @query @doc("页面位置?") web_location?: string,
    @query @doc("WBI 签名") w_rid?: string,
    @query @doc("UNIX 秒级时间戳") wts?: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("稿件 avid 列表") aids?: unknown[],
    @query @doc("合集中的视频") archives?: unknown[],
    @query @doc("合集元数据") meta?: Record<unknown>,
    @query @doc("分页信息") page?: Record<unknown>,
    @query @doc("内容") 项?: unknown,
    @query @doc("合集内容") field_0?: Record<unknown>,
    @query @doc("(n+1)P内容") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("稿件 avid") aid?: int64,
    @query @doc("稿件 bvid") bvid?: string,
    @query @doc("创建时间") ctime?: int64,
    @query @doc("视频时长") duration?: int64,
    @query @doc("false") enable_vt?: boolean,
    @query @doc("是否是互动视频") interactive_video?: boolean,
    @query @doc("封面 URL") pic?: string,
    @query @doc("会随着播放时间增长，播放完成后为 -1 。单位为 %") playback_position?: int64,
    @query @doc("发布日期") pubdate?: int64,
    @query @doc("稿件信息") stat?: Record<unknown>,
    @query @doc("0") state?: int64,
    @query @doc("稿件标题") title?: string,
    @query @doc("UGC 付费?") ugc_pay?: int64,
    @query @doc("空") vt_display?: string,
    @query @doc("稿件播放量") view?: int64,
    @query @doc("0") vt?: int64,
    @query @doc("0") category?: int64,
    @query @doc("合集封面 URL") cover?: string,
    @query @doc("合集描述") description?: string,
    @query @doc("UP 主 ID") mid?: int64,
    @query @doc("合集标题") name?: string,
    @query @doc("发布时间") ptime?: int64,
    @query @doc("合集 ID") season_id?: int64,
    @query @doc("合集内视频数量") total?: int64,
    @query @doc("分页页码") page_num?: int64,
    @query @doc("单页个数") page_size?: int64,
    @query @doc("合集内视频数量") total?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("稿件 avid 列表")
  aids?: unknown[];

  @doc("合集中的视频")
  archives?: unknown[];

  @doc("合集元数据")
  meta?: Record<unknown>;

  @doc("分页信息")
  page?: Record<unknown>;

  @doc("内容")
  项?: unknown;

  @doc("合集内容")
  field_0?: Record<unknown>;

  @doc("(n+1)P内容")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("稿件 avid")
  aid?: int64;

  @doc("稿件 bvid")
  bvid?: string;

  @doc("创建时间")
  ctime?: int64;

  @doc("视频时长")
  duration?: int64;

  @doc("false")
  enable_vt?: boolean;

  @doc("是否是互动视频")
  interactive_video?: boolean;

  @doc("封面 URL")
  pic?: string;

  @doc("会随着播放时间增长，播放完成后为 -1 。单位为 %")
  playback_position?: int64;

  @doc("发布日期")
  pubdate?: int64;

  @doc("稿件信息")
  stat?: Record<unknown>;

  @doc("0")
  state?: int64;

  @doc("稿件标题")
  title?: string;

  @doc("UGC 付费?")
  ugc_pay?: int64;

  @doc("空")
  vt_display?: string;

}

/**
 * stat 对象
 */
@doc("stat 数据模型")
model Stat {
  @doc("稿件播放量")
  view?: int64;

  @doc("0")
  vt?: int64;

}

/**
 * meta 对象
 */
@doc("meta 数据模型")
model Meta {
  @doc("0")
  category?: int64;

  @doc("合集封面 URL")
  cover?: string;

  @doc("合集描述")
  description?: string;

  @doc("UP 主 ID")
  mid?: int64;

  @doc("合集标题")
  name?: string;

  @doc("发布时间")
  ptime?: int64;

  @doc("合集 ID")
  season_id?: int64;

  @doc("合集内视频数量")
  total?: int64;

}

/**
 * page 对象
 */
@doc("page 数据模型")
model Page {
  @doc("分页页码")
  page_num?: int64;

  @doc("单页个数")
  page_size?: int64;

  @doc("合集内视频数量")
  total?: int64;

}

/**
 * 只获取系列视频
 */
@route("/x/polymer/web-space/home/seasons_series")
@tag("Video")
interface 只获取系列视频 {
  @get
  @doc("只获取系列视频")
  只获取系列视频(
    @query @doc("用户 mid") mid: int64,
    @query @doc("页码索引") page_num: int64,
    @query @doc("单页内容数量") page_size: int64,
    @query @doc("风控验证?") gaia_vtoken?: string,
    @query @doc("WBI 签名") w_rid: string,
    @query @doc("UNIX 秒级时间戳") wts: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("内容列表") items_lists?: Record<unknown>,
    @query @doc("分页信息") page?: Record<unknown>,
    @query @doc("空") seasons_list?: unknown[],
    @query @doc("系列列表") series_list?: unknown[],
    @query @doc("分页页码") page_num?: int64,
    @query @doc("单页个数") page_size?: int64,
    @query @doc("总页数") total?: int64,
    @query @doc("内容") 项?: unknown,
    @query @doc("第1个系列内容") field_0?: Record<unknown>,
    @query @doc("第2个系列内容") field_1?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("第(n+1)个系列内容") n?: Record<unknown>,
    @query @doc("系列视频列表") archives?: unknown[],
    @query @doc("系列元数据") meta?: Record<unknown>,
    @query @doc("系列视频 aid 列表") recent_aids?: unknown[],
    @query @doc("1") category?: int64,
    @query @doc("系列封面 URL") cover?: string,
    @query @doc("auto") creator?: string,
    @query @doc("创建时间") ctime?: int64,
    @query @doc("系列描述") description?: string,
    @query @doc("系列关键词列表") keywords?: unknown[],
    @query @doc("最近更新时间") last_update_ts?: int64,
    @query @doc("UP 主 ID") mid?: int64,
    @query @doc("修改时间") mtime?: int64,
    @query @doc("系列标题") name?: string,
    @query @doc("原始系列关键词") raw_keywords?: string,
    @query @doc("系列 ID") series_id?: int64,
    @query @doc("2") state?: int64,
    @query @doc("系列视频数量") total?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("内容列表")
  items_lists?: Record<unknown>;

}

/**
 * items_lists 对象
 */
@doc("items_lists 数据模型")
model Items_lists {
  @doc("分页信息")
  page?: Record<unknown>;

  @doc("空")
  seasons_list?: unknown[];

  @doc("系列列表")
  series_list?: unknown[];

}

/**
 * page 对象
 */
@doc("page 数据模型")
model Page {
  @doc("分页页码")
  page_num?: int64;

  @doc("单页个数")
  page_size?: int64;

  @doc("总页数")
  total?: int64;

  @doc("内容")
  项?: unknown;

  @doc("第1个系列内容")
  field_0?: Record<unknown>;

  @doc("第2个系列内容")
  field_1?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("第(n+1)个系列内容")
  n?: Record<unknown>;

  @doc("系列视频列表")
  archives?: unknown[];

  @doc("系列元数据")
  meta?: Record<unknown>;

  @doc("系列视频 aid 列表")
  recent_aids?: unknown[];

}

/**
 * meta 对象
 */
@doc("meta 数据模型")
model Meta {
  @doc("1")
  category?: int64;

  @doc("系列封面 URL")
  cover?: string;

  @doc("auto")
  creator?: string;

  @doc("创建时间")
  ctime?: int64;

  @doc("系列描述")
  description?: string;

  @doc("系列关键词列表")
  keywords?: unknown[];

  @doc("最近更新时间")
  last_update_ts?: int64;

  @doc("UP 主 ID")
  mid?: int64;

  @doc("修改时间")
  mtime?: int64;

  @doc("系列标题")
  name?: string;

  @doc("原始系列关键词")
  raw_keywords?: string;

  @doc("系列 ID")
  series_id?: int64;

  @doc("2")
  state?: int64;

  @doc("系列视频数量")
  total?: int64;

}

/**
 * 获取系列和合集视频
 */
@route("/x/polymer/web-space/seasons_series_list")
@tag("Video")
interface 获取系列和合集视频 {
  @get
  @doc("获取系列和合集视频")
  获取系列和合集视频(
    @query @doc("用户 mid") mid: int64,
    @query @doc("页码") page_num: int64,
    @query @doc("每页数量") page_size: int64,
    @query @doc("WBI 签名") w_rid?: string,
    @query @doc("UNIX 秒级时间戳") wts?: int64,
    @query @doc("页面位置?") web_location?: string,
  ): ApiResponse<unknown>;
}

/**
 * 查询指定系列
 */
@route("/x/series/series")
@tag("Video")
interface 查询指定系列 {
  @get
  @doc("查询指定系列")
  查询指定系列(
    @query @doc("系列ID") series_id: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("系列信息") meta?: Record<unknown>,
    @query @doc("系列 aid 列表") recent_aids?: unknown[],
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("系列信息")
  meta?: Record<unknown>;

  @doc("系列 aid 列表")
  recent_aids?: unknown[];

}

/**
 * meta 对象
 */
@doc("meta 数据模型")
model Meta {
}

/**
 * meta 对象
 */
@doc("meta 数据模型")
model Meta {
}

/**
 * 获取指定系列视频
 */
@route("/x/series/archives")
@tag("Video")
interface 获取指定系列视频 {
  @get
  @doc("获取指定系列视频")
  获取指定系列视频(
    @query @doc("用户 mid") mid: int64,
    @query @doc("系列ID") series_id: int64,
    @query @doc("作用尚不明确") only_normal?: boolean,
    @query @doc("排序方式") sort?: string,
    @query @doc("页码") pn?: int64,
    @query @doc("每页数量") ps?: int64,
    @query @doc("当前用户 mid") current_mid?: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("视频 aid 列表") aids?: unknown[],
    @query @doc("页码信息") page?: Record<unknown>,
    @query @doc("视频信息列表") archives?: unknown[],
    @query @doc("当前页码") num?: int64,
    @query @doc("每页数量") size?: int64,
    @query @doc("视频总数") total?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("视频 aid 列表")
  aids?: unknown[];

  @doc("页码信息")
  page?: Record<unknown>;

  @doc("视频信息列表")
  archives?: unknown[];

}

/**
 * page 对象
 */
@doc("page 数据模型")
model Page {
  @doc("当前页码")
  num?: int64;

  @doc("每页数量")
  size?: int64;

  @doc("视频总数")
  total?: int64;

}

/**
 * 根据关键词查找视频
 */
@route("/x/series/recArchivesByKeywords")
@tag("Video")
interface 根据关键词查找视频 {
  @get
  @doc("根据关键词查找视频")
  根据关键词查找视频(
    @query @doc("用户 mid") mid: int64,
    @query @doc("关键词") keywords: string,
    @query @doc("每页视频数") ps: int64,
    @query @doc("页码") pn: int64,
    @query @doc("排序方式") orderby: string,
    @query @doc("系列 ID") series_id: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("视频列表") archives?: unknown[],
    @query @doc("页码信息") page?: Record<unknown>,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("视频列表")
  archives?: unknown[];

  @doc("页码信息")
  page?: Record<unknown>;

}

/**
 * page 对象
 */
@doc("page 数据模型")
model Page {
}

/**
 * page 对象
 */
@doc("page 数据模型")
model Page {
}

/**
 * 创建视频列表
 */
@route("/x/series/series/createAndAddArchives")
@tag("Video")
interface 创建视频列表 {
  @post
  @doc("创建视频列表")
  创建视频列表(
    @query @doc("CSRF Token (即 Cookies 中 bili_jct )") csrf: string,
    @body @doc("用户 mid") mid: int64,
    @body @doc("标题") name: string,
    @body @doc("关键词") keywords: string,
    @body @doc("简介") description: string,
    @body @doc("视频 aid 列表") aids: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
    @body @doc("信息本体") data?: Record<unknown>,
    @body @doc("视频列表 ID") series_id?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("视频列表 ID")
  series_id?: int64;

}

/**
 * 删除视频列表
 */
@route("/x/series/series/delete")
@tag("Video")
interface 删除视频列表 {
  @post
  @doc("删除视频列表")
  删除视频列表(
    @query @doc("CSRF Token (即 Cookies 中 bili_jct )") csrf: string,
    @query @doc("用户 mid") mid: int64,
    @query @doc("视频列表 ID") series_id: int64,
    @query @doc("空") aids: string,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("空") data?: Record<unknown>,
  ): ApiResponse<unknown>;
}

/**
 * 删除视频列表中的稿件
 */
@route("/x/series/series/delArchives")
@tag("Video")
interface 删除视频列表中的稿件 {
  @post
  @doc("删除视频列表中的稿件")
  删除视频列表中的稿件(
    @query @doc("CSRF Token (即 Cookies 中 bili_jct )") csrf: string,
    @body @doc("用户 mid") mid: int64,
    @body @doc("视频列表 ID") series_id: int64,
    @body @doc("视频 aid 列表") aids: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
    @body @doc("空") data?: Record<unknown>,
  ): ApiResponse<unknown>;
}

/**
 * 添加稿件至视频列表
 */
@route("/x/series/series/addArchives")
@tag("Video")
interface 添加稿件至视频列表 {
  @post
  @doc("添加稿件至视频列表")
  添加稿件至视频列表(): ApiResponse<unknown>;
}

/**
 * 编辑视频列表信息
 */
@route("/x/series/series/update")
@tag("Video")
interface 编辑视频列表信息 {
  @post
  @doc("编辑视频列表信息")
  编辑视频列表信息(
    @query @doc("CSRF Token (即 Cookies 中 bili_jct )") csrf: string,
    @body @doc("用户 mid") mid: int64,
    @body @doc("视频列表 ID") series_id: int64,
    @body @doc("标题") name: string,
    @body @doc("关键词") keywords: string,
    @body @doc("简介") description: string,
    @body @doc("视频 aid 列表") add_aids: string,
    @body @doc("视频 aid 列表") del_aids: string,
    @body @doc("空") aids: string,
  ): ApiResponse<unknown>;
}
