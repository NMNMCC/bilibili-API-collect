import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Article;

/**
 * 获取专栏显示卡片信息
 */
@route("/x/article/cards")
@tag("Article")
interface 获取专栏显示卡片信息 {
  @get
  @doc("获取专栏显示卡片信息")
  获取专栏显示卡片信息(
    @query @doc("内容") 参数: unknown,
    @query @doc("被查询的 id 列表") ids: string,
    @query @doc("`333.1305`") web_location: string,
    @query @doc("WBI 签名") w_rid: string,
    @query @doc("UNIX 秒级时间戳") wts: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("数据本体") data?: Record<unknown>,
    @query @doc("错误信息") message?: string,
    @query @doc("`1`") ttl?: int64,
    @query @doc("分区完整名称") area_v2_name?: string,
    @query @doc("直播封面") cover?: string,
    @query @doc("主播头像") face?: string,
    @query @doc("直播状态") live_status?: int64,
    @query @doc("在线人数") online?: int64,
    @query @doc("直播间长 id") room_id?: int64,
    @query @doc("直播间标题") title?: string,
    @query @doc("主播 UID (mid)") uid?: int64,
    @query @doc("主播用户名") uname?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("分区完整名称")
  area_v2_name?: string;

  @doc("直播封面")
  cover?: string;

  @doc("主播头像")
  face?: string;

  @doc("直播状态")
  live_status?: int64;

  @doc("在线人数")
  online?: int64;

  @doc("直播间长 id")
  room_id?: int64;

  @doc("直播间标题")
  title?: string;

  @doc("主播 UID (mid)")
  uid?: int64;

  @doc("主播用户名")
  uname?: string;

}
