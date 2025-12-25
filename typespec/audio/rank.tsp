import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Audio;

/**
 * 获取音频榜单每期列表
 */
@route("/x/copyright-music-publicity/toplist/all_period")
@tag("Audio")
interface 获取音频榜单每期列表 {
  @get
  @doc("获取音频榜单每期列表")
  获取音频榜单每期列表(
    @query @doc("榜单类型") list_type: int64,
    @query @doc("CSRF Token（位于cookie）") csrf: string,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("年份索引") list?: Record<unknown>,
    @query @doc("对应年份索引的每期信息") _年份_?: unknown[],
    @query @doc("……") __?: unknown[],
    @query @doc("内容") 项?: unknown,
    @query @doc("该年中的单期数据") field_0?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("榜单 id") ID?: int64,
    @query @doc("榜单期数") priod?: int64,
    @query @doc("发布时间") publish_time?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("年份索引")
  list?: Record<unknown>;

}

/**
 * list 对象
 */
@doc("list 数据模型")
model List {
  @doc("对应年份索引的每期信息")
  _年份_?: unknown[];

  @doc("……")
  __?: unknown[];

  @doc("内容")
  项?: unknown;

  @doc("该年中的单期数据")
  field_0?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("榜单 id")
  ID?: int64;

  @doc("榜单期数")
  priod?: int64;

  @doc("发布时间")
  publish_time?: int64;

}

/**
 * 查询音频榜单单期信息
 */
@route("/x/copyright-music-publicity/toplist/detail")
@tag("Audio")
interface 查询音频榜单单期信息 {
  @get
  @doc("查询音频榜单单期信息")
  查询音频榜单单期信息(
    @query @doc("榜单 id") list_id: int64,
    @query @doc("CSRF Token（位于cookie）") csrf: string,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("畅听版歌单收藏夹原始 id") listen_fid?: int64,
    @query @doc("完整版歌单收藏夹原始 id") all_fid?: int64,
    @query @doc("绑定收藏夹用户的 mid") fav_mid?: int64,
    @query @doc("榜单封面 url") cover_url?: string,
    @query @doc("是否已订阅榜单") is_subscribe?: boolean,
    @query @doc("平台有版权音频的数量") listen_count?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("畅听版歌单收藏夹原始 id")
  listen_fid?: int64;

  @doc("完整版歌单收藏夹原始 id")
  all_fid?: int64;

  @doc("绑定收藏夹用户的 mid")
  fav_mid?: int64;

  @doc("榜单封面 url")
  cover_url?: string;

  @doc("是否已订阅榜单")
  is_subscribe?: boolean;

  @doc("平台有版权音频的数量")
  listen_count?: int64;

}

/**
 * 获取音频榜单单期内容
 */
@route("/x/copyright-music-publicity/toplist/music_list")
@tag("Audio")
interface 获取音频榜单单期内容 {
  @get
  @doc("获取音频榜单单期内容")
  获取音频榜单单期内容(
    @query @doc("榜单 id") list_id: int64,
    @query @doc("CSRF Token（位于cookie）") csrf: string,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("内容列表") list?: unknown[],
    @query @doc("内容") 项?: unknown,
    @query @doc("榜单内容 1") field_0?: Record<unknown>,
    @query @doc("榜单内容 (n+1)") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("音频 MAID") music_id?: string,
    @query @doc("音频标题") music_title?: string,
    @query @doc("音频作者") singer?: string,
    @query @doc("音频专辑") album?: string,
    @query @doc("音频 MV 的 avid") mv_aid?: int64,
    @query @doc("音频 MV 的 bvid") mv_bvid?: string,
    @query @doc("音频封面 url") mv_cover?: string,
    @query @doc("热度值") heat?: int64,
    @query @doc("排序值") rank?: int64,
    @query @doc("平台是否有版权") can_listen?: boolean,
    @query @doc("（？）") recommendation?: string,
    @query @doc("关联稿件 avid") creation_aid?: int64,
    @query @doc("关联稿件 bvid") creation_bvid?: string,
    @query @doc("关联稿件封面 url") creation_cover?: string,
    @query @doc("关联稿件标题") creation_title?: string,
    @query @doc("关联稿件 UP 主 mid") creation_up?: int64,
    @query @doc("关联稿件 UP 主昵称") creation_nickname?: string,
    @query @doc("关联稿件时长") creation_duration?: int64,
    @query @doc("关联稿件播放量") creation_play?: int64,
    @query @doc("关联稿件二级分区名") creation_reason?: string,
    @query @doc("获得成就") achievements?: unknown[],
    @query @doc("（？）") material_id?: int64,
    @query @doc("（？）") material_use_num?: int64,
    @query @doc("（？）") material_duration?: int64,
    @query @doc("（？）") material_show?: int64,
    @query @doc("（？）") song_type?: int64,
    @query @doc("内容") 项?: unknown,
    @query @doc("成就文案 1") field_0?: string,
    @query @doc("成就文案 (n+1)") n?: string,
    @query @doc("……") __?: string,
    @query @doc("《不问ciaga》\",") _creation_title____日推歌单?: unknown,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("内容列表")
  list?: unknown[];

  @doc("内容")
  项?: unknown;

  @doc("榜单内容 1")
  field_0?: Record<unknown>;

  @doc("榜单内容 (n+1)")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("音频 MAID")
  music_id?: string;

  @doc("音频标题")
  music_title?: string;

  @doc("音频作者")
  singer?: string;

  @doc("音频专辑")
  album?: string;

  @doc("音频 MV 的 bvid")
  mv_bvid?: string;

  @doc("音频封面 url")
  mv_cover?: string;

  @doc("热度值")
  heat?: int64;

  @doc("排序值")
  rank?: int64;

  @doc("平台是否有版权")
  can_listen?: boolean;

  @doc("（？）")
  recommendation?: string;

  @doc("关联稿件 avid")
  creation_aid?: int64;

  @doc("关联稿件 bvid")
  creation_bvid?: string;

  @doc("关联稿件封面 url")
  creation_cover?: string;

  @doc("关联稿件标题")
  creation_title?: string;

  @doc("关联稿件 UP 主 mid")
  creation_up?: int64;

  @doc("关联稿件 UP 主昵称")
  creation_nickname?: string;

  @doc("关联稿件时长")
  creation_duration?: int64;

  @doc("关联稿件播放量")
  creation_play?: int64;

  @doc("关联稿件二级分区名")
  creation_reason?: string;

  @doc("获得成就")
  achievements?: unknown[];

  @doc("（？）")
  material_id?: int64;

  @doc("（？）")
  material_use_num?: int64;

  @doc("（？）")
  material_duration?: int64;

  @doc("（？）")
  material_show?: int64;

  @doc("（？）")
  song_type?: int64;

  @doc("内容")
  项?: unknown;

  @doc("成就文案 1")
  field_0?: string;

  @doc("成就文案 (n+1)")
  n?: string;

  @doc("……")
  __?: string;

  @doc("《不问ciaga》\",")
  _creation_title____日推歌单?: unknown;

}

/**
 * 订阅或退订榜单
 */
@route("/x/copyright-music-publicity/toplist/subscribe/update")
@tag("Audio")
interface 订阅或退订榜单 {
  @post
  @doc("订阅或退订榜单")
  订阅或退订榜单(
    @body @doc("操作代码") state: int64,
    @body @doc("榜单 id") list_id: int64,
    @body @doc("CSRF Token（位于cookie）") csrf: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
  ): ApiResponse<unknown>;
}
