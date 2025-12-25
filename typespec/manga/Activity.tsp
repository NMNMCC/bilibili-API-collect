import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Manga;

/**
 * 分享漫画
 */
@route("/twirp/activity.v1.Activity/ShareComic")
@tag("Manga")
interface 分享漫画 {
  @post
  @doc("分享漫画")
  分享漫画(
    @body @doc("平台") platform: string,
    @body @doc("返回值") code?: unknown,
    @body @doc("错误信息") msg?: string,
    @body @doc("错误信息") meta?: Record<unknown>,
    @body @doc("`code` 为 0，`msg` 为空时存在") data?: Record<unknown>,
    @body @doc("msg") code?: unknown,
    @body @doc("空") field_0?: int64,
    @body @doc("今日已分享") field_0?: int64,
    @body @doc("xxxx must be valid") invalid_argument?: string,
    @body @doc("must login") unauthenticated?: string,
    @body @doc("获取积分") point?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("获取积分")
  point?: int64;

}
