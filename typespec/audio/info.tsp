import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Audio;

/**
 * 查询歌曲基本信息
 */
@route("/audio/music-service-c/web/song/info")
@tag("Audio")
interface 查询歌曲基本信息 {
  @get
  @doc("查询歌曲基本信息")
  查询歌曲基本信息(
    @query @doc("音频auid") sid: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") msg?: string,
    @query @doc("信息本体") data?: unknown,
    @query @doc("音频auid") id?: int64,
    @query @doc("UP主mid") uid?: int64,
    @query @doc("UP主昵称") uname?: string,
    @query @doc("作者名") author?: string,
    @query @doc("歌曲标题") title?: string,
    @query @doc("封面图片url") cover?: string,
    @query @doc("歌曲简介") intro?: string,
    @query @doc("lrc歌词url") lyric?: string,
    @query @doc("1") crtype?: int64,
    @query @doc("歌曲时间长度") duration?: int64,
    @query @doc("歌曲发布时间") passtime?: int64,
    @query @doc("当前请求时间") curtime?: int64,
    @query @doc("关联稿件avid") aid?: int64,
    @query @doc("关联稿件bvid") bvid?: string,
    @query @doc("关联视频cid") cid?: int64,
    @query @doc("0") msid?: int64,
    @query @doc("0") attr?: int64,
    @query @doc("0") limit?: int64,
    @query @doc("0") activityId?: int64,
    @query @doc("空") limitdesc?: string,
    @query @doc("-") ctime?: null,
    @query @doc("状态数") statistic?: Record<unknown>,
    @query @doc("UP主会员状态") vipInfo?: Record<unknown>,
    @query @doc("歌曲所在的收藏夹mlid") collectIds?: unknown[],
    @query @doc("投币数") coin_num?: int64,
    @query @doc("音频auid") sid?: int64,
    @query @doc("播放次数") play?: int64,
    @query @doc("收藏数") collect?: int64,
    @query @doc("评论数") comment?: int64,
    @query @doc("分享数") share?: int64,
    @query @doc("会员类型") type?: int64,
    @query @doc("会员状态") status?: int64,
    @query @doc("会员到期时间") due_date?: int64,
    @query @doc("会员开通状态") vip_pay_type?: int64,
    @query @doc("内容") 项?: unknown,
    @query @doc("第1个所在的收藏夹mlid") field_0?: int64,
    @query @doc("第（n+1）个所在的收藏夹mlid") n?: int64,
    @query @doc("……") __?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("音频auid")
  id?: int64;

  @doc("UP主mid")
  uid?: int64;

  @doc("UP主昵称")
  uname?: string;

  @doc("作者名")
  author?: string;

  @doc("歌曲标题")
  title?: string;

  @doc("封面图片url")
  cover?: string;

  @doc("歌曲简介")
  intro?: string;

  @doc("lrc歌词url")
  lyric?: string;

  @doc("1")
  crtype?: int64;

  @doc("歌曲时间长度")
  duration?: int64;

  @doc("歌曲发布时间")
  passtime?: int64;

  @doc("当前请求时间")
  curtime?: int64;

  @doc("关联稿件avid")
  aid?: int64;

  @doc("关联稿件bvid")
  bvid?: string;

  @doc("关联视频cid")
  cid?: int64;

  @doc("0")
  msid?: int64;

  @doc("0")
  attr?: int64;

  @doc("0")
  limit?: int64;

  @doc("0")
  activityId?: int64;

  @doc("空")
  limitdesc?: string;

  @doc("-")
  ctime?: null;

  @doc("状态数")
  statistic?: Record<unknown>;

  @doc("UP主会员状态")
  vipInfo?: Record<unknown>;

  @doc("歌曲所在的收藏夹mlid")
  collectIds?: unknown[];

  @doc("投币数")
  coin_num?: int64;

}

/**
 * statistic 对象
 */
@doc("statistic 数据模型")
model Statistic {
  @doc("音频auid")
  sid?: int64;

  @doc("播放次数")
  play?: int64;

  @doc("收藏数")
  collect?: int64;

  @doc("评论数")
  comment?: int64;

  @doc("分享数")
  share?: int64;

}

/**
 * vipInfo 对象
 */
@doc("vipInfo 数据模型")
model Vipinfo {
  @doc("会员类型")
  type?: int64;

  @doc("会员状态")
  status?: int64;

  @doc("会员到期时间")
  due_date?: int64;

  @doc("会员开通状态")
  vip_pay_type?: int64;

  @doc("内容")
  项?: unknown;

  @doc("第1个所在的收藏夹mlid")
  field_0?: int64;

  @doc("第（n+1）个所在的收藏夹mlid")
  n?: int64;

  @doc("……")
  __?: int64;

}

/**
 * 查询歌曲TAG
 */
@route("/audio/music-service-c/web/tag/song")
@tag("Audio")
interface 查询歌曲tag {
  @get
  @doc("查询歌曲TAG")
  查询歌曲tag(
    @query @doc("音频auid") sid: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") msg?: string,
    @query @doc("TAG列表") data?: unknown[],
    @query @doc("内容") 项?: unknown,
    @query @doc("TAG1") field_0?: string,
    @query @doc("TAG(n+1)") n?: string,
    @query @doc("……") __?: string,
    @query @doc("song") type?: string,
    @query @doc("？？？") subtype?: int64,
    @query @doc("TAG id？？") key?: int64,
    @query @doc("TAG名") info?: string,
  ): ApiResponse<unknown>;
}

/**
 * 查询歌曲创作成员列表
 */
@route("/audio/music-service-c/web/member/song")
@tag("Audio")
interface 查询歌曲创作成员列表 {
  @get
  @doc("查询歌曲创作成员列表")
  查询歌曲创作成员列表(
    @query @doc("音频auid") sid: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") msg?: string,
    @query @doc("成员类型列表") data?: unknown[],
    @query @doc("内容") 项?: unknown,
    @query @doc("成员类型1") field_0?: string,
    @query @doc("成员类型(n+1)") n?: string,
    @query @doc("……") __?: string,
    @query @doc("成员列表") list?: unknown[],
    @query @doc("成员类型代码") type?: int64,
    @query @doc("内容") 项?: unknown,
    @query @doc("成员1") field_0?: string,
    @query @doc("成员(n+1)") n?: string,
    @query @doc("……") __?: string,
    @query @doc("0") mid?: int64,
    @query @doc("成员名") name?: string,
    @query @doc("成员id？？") member_id?: int64,
  ): ApiResponse<unknown>;
}

/**
 * 获取歌曲歌词
 */
@route("/audio/music-service-c/web/song/lyric")
@tag("Audio")
interface 获取歌曲歌词 {
  @get
  @doc("获取歌曲歌词")
  获取歌曲歌词(
    @query @doc("音频auid") sid: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") msg?: string,
    @query @doc("lrc格式歌词信息") data?: unknown,
  ): ApiResponse<unknown>;
}
