import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Article;

/**
 * 点赞文章
 */
@route("/x/article/like")
@tag("Article")
interface 点赞文章 {
  @post
  @doc("点赞文章")
  点赞文章(
    @body @doc("文章cvid") id: int64,
    @body @doc("操作方式") type: int64,
    @body @doc("CSRF Token（位于cookie）") csrf: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
  ): ApiResponse<unknown>;
}

/**
 * 投币文章
 */
@route("/x/web-interface/coin/add")
@tag("Article")
interface 投币文章 {
  @post
  @doc("投币文章")
  投币文章(
    @body @doc("文章cvid") aid: int64,
    @body @doc("文章作者mid") upid: int64,
    @body @doc("投币数量") multiply: int64,
    @body @doc("2") avtype: int64,
    @body @doc("CSRF Token（位于cookie）") csrf: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
    @body @doc("信息本体") data?: Record<unknown>,
    @body @doc("是否点赞成功") like?: boolean,
  ): ApiResponse<unknown>;
}
