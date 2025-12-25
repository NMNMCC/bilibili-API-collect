import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Creativecenter;

/**
 * UP主视频状态数据
 */
@route("/x/web/index/stat")
@tag("Creativecenter")
interface Up主视频状态数据 {
  @get
  @doc("UP主视频状态数据")
  up主视频状态数据(
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("新增投币数") inc_coin?: int64,
    @query @doc("新增充电数") inc_elec?: int64,
    @query @doc("新增收藏数") inc_fav?: int64,
    @query @doc("新增点赞数") inc_like?: int64,
    @query @doc("新增分享数") inc_share?: int64,
    @query @doc("新增播放数") incr_click?: int64,
    @query @doc("新增弹幕数") incr_dm?: int64,
    @query @doc("新增粉丝数") incr_fans?: int64,
    @query @doc("新增评论数") incr_reply?: int64,
    @query @doc("总计播放数") total_click?: int64,
    @query @doc("总计投币数") total_coin?: int64,
    @query @doc("总计弹幕数") total_dm?: int64,
    @query @doc("总计充电数") total_elec?: int64,
    @query @doc("总计粉丝数") total_fans?: int64,
    @query @doc("总计收藏数") total_fav?: int64,
    @query @doc("总计点赞数") total_like?: int64,
    @query @doc("总计评论数") total_reply?: int64,
    @query @doc("总计分享数") total_share?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("新增投币数")
  inc_coin?: int64;

  @doc("新增充电数")
  inc_elec?: int64;

  @doc("新增收藏数")
  inc_fav?: int64;

  @doc("新增点赞数")
  inc_like?: int64;

  @doc("新增分享数")
  inc_share?: int64;

  @doc("新增播放数")
  incr_click?: int64;

  @doc("新增弹幕数")
  incr_dm?: int64;

  @doc("新增粉丝数")
  incr_fans?: int64;

  @doc("新增评论数")
  incr_reply?: int64;

  @doc("总计播放数")
  total_click?: int64;

  @doc("总计投币数")
  total_coin?: int64;

  @doc("总计弹幕数")
  total_dm?: int64;

  @doc("总计充电数")
  total_elec?: int64;

  @doc("总计粉丝数")
  total_fans?: int64;

  @doc("总计收藏数")
  total_fav?: int64;

  @doc("总计点赞数")
  total_like?: int64;

  @doc("总计评论数")
  total_reply?: int64;

  @doc("总计分享数")
  total_share?: int64;

}

/**
 * 新版UP主视频数据比较
 */
@route("/x/web/data/archive_diagnose/compare")
@tag("Creativecenter")
interface 新版up主视频数据比较 {
  @get
  @doc("新版UP主视频数据比较")
  新版up主视频数据比较(
    @query @doc("时间戳") t?: int64,
    @query @doc("比较最近的N条视频") size?: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("最近的视频") list?: unknown,
    @query @doc("av号") aid?: int64,
    @query @doc("bv号") bvid?: string,
    @query @doc("封面url") cover?: string,
    @query @doc("标题") title?: string,
    @query @doc("发布时间") pubtime?: int64,
    @query @doc("视频长度（秒）") duration?: int64,
    @query @doc("播放数") play?: int64,
    @query @doc("未知") vt?: int64,
    @query @doc("点赞数") like?: int64,
    @query @doc("评论数") comment?: int64,
    @query @doc("弹幕数") dm?: int64,
    @query @doc("收藏数") fav?: int64,
    @query @doc("投币数") coin?: int64,
    @query @doc("分享数") share?: int64,
    @query @doc("完播比，用户平均在百分之多少退出") full_play_ratio?: int64,
    @query @doc("游客播放数，这个视频有多少是游客播放") play_viewer_rate?: int64,
    @query @doc("粉丝观看率，多少粉丝看了这个视频") active_fans_rate?: int64,
    @query @doc("?") active_fans_med?: int64,
    @query @doc("封标点击率") tm_rate?: int64,
    @query @doc("你自己平均封标点击率") tm_rate_med?: int64,
    @query @doc("同类up粉丝封标点击率") tm_fan_simi_rate_med?: int64,
    @query @doc("同类up游客封标点击率") tm_viewer_simi_rate_med?: int64,
    @query @doc("粉丝封标点击率") tm_fan_rate?: int64,
    @query @doc("游客封标点击率") tm_viewer_rate?: int64,
    @query @doc("封标点击率超过n%同类稿件") tm_pass_rate?: int64,
    @query @doc("粉丝封标点击率超过n%同类稿件") tm_fan_pass_rate?: int64,
    @query @doc("游客封标点击率超过n%同类稿件") tm_viewer_pass_rate?: int64,
    @query @doc("3秒退出率") crash_rate?: int64,
    @query @doc("?") crash_rate_med?: int64,
    @query @doc("同类up粉丝3秒退出率") crash_fan_simi_rate_med?: int64,
    @query @doc("同类up游客3秒退出率") crash_viewer_simi_rate_med?: int64,
    @query @doc("粉丝3秒退出率") crash_fan_rate?: int64,
    @query @doc("游客3秒退出率") crash_viewer_rate?: int64,
    @query @doc("互动率") interact_rate?: int64,
    @query @doc("同类up粉丝互动率") interact_fan_simi_rate_med?: int64,
    @query @doc("同类up游客互动率") interact_viewer_simi_rate_med?: int64,
    @query @doc("粉丝互动率") interact_fan_rate?: int64,
    @query @doc("游客互动率") interact_viewer_rate?: int64,
    @query @doc("平均播放时间") avg_play_time?: int64,
    @query @doc("涨粉") total_new_attention_cnt?: int64,
    @query @doc("播转粉率") play_trans_fan_rate?: int64,
    @query @doc("其他up平均播转粉率") play_trans_fan_rate_med?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("最近的视频")
  list?: unknown;

  @doc("av号")
  aid?: int64;

  @doc("bv号")
  bvid?: string;

  @doc("封面url")
  cover?: string;

  @doc("标题")
  title?: string;

  @doc("发布时间")
  pubtime?: int64;

  @doc("视频长度（秒）")
  duration?: int64;

  @doc("播放数")
  play?: int64;

  @doc("未知")
  vt?: int64;

  @doc("点赞数")
  like?: int64;

  @doc("评论数")
  comment?: int64;

  @doc("弹幕数")
  dm?: int64;

  @doc("收藏数")
  fav?: int64;

  @doc("投币数")
  coin?: int64;

  @doc("分享数")
  share?: int64;

  @doc("完播比，用户平均在百分之多少退出")
  full_play_ratio?: int64;

  @doc("游客播放数，这个视频有多少是游客播放")
  play_viewer_rate?: int64;

  @doc("粉丝观看率，多少粉丝看了这个视频")
  active_fans_rate?: int64;

  @doc("?")
  active_fans_med?: int64;

  @doc("封标点击率")
  tm_rate?: int64;

  @doc("你自己平均封标点击率")
  tm_rate_med?: int64;

  @doc("同类up粉丝封标点击率")
  tm_fan_simi_rate_med?: int64;

  @doc("同类up游客封标点击率")
  tm_viewer_simi_rate_med?: int64;

  @doc("粉丝封标点击率")
  tm_fan_rate?: int64;

  @doc("游客封标点击率")
  tm_viewer_rate?: int64;

  @doc("封标点击率超过n%同类稿件")
  tm_pass_rate?: int64;

  @doc("粉丝封标点击率超过n%同类稿件")
  tm_fan_pass_rate?: int64;

  @doc("游客封标点击率超过n%同类稿件")
  tm_viewer_pass_rate?: int64;

  @doc("3秒退出率")
  crash_rate?: int64;

  @doc("?")
  crash_rate_med?: int64;

  @doc("同类up粉丝3秒退出率")
  crash_fan_simi_rate_med?: int64;

  @doc("同类up游客3秒退出率")
  crash_viewer_simi_rate_med?: int64;

  @doc("粉丝3秒退出率")
  crash_fan_rate?: int64;

  @doc("游客3秒退出率")
  crash_viewer_rate?: int64;

  @doc("互动率")
  interact_rate?: int64;

  @doc("同类up粉丝互动率")
  interact_fan_simi_rate_med?: int64;

  @doc("同类up游客互动率")
  interact_viewer_simi_rate_med?: int64;

  @doc("粉丝互动率")
  interact_fan_rate?: int64;

  @doc("游客互动率")
  interact_viewer_rate?: int64;

  @doc("涨粉")
  total_new_attention_cnt?: int64;

  @doc("播转粉率")
  play_trans_fan_rate?: int64;

  @doc("其他up平均播转粉率")
  play_trans_fan_rate_med?: int64;

}

/**
 * UP主专栏状态数据
 */
@route("/x/web/data/article")
@tag("Creativecenter")
interface Up主专栏状态数据 {
  @get
  @doc("UP主专栏状态数据")
  up主专栏状态数据(
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("总计阅读数") view?: int64,
    @query @doc("总计评论数") reply?: int64,
    @query @doc("总计点赞数") like?: int64,
    @query @doc("总计投币数") coin?: int64,
    @query @doc("总计收藏数") fav?: int64,
    @query @doc("总计分享数") share?: int64,
    @query @doc("新增阅读数") incr_view?: int64,
    @query @doc("新增评论数") incr_reply?: int64,
    @query @doc("新增点赞数") incr_like?: int64,
    @query @doc("新增投币数") incr_coin?: int64,
    @query @doc("新增收藏数") incr_fav?: int64,
    @query @doc("新增分享数") incr_share?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("总计阅读数")
  view?: int64;

  @doc("总计评论数")
  reply?: int64;

  @doc("总计点赞数")
  like?: int64;

  @doc("总计投币数")
  coin?: int64;

  @doc("总计收藏数")
  fav?: int64;

  @doc("总计分享数")
  share?: int64;

  @doc("新增阅读数")
  incr_view?: int64;

  @doc("新增评论数")
  incr_reply?: int64;

  @doc("新增点赞数")
  incr_like?: int64;

  @doc("新增投币数")
  incr_coin?: int64;

  @doc("新增收藏数")
  incr_fav?: int64;

  @doc("新增分享数")
  incr_share?: int64;

}

/**
 * 视频数据增量趋势
 */
@route("/x/web/data/pandect")
@tag("Creativecenter")
interface 视频数据增量趋势 {
  @get
  @doc("视频数据增量趋势")
  视频数据增量趋势(
    @query @doc("目标数据类型") type: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("趋势列表") data?: unknown[],
    @query @doc("内容") 项?: unknown,
    @query @doc("1天前的数据") field_0?: Record<unknown>,
    @query @doc("（n+1）天前的数据") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("30天前的数据") field_29?: Record<unknown>,
    @query @doc("对应时间") date_key?: int64,
    @query @doc("增加数量") total_inc?: int64,
  ): ApiResponse<unknown>;
}

/**
 * 专栏数据增量趋势
 */
@route("/x/web/data/article/thirty")
@tag("Creativecenter")
interface 专栏数据增量趋势 {
  @get
  @doc("专栏数据增量趋势")
  专栏数据增量趋势(
    @query @doc("目标数据类型") type: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("趋势列表") data?: unknown[],
    @query @doc("内容") 项?: unknown,
    @query @doc("30天前的数据") field_0?: Record<unknown>,
    @query @doc("（30-n）天前的数据") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("1天前的数据") field_29?: Record<unknown>,
    @query @doc("对应时间") date_key?: int64,
    @query @doc("增加数量") total_inc?: int64,
  ): ApiResponse<unknown>;
}

/**
 * 稿件操作来源占比情况
 */
@route("/x/web/data/survey")
@tag("Creativecenter")
interface 稿件操作来源占比情况 {
  @get
  @doc("稿件操作来源占比情况")
  稿件操作来源占比情况(
    @query @doc("目标数据类型") type: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("上一天的情况") _YYYYMMDD_?: Record<unknown>,
    @query @doc("稿件情况") arc_inc?: unknown[],
    @query @doc("总计增长情况") total_inc?: int64,
    @query @doc("分区排名情况") type_rank?: Record<unknown>,
    @query @doc("内容") 项?: unknown,
    @query @doc("稿件1") field_0?: Record<unknown>,
    @query @doc("稿件（n+1）") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("稿件avid") aid?: int64,
    @query @doc("稿件bvid") bvid?: string,
    @query @doc("统计时间") daytime?: int64,
    @query @doc("稿件增长情况数") incr?: int64,
    @query @doc("0") interactive?: int64,
    @query @doc("稿件发布时间") ptime?: int64,
    @query @doc("稿件标题") title?: string,
    @query @doc("该排名数") _分区名_?: int64,
    @query @doc("……") __?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
}

/**
 * ｛YYYYMMDD｝ 对象
 */
@doc("｛YYYYMMDD｝ 数据模型")
model Yyyymmdd {
  @doc("稿件情况")
  arc_inc?: unknown[];

  @doc("总计增长情况")
  total_inc?: int64;

  @doc("分区排名情况")
  type_rank?: Record<unknown>;

  @doc("内容")
  项?: unknown;

  @doc("稿件1")
  field_0?: Record<unknown>;

  @doc("稿件（n+1）")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("稿件avid")
  aid?: int64;

  @doc("稿件bvid")
  bvid?: string;

  @doc("统计时间")
  daytime?: int64;

  @doc("稿件增长情况数")
  incr?: int64;

  @doc("0")
  interactive?: int64;

  @doc("稿件发布时间")
  ptime?: int64;

  @doc("稿件标题")
  title?: string;

}

/**
 * type_rank 对象
 */
@doc("type_rank 数据模型")
model Type_rank {
  @doc("该排名数")
  _分区名_?: int64;

  @doc("……")
  __?: int64;

}

/**
 * 播放来源占比情况（平台及方式）
 */
@route("/x/web/data/playsource")
@tag("Creativecenter")
interface 播放来源占比情况平台及方式 {
  @get
  @doc("播放来源占比情况（平台及方式）")
  播放来源占比情况平台及方式(
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("播放方式情况") page_source?: Record<unknown>,
    @query @doc("播放平台情况") play_proportion?: Record<unknown>,
    @query @doc("通过动态") dynamic?: int64,
    @query @doc("其他方式") other?: int64,
    @query @doc("通过推荐列表") related_video?: int64,
    @query @doc("通过搜索") search?: int64,
    @query @doc("空间列表播放") space?: int64,
    @query @doc("天马（APP推荐信息流）来源") tenma?: int64,
    @query @doc("安卓端") android?: int64,
    @query @doc("移动端h5页面") h5?: int64,
    @query @doc("ios端") ios?: int64,
    @query @doc("站外") out?: int64,
    @query @doc("电脑版网页") pc?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("播放方式情况")
  page_source?: Record<unknown>;

  @doc("播放平台情况")
  play_proportion?: Record<unknown>;

}

/**
 * page_source 对象
 */
@doc("page_source 数据模型")
model Page_source {
  @doc("通过动态")
  dynamic?: int64;

  @doc("其他方式")
  other?: int64;

  @doc("通过推荐列表")
  related_video?: int64;

  @doc("通过搜索")
  search?: int64;

  @doc("空间列表播放")
  space?: int64;

  @doc("天马（APP推荐信息流）来源")
  tenma?: int64;

}

/**
 * play_proportion 对象
 */
@doc("play_proportion 数据模型")
model Play_proportion {
  @doc("安卓端")
  android?: int64;

  @doc("移动端h5页面")
  h5?: int64;

  @doc("ios端")
  ios?: int64;

  @doc("站外")
  out?: int64;

  @doc("电脑版网页")
  pc?: int64;

}

/**
 * 播放分布情况（粉丝与路人）
 */
@route("/x/web/data/base")
@tag("Creativecenter")
interface 播放分布情况粉丝与路人 {
  @get
  @doc("播放分布情况（粉丝与路人）")
  播放分布情况粉丝与路人(
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("提示信息") period?: Record<unknown>,
    @query @doc("播放地区情况") viewer_area?: Record<unknown>,
    @query @doc("播放数据情况") viewer_base?: Record<unknown>,
    @query @doc("???") module_one?: string,
    @query @doc("???") module_two?: string,
    @query @doc("???") module_three?: string,
    @query @doc("???") module_four?: string,
    @query @doc("粉丝播放地区情况") fan?: Record<unknown>,
    @query @doc("路人播放地区情况") not_fan?: Record<unknown>,
    @query @doc("该地区的粉丝播放量") _行政区名_?: int64,
    @query @doc("……") __?: int64,
    @query @doc("该地区的路人播放量") _行政区名_?: int64,
    @query @doc("……") __?: int64,
    @query @doc("粉丝播放数据情况") fan?: Record<unknown>,
    @query @doc("路人播放数据情况") not_fan?: Record<unknown>,
    @query @doc("男性粉丝播放数") male?: int64,
    @query @doc("女性粉丝播放数") female?: int64,
    @query @doc("0-16岁粉丝播放数") age_one?: int64,
    @query @doc("16-25岁粉丝播放数") age_two?: int64,
    @query @doc("25-40岁粉丝播放数") age_three?: int64,
    @query @doc("40+岁粉丝播放数") age_four?: int64,
    @query @doc("pc网页端粉丝播放数") plat_pc?: int64,
    @query @doc("移动h5端粉丝播放数") plat_h5?: int64,
    @query @doc("站外端粉丝播放数") plat_out?: int64,
    @query @doc("ios端粉丝播放数") plat_ios?: int64,
    @query @doc("安卓端粉丝播放数") plat_android?: int64,
    @query @doc("其他粉丝播放数") plat_other_app?: int64,
    @query @doc("男性路人播放数") male?: int64,
    @query @doc("女性路人播放数") female?: int64,
    @query @doc("0-16岁路人播放数") age_one?: int64,
    @query @doc("16-25岁路人播放数") age_two?: int64,
    @query @doc("25-40岁路人播放数") age_three?: int64,
    @query @doc("40+岁路人播放数") age_four?: int64,
    @query @doc("pc网页端路人播放数") plat_pc?: int64,
    @query @doc("移动h5端路人播放数") plat_h5?: int64,
    @query @doc("站外端路人播放数") plat_out?: int64,
    @query @doc("ios端路人播放数") plat_ios?: int64,
    @query @doc("安卓端路人播放数") plat_android?: int64,
    @query @doc("其他路人播放数") plat_other_app?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("提示信息")
  period?: Record<unknown>;

  @doc("播放地区情况")
  viewer_area?: Record<unknown>;

  @doc("播放数据情况")
  viewer_base?: Record<unknown>;

}

/**
 * period 对象
 */
@doc("period 数据模型")
model Period {
  @doc("???")
  module_one?: string;

  @doc("???")
  module_two?: string;

  @doc("???")
  module_three?: string;

  @doc("???")
  module_four?: string;

}

/**
 * viewer_area 对象
 */
@doc("viewer_area 数据模型")
model Viewer_area {
  @doc("粉丝播放地区情况")
  fan?: Record<unknown>;

  @doc("路人播放地区情况")
  not_fan?: Record<unknown>;

}

/**
 * fan 对象
 */
@doc("fan 数据模型")
model Fan {
  @doc("……")
  __?: int64;

}

/**
 * not_fan 对象
 */
@doc("not_fan 数据模型")
model Not_fan {
  @doc("……")
  __?: int64;

}

/**
 * viewer_base 对象
 */
@doc("viewer_base 数据模型")
model Viewer_base {
  @doc("粉丝播放数据情况")
  fan?: Record<unknown>;

  @doc("路人播放数据情况")
  not_fan?: Record<unknown>;

}

/**
 * fan 对象
 */
@doc("fan 数据模型")
model Fan {
  @doc("男性粉丝播放数")
  male?: int64;

  @doc("女性粉丝播放数")
  female?: int64;

  @doc("0-16岁粉丝播放数")
  age_one?: int64;

  @doc("16-25岁粉丝播放数")
  age_two?: int64;

  @doc("25-40岁粉丝播放数")
  age_three?: int64;

  @doc("40+岁粉丝播放数")
  age_four?: int64;

  @doc("pc网页端粉丝播放数")
  plat_pc?: int64;

  @doc("移动h5端粉丝播放数")
  plat_h5?: int64;

  @doc("站外端粉丝播放数")
  plat_out?: int64;

  @doc("ios端粉丝播放数")
  plat_ios?: int64;

  @doc("安卓端粉丝播放数")
  plat_android?: int64;

  @doc("其他粉丝播放数")
  plat_other_app?: int64;

}

/**
 * not_fan 对象
 */
@doc("not_fan 数据模型")
model Not_fan {
  @doc("男性路人播放数")
  male?: int64;

  @doc("女性路人播放数")
  female?: int64;

  @doc("0-16岁路人播放数")
  age_one?: int64;

  @doc("16-25岁路人播放数")
  age_two?: int64;

  @doc("25-40岁路人播放数")
  age_three?: int64;

  @doc("40+岁路人播放数")
  age_four?: int64;

  @doc("pc网页端路人播放数")
  plat_pc?: int64;

  @doc("移动h5端路人播放数")
  plat_h5?: int64;

  @doc("站外端路人播放数")
  plat_out?: int64;

  @doc("ios端路人播放数")
  plat_ios?: int64;

  @doc("安卓端路人播放数")
  plat_android?: int64;

  @doc("其他路人播放数")
  plat_other_app?: int64;

}
