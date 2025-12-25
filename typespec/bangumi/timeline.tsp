import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Bangumi;

/**
 * 获取番剧或影视时间线
 */
@route("/pgc/web/timeline")
@tag("Bangumi")
interface 获取番剧或影视时间线 {
  @get
  @doc("获取番剧或影视时间线")
  获取番剧或影视时间线(
    @query @doc("类别") types: string,
    @query @doc("开始于前几日") before: int64,
    @query @doc("结束于后几日") after: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("信息本体") result?: unknown[],
    @query @doc("内容") 项?: unknown,
    @query @doc("`before`天前信息") field_0?: Record<unknown>,
    @query @doc("从`before`天前开始第n天信息") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("当日日期") date?: string,
    @query @doc("当日日期时间戳") date_ts?: int64,
    @query @doc("一周中第几天") day_of_week?: int64,
    @query @doc("剧集列表") episodes?: unknown[],
    @query @doc("是否今日") is_today?: int64,
    @query @doc("内容") 项?: unknown,
    @query @doc("剧集1") field_0?: Record<unknown>,
    @query @doc("剧集（n+1）") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("封面图url") cover?: string,
    @query @doc("是否推迟") delay?: int64,
    @query @doc("推迟一话epid") delay_id?: int64,
    @query @doc("推迟一话名称") delay_index?: string,
    @query @doc("推迟原因") delay_reason?: string,
    @query @doc("最新一话图url") ep_cover?: string,
    @query @doc("最新一话的epid") episode_id?: int64,
    @query @doc("最新一话名称") pub_index?: string,
    @query @doc("发布时间") pub_time?: string,
    @query @doc("发布时间戳") pub_ts?: int64,
    @query @doc("是否已发布") published?: int64,
    @query @doc("-") follows?: string,
    @query @doc("-") plays?: string,
    @query @doc("剧集ssid") season_id?: int64,
    @query @doc("缩略图url") square_cover?: string,
    @query @doc("剧集标题") title?: string,
  ): ApiResponse<unknown>;
}
