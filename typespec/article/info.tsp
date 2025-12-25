import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Article;

/**
 * 获取专栏文章基本信息
 */
@route("/x/article/viewinfo")
@tag("Article")
interface 获取专栏文章基本信息 {
  @get
  @doc("获取专栏文章基本信息")
  获取专栏文章基本信息(
    @query @doc("专栏cvid") id: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("是否点赞") like?: int64,
    @query @doc("是否关注文章作者") attention?: boolean,
    @query @doc("是否收藏") favorite?: boolean,
    @query @doc("为文章投币数") coin?: int64,
    @query @doc("状态数信息") stats?: Record<unknown>,
    @query @doc("文章标题") title?: string,
    @query @doc("文章头图url") banner_url?: string,
    @query @doc("文章作者mid") mid?: int64,
    @query @doc("文章作者昵称") author_name?: string,
    @query @doc("true") is_author?: boolean,
    @query @doc("动态封面") image_urls?: unknown[],
    @query @doc("封面图片") origin_image_urls?: unknown[],
    @query @doc("true") shareable?: boolean,
    @query @doc("true") show_later_watch?: boolean,
    @query @doc("true") show_small_window?: boolean,
    @query @doc("是否收于文集") in_list?: boolean,
    @query @doc("上一篇文章cvid") pre?: int64,
    @query @doc("下一篇文章cvid") next?: int64,
    @query @doc("分享方式列表") share_channels?: unknown[],
    @query @doc("文章类别") type?: int64,
    @query @doc("阅读数") view?: int64,
    @query @doc("收藏数") favorite?: int64,
    @query @doc("点赞数") like?: int64,
    @query @doc("点踩数") dislike?: int64,
    @query @doc("评论数") reply?: int64,
    @query @doc("分享数") share?: int64,
    @query @doc("投币数") coin?: int64,
    @query @doc("动态转发数") dynamic?: int64,
    @query @doc("内容") 项?: unknown,
    @query @doc("动态封面图片url") field_0?: string,
    @query @doc("内容") 项?: unknown,
    @query @doc("文章封面图片url") field_0?: string,
    @query @doc("内容") 项?: unknown,
    @query @doc("分享项：qq") field_0?: Record<unknown>,
    @query @doc("分享项：qq空间") field_1?: Record<unknown>,
    @query @doc("分享项：微信") field_2?: Record<unknown>,
    @query @doc("分享项：朋友圈") field_3?: Record<unknown>,
    @query @doc("分享项：微博") field_4?: Record<unknown>,
    @query @doc("分享名称") name?: string,
    @query @doc("分享图片url") picture?: string,
    @query @doc("分享代号") share_channel?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("是否点赞")
  like?: int64;

  @doc("是否关注文章作者")
  attention?: boolean;

  @doc("是否收藏")
  favorite?: boolean;

  @doc("为文章投币数")
  coin?: int64;

  @doc("状态数信息")
  stats?: Record<unknown>;

  @doc("文章标题")
  title?: string;

  @doc("文章头图url")
  banner_url?: string;

  @doc("文章作者mid")
  mid?: int64;

  @doc("文章作者昵称")
  author_name?: string;

  @doc("true")
  is_author?: boolean;

  @doc("动态封面")
  image_urls?: unknown[];

  @doc("封面图片")
  origin_image_urls?: unknown[];

  @doc("true")
  shareable?: boolean;

  @doc("true")
  show_later_watch?: boolean;

  @doc("true")
  show_small_window?: boolean;

  @doc("是否收于文集")
  in_list?: boolean;

  @doc("上一篇文章cvid")
  pre?: int64;

  @doc("下一篇文章cvid")
  next?: int64;

  @doc("分享方式列表")
  share_channels?: unknown[];

  @doc("文章类别")
  type?: int64;

}

/**
 * stats 对象
 */
@doc("stats 数据模型")
model Stats {
  @doc("阅读数")
  view?: int64;

  @doc("收藏数")
  favorite?: int64;

  @doc("点赞数")
  like?: int64;

  @doc("点踩数")
  dislike?: int64;

  @doc("评论数")
  reply?: int64;

  @doc("分享数")
  share?: int64;

  @doc("投币数")
  coin?: int64;

  @doc("动态转发数")
  dynamic?: int64;

  @doc("内容")
  项?: unknown;

  @doc("动态封面图片url")
  field_0?: string;

  @doc("内容")
  项?: unknown;

  @doc("文章封面图片url")
  field_0?: string;

  @doc("内容")
  项?: unknown;

  @doc("分享项：qq")
  field_0?: Record<unknown>;

  @doc("分享项：qq空间")
  field_1?: Record<unknown>;

  @doc("分享项：微信")
  field_2?: Record<unknown>;

  @doc("分享项：朋友圈")
  field_3?: Record<unknown>;

  @doc("分享项：微博")
  field_4?: Record<unknown>;

  @doc("分享名称")
  name?: string;

  @doc("分享图片url")
  picture?: string;

  @doc("分享代号")
  share_channel?: string;

}
