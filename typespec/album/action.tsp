import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Album;

/**
 * ~~点赞相簿~~
 */
@route("/link_draw/v2/Vote/operate")
@tag("Album")
interface 点赞相簿 {
  @post
  @doc("~~点赞相簿~~")
  点赞相簿(
    @body @doc("相簿id") doc_id: int64,
    @body @doc("操作方式") type: int64,
    @body @doc("CSRF Token（位于cookie）") csrf_token: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") msg?: string,
    @body @doc("错误信息") message?: string,
    @body @doc("数据本体") data?: Record<unknown>,
    @body @doc("操作方式") type?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("操作方式")
  type?: int64;

}

/**
 * ~~收藏相簿~~
 */
@route("/user_plus/v1/Fav/add")
@tag("Album")
interface 收藏相簿 {
  @post
  @doc("~~收藏相簿~~")
  收藏相簿(
    @body @doc("相簿id") fav_id: int64,
    @body @doc("2") biz_type: int64,
    @body @doc("CSRF Token（位于cookie）") csrf_token: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") msg?: string,
    @body @doc("错误信息") message?: string,
    @body @doc("空") data?: unknown[],
  ): ApiResponse<unknown>;
}

/**
 * 取消收藏相簿
 */
@route("/user_plus/v1/Fav/delete")
@tag("Album")
interface 取消收藏相簿 {
  @post
  @doc("取消收藏相簿")
  取消收藏相簿(
    @body @doc("相簿id") fav_id: int64,
    @body @doc("2") biz_type: int64,
    @body @doc("CSRF Token（位于cookie）") csrf_token: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") msg?: string,
    @body @doc("错误信息") message?: string,
    @body @doc("空") data?: unknown[],
  ): ApiResponse<unknown>;
}
