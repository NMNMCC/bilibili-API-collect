import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Bangumi;

/**
 * 获取剧集索引
 */
@route("/pgc/season/index/result")
@tag("Bangumi")
interface 获取剧集索引 {
  @get
  @doc("获取剧集索引")
  获取剧集索引(
    @query @doc("类别") season_type: int64,
    @query @doc("未知作用") type: int64,
    @query @doc("页码") page: int64,
    @query @doc("每页项数") pagesize: int64,
    @query @doc("类型") season_version: int64,
    @query @doc("配音") spoken_language_type: int64,
    @query @doc("地区") area: string,
    @query @doc("状态") is_finish: int64,
    @query @doc("版权") copyright: string,
    @query @doc("付费类型") season_status: string,
    @query @doc("季度") season_month: int64,
    @query @doc("年份") year: string,
    @query @doc("年份") release_date: string,
    @query @doc("风格") style_id: int64,
    @query @doc("出品方") producer_id: int64,
    @query @doc("排序指标") order: int64,
    @query @doc("排序方向") sort: int64,
    @query @doc("未知作用") st: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("数据本体") data?: Record<unknown>,
    @query @doc("是否有下一页") has_next?: int64,
    @query @doc("剧集列表") list?: unknown[],
    @query @doc("当前页码") num?: int64,
    @query @doc("每页数量") size?: int64,
    @query @doc("总剧集数") total?: int64,
    @query @doc("内容") 项?: unknown,
    @query @doc("剧集信息 1") field_0?: Record<unknown>,
    @query @doc("剧集信息 (n+1)") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("角标文本") badge?: string,
    @query @doc("角标信息") badge_info?: Record<unknown>,
    @query @doc("角标类型") badge_type?: int64,
    @query @doc("封面图片 URL") cover?: string,
    @query @doc("第一话信息") first_ep?: Record<unknown>,
    @query @doc("剧集进度显示") index_show?: string,
    @query @doc("是否完结") is_finish?: int64,
    @query @doc("剧集播放页链接") link?: string,
    @query @doc("剧集 md id") media_id?: int64,
    @query @doc("排序显示文本") order?: string,
    @query @doc("排序类型") order_type?: string,
    @query @doc("评分") score?: string,
    @query @doc("剧集 ss id") season_id?: int64,
    @query @doc("剧集状态") season_status?: int64,
    @query @doc("剧集类别") season_type?: int64,
    @query @doc("副标题") subTitle?: string,
    @query @doc("标题") title?: string,
    @query @doc("标题图标 URL") title_icon?: string,
    @query @doc("角标背景色") bg_color?: string,
    @query @doc("角标背景色") bg_color_night?: string,
    @query @doc("角标文本") text?: string,
    @query @doc("第一话封面 URL") cover?: string,
    @query @doc("第一话 ep id") ep_id?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("是否有下一页")
  has_next?: int64;

  @doc("剧集列表")
  list?: unknown[];

  @doc("当前页码")
  num?: int64;

  @doc("每页数量")
  size?: int64;

  @doc("总剧集数")
  total?: int64;

  @doc("内容")
  项?: unknown;

  @doc("剧集信息 1")
  field_0?: Record<unknown>;

  @doc("剧集信息 (n+1)")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("角标文本")
  badge?: string;

  @doc("角标信息")
  badge_info?: Record<unknown>;

  @doc("角标类型")
  badge_type?: int64;

  @doc("封面图片 URL")
  cover?: string;

  @doc("第一话信息")
  first_ep?: Record<unknown>;

  @doc("剧集进度显示")
  index_show?: string;

  @doc("是否完结")
  is_finish?: int64;

  @doc("剧集播放页链接")
  link?: string;

  @doc("剧集 md id")
  media_id?: int64;

  @doc("排序显示文本")
  order?: string;

  @doc("排序类型")
  order_type?: string;

  @doc("评分")
  score?: string;

  @doc("剧集 ss id")
  season_id?: int64;

  @doc("剧集状态")
  season_status?: int64;

  @doc("剧集类别")
  season_type?: int64;

  @doc("副标题")
  subTitle?: string;

  @doc("标题")
  title?: string;

  @doc("标题图标 URL")
  title_icon?: string;

}

/**
 * badge_info 对象
 */
@doc("badge_info 数据模型")
model Badge_info {
  @doc("角标背景色")
  bg_color?: string;

  @doc("角标背景色")
  bg_color_night?: string;

  @doc("角标文本")
  text?: string;

}

/**
 * first_ep 对象
 */
@doc("first_ep 数据模型")
model First_ep {
  @doc("第一话封面 URL")
  cover?: string;

  @doc("第一话 ep id")
  ep_id?: int64;

}
