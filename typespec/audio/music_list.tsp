import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Audio;

/**
 * 查询自己创建的歌单
 */
@route("/audio/music-service-c/web/collections/list")
@tag("Audio")
interface 查询自己创建的歌单 {
  @get
  @doc("查询自己创建的歌单")
  查询自己创建的歌单(
    @query @doc("页码") pn: int64,
    @query @doc("每页项数") ps: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") msg?: string,
    @query @doc("信息本体") data?: unknown,
    @query @doc("当前页码") curPage?: int64,
    @query @doc("总计页数") pageCount?: int64,
    @query @doc("总计收藏夹数") totalSize?: int64,
    @query @doc("当前页面项数") pageSize?: int64,
    @query @doc("歌单列表") data?: unknown[],
    @query @doc("内容") 项?: unknown,
    @query @doc("音频收藏夹mlid1") field_0?: Record<unknown>,
    @query @doc("音频收藏夹mlid(n+1)") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("音频收藏夹mlid") id?: int64,
    @query @doc("创建用户mid") uid?: int64,
    @query @doc("创建用户昵称") uname?: string,
    @query @doc("歌单标题") title?: string,
    @query @doc("收藏夹属性") type?: int64,
    @query @doc("是否公开") published?: int64,
    @query @doc("歌单封面图片url") cover?: string,
    @query @doc("歌单创建时间") ctime?: int64,
    @query @doc("歌单中的音乐数量") song?: int64,
    @query @doc("歌单备注信息") desc?: string,
    @query @doc("歌单中的音乐") sids?: unknown[],
    @query @doc("音频收藏夹对应的歌单amid") menuId?: int64,
    @query @doc("歌单状态数信息") statistic?: Record<unknown>,
    @query @doc("内容") 项?: unknown,
    @query @doc("收藏的音频auid1") field_0?: int64,
    @query @doc("收藏的音频auid(n+1)") n?: int64,
    @query @doc("……") __?: int64,
    @query @doc("音频收藏夹对应的歌单amid") sid?: int64,
    @query @doc("播放数") play?: int64,
    @query @doc("收藏数") collect?: int64,
    @query @doc("评论数") comment?: null,
    @query @doc("分享数") share?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("当前页码")
  curPage?: int64;

  @doc("总计页数")
  pageCount?: int64;

  @doc("总计收藏夹数")
  totalSize?: int64;

  @doc("当前页面项数")
  pageSize?: int64;

  @doc("歌单列表")
  data?: unknown[];

  @doc("内容")
  项?: unknown;

  @doc("音频收藏夹mlid1")
  field_0?: Record<unknown>;

  @doc("音频收藏夹mlid(n+1)")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("音频收藏夹mlid")
  id?: int64;

  @doc("创建用户mid")
  uid?: int64;

  @doc("创建用户昵称")
  uname?: string;

  @doc("歌单标题")
  title?: string;

  @doc("收藏夹属性")
  type?: int64;

  @doc("是否公开")
  published?: int64;

  @doc("歌单封面图片url")
  cover?: string;

  @doc("歌单创建时间")
  ctime?: int64;

  @doc("歌单中的音乐数量")
  song?: int64;

  @doc("歌单备注信息")
  desc?: string;

  @doc("歌单中的音乐")
  sids?: unknown[];

  @doc("音频收藏夹对应的歌单amid")
  menuId?: int64;

  @doc("歌单状态数信息")
  statistic?: Record<unknown>;

  @doc("内容")
  项?: unknown;

  @doc("收藏的音频auid1")
  field_0?: int64;

  @doc("收藏的音频auid(n+1)")
  n?: int64;

  @doc("……")
  __?: int64;

}

/**
 * statistic 对象
 */
@doc("statistic 数据模型")
model Statistic {
  @doc("音频收藏夹对应的歌单amid")
  sid?: int64;

  @doc("播放数")
  play?: int64;

  @doc("收藏数")
  collect?: int64;

  @doc("评论数")
  comment?: null;

  @doc("分享数")
  share?: int64;

}

/**
 * 查询音频收藏夹（默认歌单）信息
 */
@route("/audio/music-service-c/web/collections/info")
@tag("Audio")
interface 查询音频收藏夹默认歌单信息 {
  @get
  @doc("查询音频收藏夹（默认歌单）信息")
  查询音频收藏夹默认歌单信息(
    @query @doc("音频收藏夹mlid") sid: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") msg?: string,
    @query @doc("信息本体") data?: unknown,
    @query @doc("音频收藏夹mlid") id?: int64,
    @query @doc("创建用户mid") uid?: int64,
    @query @doc("创建用户昵称") uname?: string,
    @query @doc("默认歌单") title?: string,
    @query @doc("1") type?: int64,
    @query @doc("是否公开") published?: int64,
    @query @doc("歌单封面图片url") cover?: string,
    @query @doc("歌单创建时间") ctime?: int64,
    @query @doc("歌单中的音乐数量") song?: int64,
    @query @doc("空") desc?: string,
    @query @doc("歌单中的音乐") sids?: unknown[],
    @query @doc("音频收藏夹对应的歌单amid") menuId?: int64,
    @query @doc("歌单状态数信息") statistic?: Record<unknown>,
    @query @doc("内容") 项?: unknown,
    @query @doc("收藏的音频auid1") field_0?: int64,
    @query @doc("收藏的音频auid(n+1)") n?: int64,
    @query @doc("……") __?: int64,
    @query @doc("音频收藏夹对应的歌单amid") sid?: int64,
    @query @doc("0") play?: int64,
    @query @doc("0") collect?: int64,
    @query @doc("-") comment?: null,
    @query @doc("0") share?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("音频收藏夹mlid")
  id?: int64;

  @doc("创建用户mid")
  uid?: int64;

  @doc("创建用户昵称")
  uname?: string;

  @doc("默认歌单")
  title?: string;

  @doc("1")
  type?: int64;

  @doc("是否公开")
  published?: int64;

  @doc("歌单封面图片url")
  cover?: string;

  @doc("歌单创建时间")
  ctime?: int64;

  @doc("歌单中的音乐数量")
  song?: int64;

  @doc("空")
  desc?: string;

  @doc("歌单中的音乐")
  sids?: unknown[];

  @doc("音频收藏夹对应的歌单amid")
  menuId?: int64;

  @doc("歌单状态数信息")
  statistic?: Record<unknown>;

  @doc("内容")
  项?: unknown;

  @doc("收藏的音频auid1")
  field_0?: int64;

  @doc("收藏的音频auid(n+1)")
  n?: int64;

  @doc("……")
  __?: int64;

}

/**
 * statistic 对象
 */
@doc("statistic 数据模型")
model Statistic {
  @doc("音频收藏夹对应的歌单amid")
  sid?: int64;

  @doc("0")
  play?: int64;

  @doc("0")
  collect?: int64;

  @doc("-")
  comment?: null;

  @doc("0")
  share?: int64;

}

/**
 * 查询热门歌单
 */
@route("/audio/music-service-c/web/menu/hit")
@tag("Audio")
interface 查询热门歌单 {
  @get
  @doc("查询热门歌单")
  查询热门歌单(
    @query @doc("页码") pn: int64,
    @query @doc("每页项数") ps: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") msg?: string,
    @query @doc("信息本体") data?: unknown,
    @query @doc("当前页码") curPage?: int64,
    @query @doc("总计页数") pageCount?: int64,
    @query @doc("总计收藏夹数") totalSize?: int64,
    @query @doc("当前页面项数") pageSize?: int64,
    @query @doc("歌单列表") data?: unknown[],
    @query @doc("内容") 项?: unknown,
    @query @doc("音频收藏夹mlid1") field_0?: Record<unknown>,
    @query @doc("音频收藏夹mlid(n+1)") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("音频收藏夹对应的歌单amid") menuId?: int64,
    @query @doc("创建用户mid") uid?: int64,
    @query @doc("创建用户昵称") uname?: string,
    @query @doc("歌单标题") title?: string,
    @query @doc("歌单封面图片url") cover?: string,
    @query @doc("歌单介绍") intro?: string,
    @query @doc("歌单属性") type?: int64,
    @query @doc("歌单是否公开") off?: int64,
    @query @doc("歌单创建时间") ctime?: int64,
    @query @doc("当前时间") curtime?: int64,
    @query @doc("歌单状态数信息") statistic?: Record<unknown>,
    @query @doc("歌单包含歌曲个数") snum?: int64,
    @query @doc("音频收藏夹对应的歌单amid") sid?: int64,
    @query @doc("播放数") play?: int64,
    @query @doc("收藏数") collect?: int64,
    @query @doc("评论数") comment?: int64,
    @query @doc("分享数") share?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("当前页码")
  curPage?: int64;

  @doc("总计页数")
  pageCount?: int64;

  @doc("总计收藏夹数")
  totalSize?: int64;

  @doc("当前页面项数")
  pageSize?: int64;

  @doc("歌单列表")
  data?: unknown[];

  @doc("内容")
  项?: unknown;

  @doc("音频收藏夹mlid1")
  field_0?: Record<unknown>;

  @doc("音频收藏夹mlid(n+1)")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("音频收藏夹对应的歌单amid")
  menuId?: int64;

  @doc("创建用户mid")
  uid?: int64;

  @doc("创建用户昵称")
  uname?: string;

  @doc("歌单标题")
  title?: string;

  @doc("歌单封面图片url")
  cover?: string;

  @doc("歌单介绍")
  intro?: string;

  @doc("歌单属性")
  type?: int64;

  @doc("歌单是否公开")
  off?: int64;

  @doc("歌单创建时间")
  ctime?: int64;

  @doc("当前时间")
  curtime?: int64;

  @doc("歌单状态数信息")
  statistic?: Record<unknown>;

  @doc("歌单包含歌曲个数")
  snum?: int64;

}

/**
 * statistic 对象
 */
@doc("statistic 数据模型")
model Statistic {
  @doc("音频收藏夹对应的歌单amid")
  sid?: int64;

  @doc("播放数")
  play?: int64;

  @doc("收藏数")
  collect?: int64;

  @doc("评论数")
  comment?: int64;

  @doc("分享数")
  share?: int64;

}

/**
 * 查询热门榜单
 */
@route("/audio/music-service-c/web/menu/rank")
@tag("Audio")
interface 查询热门榜单 {
  @get
  @doc("查询热门榜单")
  查询热门榜单(
    @query @doc("页码") pn: int64,
    @query @doc("每页项数") ps: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") msg?: string,
    @query @doc("信息本体") data?: unknown,
    @query @doc("当前页码") curPage?: int64,
    @query @doc("总计页数") pageCount?: int64,
    @query @doc("总计收藏夹数") totalSize?: int64,
    @query @doc("当前页面项数") pageSize?: int64,
    @query @doc("歌单列表") data?: unknown[],
    @query @doc("内容") 项?: unknown,
    @query @doc("音频收藏夹mlid1") field_0?: Record<unknown>,
    @query @doc("音频收藏夹mlid(n+1)") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("音频收藏夹对应的歌单amid") menuId?: int64,
    @query @doc("创建用户mid") uid?: int64,
    @query @doc("创建用户昵称") uname?: string,
    @query @doc("歌单标题") title?: string,
    @query @doc("歌单封面图片url") cover?: string,
    @query @doc("歌单介绍") intro?: string,
    @query @doc("歌单属性") type?: int64,
    @query @doc("歌单是否公开") off?: int64,
    @query @doc("歌单创建时间") ctime?: int64,
    @query @doc("当前时间") curtime?: int64,
    @query @doc("歌单状态数信息") statistic?: Record<unknown>,
    @query @doc("歌单包含歌曲个数") snum?: int64,
    @query @doc("歌单中的音乐信息(部分)") audios?: unknown[],
    @query @doc("音频收藏夹对应的歌单amid") sid?: int64,
    @query @doc("收藏数") play?: int64,
    @query @doc("点赞数") collect?: int64,
    @query @doc("评论数") comment?: int64,
    @query @doc("分享数") share?: int64,
    @query @doc("内容") 项?: unknown,
    @query @doc("音频1") field_0?: Record<unknown>,
    @query @doc("音频(n+1)") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("音频id") id?: int64,
    @query @doc("音频标题") title?: string,
    @query @doc("音频时长") duration?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("当前页码")
  curPage?: int64;

  @doc("总计页数")
  pageCount?: int64;

  @doc("总计收藏夹数")
  totalSize?: int64;

  @doc("当前页面项数")
  pageSize?: int64;

  @doc("歌单列表")
  data?: unknown[];

  @doc("内容")
  项?: unknown;

  @doc("音频收藏夹mlid1")
  field_0?: Record<unknown>;

  @doc("音频收藏夹mlid(n+1)")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("音频收藏夹对应的歌单amid")
  menuId?: int64;

  @doc("创建用户mid")
  uid?: int64;

  @doc("创建用户昵称")
  uname?: string;

  @doc("歌单标题")
  title?: string;

  @doc("歌单封面图片url")
  cover?: string;

  @doc("歌单介绍")
  intro?: string;

  @doc("歌单属性")
  type?: int64;

  @doc("歌单是否公开")
  off?: int64;

  @doc("歌单创建时间")
  ctime?: int64;

  @doc("当前时间")
  curtime?: int64;

  @doc("歌单状态数信息")
  statistic?: Record<unknown>;

  @doc("歌单包含歌曲个数")
  snum?: int64;

  @doc("歌单中的音乐信息(部分)")
  audios?: unknown[];

}

/**
 * statistic 对象
 */
@doc("statistic 数据模型")
model Statistic {
  @doc("音频收藏夹对应的歌单amid")
  sid?: int64;

  @doc("收藏数")
  play?: int64;

  @doc("点赞数")
  collect?: int64;

  @doc("评论数")
  comment?: int64;

  @doc("分享数")
  share?: int64;

  @doc("内容")
  项?: unknown;

  @doc("音频1")
  field_0?: Record<unknown>;

  @doc("音频(n+1)")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

}

/**
 * audios 对象
 */
@doc("audios 数据模型")
model Audios {
  @doc("音频id")
  id?: int64;

  @doc("音频标题")
  title?: string;

  @doc("音频时长")
  duration?: int64;

}
