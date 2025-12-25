import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Fav;

/**
 * 管理收藏夹
 */
@route("/x/v3/fav/folder/add")
@tag("Fav")
interface 管理收藏夹 {
  @post
  @doc("管理收藏夹")
  管理收藏夹(
    @body @doc("收藏夹标题") title: string,
    @body @doc("收藏夹简介") intro: string,
    @body @doc("是否公开") privacy: int64,
    @body @doc("封面图url") cover: string,
    @body @doc("CSRF Token（位于cookie）") csrf: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
    @body @doc("信息本体") data?: Record<unknown>,
    @body @doc("目标收藏夹mdid") media_id: int64,
    @body @doc("修改收藏夹标题") title: string,
    @body @doc("修改收藏夹简介") intro: string,
    @body @doc("是否公开") privacy: int64,
    @body @doc("封面图url") cover: string,
    @body @doc("CSRF Token（位于cookie）") csrf: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
    @body @doc("信息本体") data?: Record<unknown>,
    @body @doc("目标收藏夹mdid列表") media_ids: unknown,
    @body @doc("CSRF Token（位于cookie）") csrf: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
    @body @doc("信息本体") data?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("目标收藏夹mdid")
  media_id?: int64;

  @doc("修改收藏夹标题")
  title?: string;

  @doc("修改收藏夹简介")
  intro?: string;

  @doc("是否公开")
  privacy?: int64;

  @doc("封面图url")
  cover?: string;

  @doc("CSRF Token（位于cookie）")
  csrf?: string;

  @doc("返回值")
  code?: int64;

  @doc("错误信息")
  message?: string;

  @doc("1")
  ttl?: int64;

  @doc("信息本体")
  data?: Record<unknown>;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("目标收藏夹mdid列表")
  media_ids?: unknown;

  @doc("CSRF Token（位于cookie）")
  csrf?: string;

  @doc("返回值")
  code?: int64;

  @doc("错误信息")
  message?: string;

  @doc("1")
  ttl?: int64;

  @doc("信息本体")
  data?: int64;

}

/**
 * 管理收藏内容
 */
@route("/x/v3/fav/resource/copy")
@tag("Fav")
interface 管理收藏内容 {
  @post
  @doc("管理收藏内容")
  管理收藏内容(
    @body @doc("源收藏夹id") src_media_id: int64,
    @body @doc("目标收藏夹id") tar_media_id: int64,
    @body @doc("当前用户mid") mid: int64,
    @body @doc("目标内容id列表") resources: unknown,
    @body @doc("平台标识") platform: string,
    @body @doc("CSRF Token（位于cookie）") csrf: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
    @body @doc("信息本体") data?: Record<unknown>,
    @body @doc("源收藏夹id") src_media_id: int64,
    @body @doc("目标收藏夹id") tar_media_id: int64,
    @body @doc("当前用户mid") mid: int64,
    @body @doc("目标内容id列表") resources: unknown,
    @body @doc("平台标识") platform: string,
    @body @doc("CSRF Token（位于cookie）") csrf: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
    @body @doc("信息本体") data?: Record<unknown>,
    @body @doc("必要") resources?: unknown,
    @body @doc("目标收藏夹id") media_id: int64,
    @body @doc("平台标识") platform: string,
    @body @doc("CSRF Token（位于cookie）") csrf: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
    @body @doc("信息本体") data?: Record<unknown>,
    @body @doc("目标收藏夹id") media_id: int64,
    @body @doc("CSRF Token（位于cookie）") csrf: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
    @body @doc("信息本体") data?: Record<unknown>,
  ): ApiResponse<unknown>;
}
