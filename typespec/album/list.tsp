import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Album;

/**
 * 获取画友首页列表
 */
@route("/link_draw/v2/Doc/index")
@tag("Album")
interface 获取画友首页列表 {
  @get
  @doc("获取画友首页列表")
  获取画友首页列表(
    @query @doc("排序方式") type: string,
    @query @doc("页码") page_num: int64,
    @query @doc("每页项数") page_size: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") msg?: string,
    @query @doc("错误信息") message?: string,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("相簿列表") items?: unknown[],
    @query @doc("总计条目数") total_count?: int64,
    @query @doc("内容") 项?: unknown,
    @query @doc("相簿 1") field_0?: Record<unknown>,
    @query @doc("相簿 (n+1)") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("作者信息") user?: Record<unknown>,
    @query @doc("相簿信息") item?: Record<unknown>,
    @query @doc("作者mid") uid?: int64,
    @query @doc("头像url") head_url?: string,
    @query @doc("昵称") name?: string,
    @query @doc("相簿id") doc_id?: int64,
    @query @doc("作者mid") poster_uid?: int64,
    @query @doc("相簿图片") pictures?: unknown[],
    @query @doc("标题") title?: string,
    @query @doc("子分区名") category?: string,
    @query @doc("投稿时间") upload_time?: int64,
    @query @doc("0") already_liked?: int64,
    @query @doc("是否已点赞") already_voted?: int64,
    @query @doc("内容") 项?: unknown,
    @query @doc("图片 1") field_0?: Record<unknown>,
    @query @doc("图片 (n+1)") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("图片url") img_src?: string,
    @query @doc("图片宽度") img_width?: int64,
    @query @doc("图片高度") img_height?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("相簿列表")
  items?: unknown[];

  @doc("总计条目数")
  total_count?: int64;

  @doc("内容")
  项?: unknown;

  @doc("相簿 1")
  field_0?: Record<unknown>;

  @doc("相簿 (n+1)")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("作者信息")
  user?: Record<unknown>;

  @doc("相簿信息")
  item?: Record<unknown>;

}

/**
 * user 对象
 */
@doc("user 数据模型")
model User {
  @doc("作者mid")
  uid?: int64;

  @doc("头像url")
  head_url?: string;

  @doc("昵称")
  name?: string;

}

/**
 * item 对象
 */
@doc("item 数据模型")
model Item {
  @doc("相簿id")
  doc_id?: int64;

  @doc("作者mid")
  poster_uid?: int64;

  @doc("相簿图片")
  pictures?: unknown[];

  @doc("标题")
  title?: string;

  @doc("子分区名")
  category?: string;

  @doc("投稿时间")
  upload_time?: int64;

  @doc("0")
  already_liked?: int64;

  @doc("是否已点赞")
  already_voted?: int64;

  @doc("内容")
  项?: unknown;

  @doc("图片 1")
  field_0?: Record<unknown>;

  @doc("图片 (n+1)")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("图片url")
  img_src?: string;

  @doc("图片宽度")
  img_width?: int64;

  @doc("图片高度")
  img_height?: int64;

}

/**
 * 获取摄影首页列表
 */
@route("/link_draw/v2/Photo/index")
@tag("Album")
interface 获取摄影首页列表 {
  @get
  @doc("获取摄影首页列表")
  获取摄影首页列表(
    @query @doc("排序方式") type: string,
    @query @doc("页码") page_num: int64,
    @query @doc("每页项数") page_size: int64,
  ): ApiResponse<unknown>;
}

/**
 * 获取画友列表
 */
@route("/link_draw/v2/Doc/list")
@tag("Album")
interface 获取画友列表 {
  @get
  @doc("获取画友列表")
  获取画友列表(
    @query @doc("类型") category: string,
    @query @doc("排序方式") type: string,
    @query @doc("页码") page_num: int64,
    @query @doc("每页项数") page_size: int64,
  ): ApiResponse<unknown>;
}

/**
 * 获取摄影列表
 */
@route("/link_draw/v2/Photo/list")
@tag("Album")
interface 获取摄影列表 {
  @get
  @doc("获取摄影列表")
  获取摄影列表(
    @query @doc("类型") category: string,
    @query @doc("排序方式") type: string,
    @query @doc("页码") page_num: int64,
    @query @doc("每页项数") page_size: int64,
  ): ApiResponse<unknown>;
}

/**
 * 获取指定用户的相簿列表
 */
@route("/link_draw/v1/doc/others")
@tag("Album")
interface 获取指定用户的相簿列表 {
  @get
  @doc("获取指定用户的相簿列表")
  获取指定用户的相簿列表(
    @query @doc("分区") biz: int64,
    @query @doc("作者mid") poster_uid: int64,
    @query @doc("页码") page_num: int64,
    @query @doc("每页项数") page_size: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") msg?: string,
    @query @doc("错误信息") message?: string,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("总计相簿数") total_count?: string,
    @query @doc("作者信息") user?: Record<unknown>,
    @query @doc("相簿列表") items?: unknown[],
    @query @doc("作者mid") uid?: string,
    @query @doc("头像url") head_url?: string,
    @query @doc("昵称") name?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("总计相簿数")
  total_count?: string;

  @doc("作者信息")
  user?: Record<unknown>;

  @doc("相簿列表")
  items?: unknown[];

}

/**
 * user 对象
 */
@doc("user 数据模型")
model User {
  @doc("作者mid")
  uid?: string;

  @doc("头像url")
  head_url?: string;

  @doc("昵称")
  name?: string;

}

/**
 * item 对象
 */
@doc("item 数据模型")
model Item {
}

/**
 * item 对象
 */
@doc("item 数据模型")
model Item {
}
