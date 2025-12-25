import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Opus;

/**
 * 获取用户空间图文
 */
@route("/x/polymer/web-dynamic/v1/opus/feed/space")
@tag("Opus")
interface 获取用户空间图文 {
  @get
  @doc("获取用户空间图文")
  获取用户空间图文(
    @query @doc("被获取用户的 mid (UID)") host_mid: int64,
    @query @doc("假装自己是分页信息") page: int64,
    @query @doc("偏移信息") offset: int64,
    @query @doc("类型") type: string,
    @query @doc("`333.1387`") web_location: string,
    @query @doc("WBI 签名") w_rid: string,
    @query @doc("UNIX 秒级时间戳") wts: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("数据本体") data?: Record<unknown>,
    @query @doc("错误信息") message?: string,
    @query @doc("`1`") ttl?: int64,
    @query @doc("是否还有更多") has_more?: boolean,
    @query @doc("信息本体") items?: unknown,
    @query @doc("偏移信息") offset?: string,
    @query @doc("更新数?") update_num?: int64,
    @query @doc("文本内容") content?: string,
    @query @doc("封面信息") cover?: unknown,
    @query @doc("跳转 URL") jump_url?: string,
    @query @doc("opus id") opus_id?: string,
    @query @doc("统计信息") stat?: Record<unknown>,
    @query @doc("高度") height?: int64,
    @query @doc("图片 URL") url?: string,
    @query @doc("宽度") width?: int64,
    @query @doc("点赞数") like?: string,
    @query @doc("浏览数") view?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("是否还有更多")
  has_more?: boolean;

  @doc("信息本体")
  items?: unknown;

  @doc("偏移信息")
  offset?: string;

  @doc("更新数?")
  update_num?: int64;

}

/**
 * data.items[] 对象
 */
@doc("data.items[] 数据模型")
model Dataitems {
  @doc("文本内容")
  content?: string;

  @doc("封面信息")
  cover?: unknown;

  @doc("跳转 URL")
  jump_url?: string;

  @doc("opus id")
  opus_id?: string;

  @doc("统计信息")
  stat?: Record<unknown>;

}

/**
 * data.items[].cover 对象
 */
@doc("data.items[].cover 数据模型")
model Dataitemscover {
  @doc("高度")
  height?: int64;

  @doc("图片 URL")
  url?: string;

  @doc("宽度")
  width?: int64;

}

/**
 * data.items[].stat 对象
 */
@doc("data.items[].stat 数据模型")
model Dataitemsstat {
  @doc("点赞数")
  like?: string;

  @doc("浏览数")
  view?: string;

}
