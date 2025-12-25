import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Opus;

/**
 * 获取图文详细信息
 */
@route("/x/polymer/web-dynamic/v1/opus/detail")
@tag("Opus")
interface 获取图文详细信息 {
  @get
  @doc("获取图文详细信息")
  获取图文详细信息(
    @query @doc("动态 id") id: string,
    @query @doc("时区偏移") timezone_offset: int64,
    @query @doc("功能") features: string,
    @query @doc("返回值") code?: int64,
    @query @doc("数据本体") data?: Record<unknown>,
    @query @doc("错误信息") message?: string,
    @query @doc("`1`") ttl?: int64,
    @query @doc("项") item?: Record<unknown>,
    @query @doc("基本信息") basic?: Record<unknown>,
    @query @doc("动态 id") id_str?: string,
    @query @doc("模块信息") modules?: unknown,
    @query @doc("类型") type?: int64,
    @query @doc("回滚信息") fallback?: int64,
    @query @doc("评论对象 id 字符串") comment_id_str?: string,
    @query @doc("评论区类型") comment_type?: int64,
    @query @doc("点赞图标?") like_icon?: Record<unknown>,
    @query @doc("关联 id 字符串") rid_str?: string,
    @query @doc("图文标题") title?: string,
    @query @doc("作者 mid (UID)") uid?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("项")
  item?: Record<unknown>;

}

/**
 * data.item 对象
 */
@doc("data.item 数据模型")
model Dataitem {
  @doc("基本信息")
  basic?: Record<unknown>;

  @doc("动态 id")
  id_str?: string;

  @doc("模块信息")
  modules?: unknown;

  @doc("类型")
  type?: int64;

  @doc("回滚信息")
  fallback?: int64;

}

/**
 * data.item.basic 对象
 */
@doc("data.item.basic 数据模型")
model Dataitembasic {
  @doc("评论对象 id 字符串")
  comment_id_str?: string;

  @doc("评论区类型")
  comment_type?: int64;

  @doc("点赞图标?")
  like_icon?: Record<unknown>;

  @doc("关联 id 字符串")
  rid_str?: string;

  @doc("图文标题")
  title?: string;

  @doc("作者 mid (UID)")
  uid?: int64;

}

/**
 * data.item.basic.like_icon 对象
 */
@doc("data.item.basic.like_icon 数据模型")
model Dataitembasiclike_icon {
}
