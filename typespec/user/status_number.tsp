import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.User;

/**
 * 关系状态数
 */
@route("/x/relation/stat")
@tag("User")
interface 关系状态数 {
  @get
  @doc("关系状态数")
  关系状态数(
    @query @doc("APP登录Token") access_key: string,
    @query @doc("目标用户mid") vmid: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("目标用户mid") mid?: int64,
    @query @doc("关注数") following?: int64,
    @query @doc("悄悄关注数") whisper?: int64,
    @query @doc("黑名单数") black?: int64,
    @query @doc("粉丝数") follower?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("目标用户mid")
  mid?: int64;

  @doc("关注数")
  following?: int64;

  @doc("悄悄关注数")
  whisper?: int64;

  @doc("黑名单数")
  black?: int64;

  @doc("粉丝数")
  follower?: int64;

}

/**
 * UP主状态数
 */
@route("/x/space/upstat")
@tag("User")
interface Up主状态数 {
  @get
  @doc("UP主状态数")
  up主状态数(
    @query @doc("APP登录Token") access_key: string,
    @query @doc("目标用户mid") mid: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("视频播放量") archive?: Record<unknown>,
    @query @doc("专栏阅读量") article?: Record<unknown>,
    @query @doc("获赞次数") likes?: int64,
    @query @doc("视频播放量") view?: int64,
    @query @doc("专栏阅读量") view?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("视频播放量")
  archive?: Record<unknown>;

  @doc("专栏阅读量")
  article?: Record<unknown>;

  @doc("获赞次数")
  likes?: int64;

}

/**
 * archive 对象
 */
@doc("archive 数据模型")
model Archive {
  @doc("视频播放量")
  view?: int64;

}

/**
 * article 对象
 */
@doc("article 数据模型")
model Article {
  @doc("专栏阅读量")
  view?: int64;

}

/**
 * 用户导航栏状态数
 */
@route("/x/space/navnum")
@tag("User")
interface 用户导航栏状态数 {
  @get
  @doc("用户导航栏状态数")
  用户导航栏状态数(
    @query @doc("目标用户mid") mid: int64,
    @query @doc("333.999") web_location: string,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("投稿视频数") video?: int64,
    @query @doc("追番数") bangumi?: int64,
    @query @doc("追剧数") cinema?: int64,
    @query @doc("视频列表数") channel?: Record<unknown>,
    @query @doc("收藏夹数") favourite?: Record<unknown>,
    @query @doc("关注TAG数") tag?: int64,
    @query @doc("投稿专栏数") article?: int64,
    @query @doc("0") playlist?: int64,
    @query @doc("投稿图文数") album?: int64,
    @query @doc("投稿音频数") audio?: int64,
    @query @doc("投稿课程数") pugv?: int64,
    @query @doc("动态数") upos?: int64,
    @query @doc("视频合集数") season_num?: int64,
    @query @doc("视频列表数") master?: int64,
    @query @doc("视频列表数") guest?: int64,
    @query @doc("全部收藏夹数") master?: int64,
    @query @doc("公开收藏夹数") guest?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("投稿视频数")
  video?: int64;

  @doc("追番数")
  bangumi?: int64;

  @doc("追剧数")
  cinema?: int64;

  @doc("视频列表数")
  channel?: Record<unknown>;

  @doc("收藏夹数")
  favourite?: Record<unknown>;

  @doc("关注TAG数")
  tag?: int64;

  @doc("投稿专栏数")
  article?: int64;

  @doc("0")
  playlist?: int64;

  @doc("投稿图文数")
  album?: int64;

  @doc("投稿音频数")
  audio?: int64;

  @doc("投稿课程数")
  pugv?: int64;

  @doc("动态数")
  upos?: int64;

  @doc("视频合集数")
  season_num?: int64;

}

/**
 * channel 对象
 */
@doc("channel 数据模型")
model Channel {
  @doc("视频列表数")
  master?: int64;

  @doc("视频列表数")
  guest?: int64;

}

/**
 * favourite 对象
 */
@doc("favourite 数据模型")
model Favourite {
  @doc("全部收藏夹数")
  master?: int64;

  @doc("公开收藏夹数")
  guest?: int64;

}

/**
 * 相簿投稿数
 */
@route("/link_draw/v1/doc/upload_count")
@tag("User")
interface 相簿投稿数 {
  @get
  @doc("相簿投稿数")
  相簿投稿数(
    @query @doc("目标用户mid") uid: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") msg?: string,
    @query @doc("错误信息") message?: string,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("相簿总数") all_count?: int64,
    @query @doc("发布绘画数") draw_count?: int64,
    @query @doc("发布摄影数") photo_count?: int64,
    @query @doc("发布日常（图片动态）数") daily_count?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("相簿总数")
  all_count?: int64;

  @doc("发布绘画数")
  draw_count?: int64;

  @doc("发布摄影数")
  photo_count?: int64;

  @doc("发布日常（图片动态）数")
  daily_count?: int64;

}
