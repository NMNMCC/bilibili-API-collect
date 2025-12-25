import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Webwidget;

/**
 * 获取分区当日投稿稿件数
 */
@route("/x/web-interface/online")
@tag("Webwidget")
interface 获取分区当日投稿稿件数 {
  @get
  @doc("获取分区当日投稿稿件数")
  获取分区当日投稿稿件数(
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("分区当日投稿稿件数信息") region_count?: Record<unknown>,
    @query @doc("当日投稿稿件数-动画（主分区）") field_1?: int64,
    @query @doc("当日投稿稿件数-番剧（主分区）") field_13?: int64,
    @query @doc("当日投稿稿件数-国创（主分区）") field_167?: int64,
    @query @doc("当日投稿稿件数-音乐（主分区）") field_3?: int64,
    @query @doc("当日投稿稿件数-舞蹈（主分区）") field_129?: int64,
    @query @doc("当日投稿稿件数-游戏（主分区）") field_4?: int64,
    @query @doc("当日投稿稿件数-单机游戏") field_17?: int64,
    @query @doc("当日投稿稿件数-知识（主分区）") field_36?: int64,
    @query @doc("当日投稿稿件数-数码（主分区）") field_188?: int64,
    @query @doc("当日投稿稿件数-生活（主分区）") field_160?: int64,
    @query @doc("当日投稿稿件数-搞笑") field_138?: int64,
    @query @doc("当日投稿稿件数-美食圈") field_76?: int64,
    @query @doc("当日投稿稿件数-动物圈") field_75?: int64,
    @query @doc("当日投稿稿件数-鬼畜（主分区）") field_119?: int64,
    @query @doc("当日投稿稿件数-时尚（主分区）") field_155?: int64,
    @query @doc("当日投稿稿件数-资讯（主分区）") field_202?: int64,
    @query @doc("当日投稿稿件数-广告（主分区）") field_165?: int64,
    @query @doc("当日投稿稿件数-娱乐（主分区）") field_5?: int64,
    @query @doc("当日投稿稿件数-影视（主分区）") field_181?: int64,
    @query @doc("当日投稿稿件数-纪录片（主分区）") field_177?: int64,
    @query @doc("当日投稿稿件数-电影（主分区）") field_23?: int64,
    @query @doc("当日投稿稿件数-电视剧（主分区）") field_11?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("分区当日投稿稿件数信息")
  region_count?: Record<unknown>;

}

/**
 * region_count 对象
 */
@doc("region_count 数据模型")
model Region_count {
  @doc("当日投稿稿件数-动画（主分区）")
  field_1?: int64;

  @doc("当日投稿稿件数-番剧（主分区）")
  field_13?: int64;

  @doc("当日投稿稿件数-国创（主分区）")
  field_167?: int64;

  @doc("当日投稿稿件数-音乐（主分区）")
  field_3?: int64;

  @doc("当日投稿稿件数-舞蹈（主分区）")
  field_129?: int64;

  @doc("当日投稿稿件数-游戏（主分区）")
  field_4?: int64;

  @doc("当日投稿稿件数-单机游戏")
  field_17?: int64;

  @doc("当日投稿稿件数-知识（主分区）")
  field_36?: int64;

  @doc("当日投稿稿件数-数码（主分区）")
  field_188?: int64;

  @doc("当日投稿稿件数-生活（主分区）")
  field_160?: int64;

  @doc("当日投稿稿件数-搞笑")
  field_138?: int64;

  @doc("当日投稿稿件数-美食圈")
  field_76?: int64;

  @doc("当日投稿稿件数-动物圈")
  field_75?: int64;

  @doc("当日投稿稿件数-鬼畜（主分区）")
  field_119?: int64;

  @doc("当日投稿稿件数-时尚（主分区）")
  field_155?: int64;

  @doc("当日投稿稿件数-资讯（主分区）")
  field_202?: int64;

  @doc("当日投稿稿件数-广告（主分区）")
  field_165?: int64;

  @doc("当日投稿稿件数-娱乐（主分区）")
  field_5?: int64;

  @doc("当日投稿稿件数-影视（主分区）")
  field_181?: int64;

  @doc("当日投稿稿件数-纪录片（主分区）")
  field_177?: int64;

  @doc("当日投稿稿件数-电影（主分区）")
  field_23?: int64;

  @doc("当日投稿稿件数-电视剧（主分区）")
  field_11?: int64;

}
