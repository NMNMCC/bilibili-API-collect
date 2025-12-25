import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Webwidget;

/**
 * 获取各分区的轮播图_web端
 */
@route("/x/web-show/region/banner")
@tag("Webwidget")
interface 获取各分区的轮播图_web端 {
  @get
  @doc("获取各分区的轮播图_web端")
  获取各分区的轮播图_web端(
    @query @doc("目标分区id") region_id: int64,
    @query @doc("Wbi 签名") w_rid: string,
    @query @doc("当前时间戳") wts: int64,
    @query @doc("--") __?: unknown,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: string,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("--") __?: unknown,
    @query @doc("存储轮播图的对象") region_banner_list?: unknown[],
    @query @doc("内容") 项?: unknown,
    @query @doc("--") __?: unknown,
    @query @doc("第一个轮播图对象") field_0?: Record<unknown>,
    @query @doc("第 (n+1) 轮播图对象") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("--") __?: unknown,
    @query @doc("封面资源路径") image?: string,
    @query @doc("封面标题") title?: string,
    @query @doc("封面子标题") sub_title?: string,
    @query @doc("点击封面后指向的链接") url?: string,
    @query @doc("分区参见[视频分区一览v2](../video/video_zone_v2.md)") rid?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("--")
  __?: unknown;

  @doc("存储轮播图的对象")
  region_banner_list?: unknown[];

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("内容")
  项?: unknown;

  @doc("--")
  __?: unknown;

  @doc("第一个轮播图对象")
  field_0?: Record<unknown>;

  @doc("第 (n+1) 轮播图对象")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("--")
  __?: unknown;

  @doc("封面资源路径")
  image?: string;

  @doc("封面标题")
  title?: string;

  @doc("封面子标题")
  sub_title?: string;

  @doc("点击封面后指向的链接")
  url?: string;

  @doc("分区参见[视频分区一览v2](../video/video_zone_v2.md)")
  rid?: int64;

}
