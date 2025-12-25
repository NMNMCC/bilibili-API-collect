import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Article;

/**
 * 获取文集基本信息
 */
@route("/x/article/list/web/articles")
@tag("Article")
interface 获取文集基本信息 {
  @get
  @doc("获取文集基本信息")
  获取文集基本信息(
    @query @doc("文集rlid") id: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("文集概览") list?: Record<unknown>,
    @query @doc("文集内的文章列表") articles?: unknown[],
    @query @doc("文集作者信息") author?: Record<unknown>,
    @query @doc("-") last?: Record<unknown>,
    @query @doc("是否关注文集作者") attention?: boolean,
    @query @doc("文集rlid") id?: int64,
    @query @doc("文集作者mid") mid?: int64,
    @query @doc("文集名称") name?: string,
    @query @doc("文集封面图片url") image_url?: string,
    @query @doc("文集更新时间") update_time?: int64,
    @query @doc("文集创建时间") ctime?: int64,
    @query @doc("文集发布时间") publish_time?: int64,
    @query @doc("文集简介") summary?: string,
    @query @doc("文集字数") words?: int64,
    @query @doc("文集阅读量") read?: int64,
    @query @doc("文集内文章数量") articles_count?: int64,
    @query @doc("1或3") state?: int64,
    @query @doc("空") reason?: string,
    @query @doc("空") apply_time?: string,
    @query @doc("空") check_time?: string,
    @query @doc("内容") 项?: unknown,
    @query @doc("文集中第1篇文章") field_0?: Record<unknown>,
    @query @doc("文集中第(n+1)篇文章") n?: Record<unknown>,
    @query @doc("专栏cvid") id?: int64,
    @query @doc("文章标题") title?: string,
    @query @doc("0") state?: int64,
    @query @doc("发布时间") publish_time?: int64,
    @query @doc("文章字数") words?: int64,
    @query @doc("文章封面") image_urls?: unknown[],
    @query @doc("文章标签") category?: Record<unknown>,
    @query @doc("文章标签列表") categories?: unknown[],
    @query @doc("文章摘要") summary?: string,
    @query @doc("文章状态数信息") stats?: Record<unknown>,
    @query @doc("是否点赞") like_state?: int64,
    @query @doc("阅读数") view?: int64,
    @query @doc("收藏数") favorite?: int64,
    @query @doc("点赞数") like?: int64,
    @query @doc("点踩数") dislike?: int64,
    @query @doc("评论数") reply?: int64,
    @query @doc("分享数") share?: int64,
    @query @doc("投币数") coin?: int64,
    @query @doc("动态转发数") dynamic?: int64,
    @query @doc("作者mid") mid?: int64,
    @query @doc("作者昵称") name?: string,
    @query @doc("作者头像url") face?: string,
    @query @doc("作者认证信息") official_verify?: Record<unknown>,
    @query @doc("作者勋章") nameplate?: Record<unknown>,
    @query @doc("作者大会员状态") vip?: Record<unknown>,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("文集概览")
  list?: Record<unknown>;

  @doc("文集内的文章列表")
  articles?: unknown[];

  @doc("文集作者信息")
  author?: Record<unknown>;

  @doc("-")
  last?: Record<unknown>;

  @doc("是否关注文集作者")
  attention?: boolean;

}

/**
 * list 对象
 */
@doc("list 数据模型")
model List {
  @doc("文集rlid")
  id?: int64;

  @doc("文集作者mid")
  mid?: int64;

  @doc("文集名称")
  name?: string;

  @doc("文集封面图片url")
  image_url?: string;

  @doc("文集更新时间")
  update_time?: int64;

  @doc("文集创建时间")
  ctime?: int64;

  @doc("文集发布时间")
  publish_time?: int64;

  @doc("文集简介")
  summary?: string;

  @doc("文集字数")
  words?: int64;

  @doc("文集阅读量")
  read?: int64;

  @doc("文集内文章数量")
  articles_count?: int64;

  @doc("1或3")
  state?: int64;

  @doc("空")
  reason?: string;

  @doc("空")
  apply_time?: string;

  @doc("空")
  check_time?: string;

  @doc("内容")
  项?: unknown;

  @doc("文集中第1篇文章")
  field_0?: Record<unknown>;

  @doc("文集中第(n+1)篇文章")
  n?: Record<unknown>;

  @doc("专栏cvid")
  id?: int64;

  @doc("文章标题")
  title?: string;

  @doc("0")
  state?: int64;

  @doc("发布时间")
  publish_time?: int64;

  @doc("文章字数")
  words?: int64;

  @doc("文章封面")
  image_urls?: unknown[];

  @doc("文章标签")
  category?: Record<unknown>;

  @doc("文章标签列表")
  categories?: unknown[];

  @doc("文章摘要")
  summary?: string;

  @doc("文章状态数信息")
  stats?: Record<unknown>;

  @doc("是否点赞")
  like_state?: int64;

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

  @doc("作者mid")
  mid?: int64;

  @doc("作者昵称")
  name?: string;

  @doc("作者头像url")
  face?: string;

  @doc("作者认证信息")
  official_verify?: Record<unknown>;

  @doc("作者勋章")
  nameplate?: Record<unknown>;

  @doc("作者大会员状态")
  vip?: Record<unknown>;

}
