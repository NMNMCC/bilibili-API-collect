import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Video;

/**
 * 视频状态数（仅avid）
 */
@route("/archive_stat/stat")
@tag("Video")
interface 视频状态数仅avid {
  @get
  @doc("视频状态数（仅avid）")
  视频状态数仅avid(
    @query @doc("稿件avid") aid: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("稿件avid") aid?: int64,
    @query @doc("正常：播放次数<br />屏蔽：\"--\"") view?: unknown,
    @query @doc("弹幕条数") danmaku?: int64,
    @query @doc("评论条数") reply?: int64,
    @query @doc("收藏人数") favorite?: int64,
    @query @doc("投币枚数") coin?: int64,
    @query @doc("分享次数") share?: int64,
    @query @doc("0") now_rank?: int64,
    @query @doc("历史最高排行") his_rank?: int64,
    @query @doc("获赞次数") like?: int64,
    @query @doc("0") dislike?: int64,
    @query @doc("禁止转载标志") no_reprint?: int64,
    @query @doc("版权标志") copyright?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("稿件avid")
  aid?: int64;

  @doc("正常：播放次数<br />屏蔽：\"--\"")
  view?: unknown;

  @doc("弹幕条数")
  danmaku?: int64;

  @doc("评论条数")
  reply?: int64;

  @doc("收藏人数")
  favorite?: int64;

  @doc("投币枚数")
  coin?: int64;

  @doc("分享次数")
  share?: int64;

  @doc("0")
  now_rank?: int64;

  @doc("历史最高排行")
  his_rank?: int64;

  @doc("获赞次数")
  like?: int64;

  @doc("0")
  dislike?: int64;

  @doc("禁止转载标志")
  no_reprint?: int64;

  @doc("版权标志")
  copyright?: int64;

}

/**
 * 视频状态数（bvid/avid）
 */
@route("/x/web-interface/archive/stat")
@tag("Video")
interface 视频状态数bvidavid {
  @get
  @doc("视频状态数（bvid/avid）")
  视频状态数bvidavid(
    @query @doc("稿件avid") aid: int64,
    @query @doc("稿件bvid") bvid: string,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("稿件avid") aid?: int64,
    @query @doc("稿件bvid") bvid?: string,
    @query @doc("正常：播放次数<br />屏蔽：\"--\"") view?: unknown,
    @query @doc("弹幕条数") danmaku?: int64,
    @query @doc("评论条数") reply?: int64,
    @query @doc("收藏人数") favorite?: int64,
    @query @doc("投币枚数") coin?: int64,
    @query @doc("分享次数") share?: int64,
    @query @doc("0") now_rank?: int64,
    @query @doc("历史最高排行") his_rank?: int64,
    @query @doc("获赞次数") like?: int64,
    @query @doc("0") dislike?: int64,
    @query @doc("禁止转载标志") no_reprint?: int64,
    @query @doc("版权标志") copyright?: int64,
    @query @doc("警告信息") argue_msg?: string,
    @query @doc("视频评分") evaluation?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("稿件avid")
  aid?: int64;

  @doc("稿件bvid")
  bvid?: string;

  @doc("正常：播放次数<br />屏蔽：\"--\"")
  view?: unknown;

  @doc("弹幕条数")
  danmaku?: int64;

  @doc("评论条数")
  reply?: int64;

  @doc("收藏人数")
  favorite?: int64;

  @doc("投币枚数")
  coin?: int64;

  @doc("分享次数")
  share?: int64;

  @doc("0")
  now_rank?: int64;

  @doc("历史最高排行")
  his_rank?: int64;

  @doc("获赞次数")
  like?: int64;

  @doc("0")
  dislike?: int64;

  @doc("禁止转载标志")
  no_reprint?: int64;

  @doc("版权标志")
  copyright?: int64;

  @doc("警告信息")
  argue_msg?: string;

  @doc("视频评分")
  evaluation?: string;

}
