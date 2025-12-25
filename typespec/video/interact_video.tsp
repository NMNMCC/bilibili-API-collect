import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Video;

/**
 * 获取互动视频模块详细信息
 */
@route("/x/stein/edgeinfo_v2")
@tag("Video")
interface 获取互动视频模块详细信息 {
  @get
  @doc("获取互动视频模块详细信息")
  获取互动视频模块详细信息(
    @query @doc("稿件avid") aid: int64,
    @query @doc("稿件bvid") bvid: string,
    @query @doc("剧情图id") graph_version: int64,
    @query @doc("模块编号") edge_id: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("视频模块（分P）标题") title?: string,
    @query @doc("当前模块id") edge_id?: int64,
    @query @doc("进度回溯信息") story_list?: unknown[],
    @query @doc("当前模块信息") edges?: Record<unknown>,
    @query @doc("预加载的分P") preload?: Record<unknown>,
    @query @doc("变量列表") hidden_vars?: unknown[],
    @query @doc("是否为结束模块") is_leaf?: int64,
    @query @doc("禁止记录选择") no_tutorial?: int64,
    @query @doc("禁止进度回溯") no_backtracking?: int64,
    @query @doc("禁止结尾评分") no_evaluation?: int64,
    @query @doc("内容") 项?: unknown,
    @query @doc("回溯第一项模块") field_0?: Record<unknown>,
    @query @doc("回溯第(n+1)项模块") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("内容") 项?: unknown,
    @query @doc("模块编号") node_id?: int64,
    @query @doc("**同上**") edge_id?: int64,
    @query @doc("模块（分P）标题") title?: string,
    @query @doc("模块（分P）cid") cid?: int64,
    @query @doc("记录播放开始位置") start_pos?: int64,
    @query @doc("分P封面url") cover?: string,
    @query @doc("是否为当前模块") is_current?: int64,
    @query @doc("进度序号") cursor?: int64,
    @query @doc("当前分P分辨率") dimension?: Record<unknown>,
    @query @doc("问题") questions?: unknown[],
    @query @doc("问题外观") skin?: Record<unknown>,
    @query @doc("当前分P 宽度") width?: int64,
    @query @doc("当前分P 高度") height?: int64,
    @query @doc("是否将宽高对换") rotate?: int64,
    @query @doc("？？？") sar?: string,
    @query @doc("内容") 项?: unknown,
    @query @doc("套了个娃") field_0?: Record<unknown>,
    @query @doc("？？？") id?: int64,
    @query @doc("选项显示模式") type?: int64,
    @query @doc("300 或 duration") start_time_r?: int64,
    @query @doc("回答限时") duration?: int64,
    @query @doc("是否暂停播放视频") pause_video?: int64,
    @query @doc("空") title?: string,
    @query @doc("选项列表") choices?: unknown[],
    @query @doc("选项淡入时间") fade_in_time?: int64,
    @query @doc("选项淡出时间") fade_out_time?: int64,
    @query @doc("内容") 项?: unknown,
    @query @doc("第一选项") field_0?: Record<unknown>,
    @query @doc("第(n+1)选项") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("选项所跳转的模块id") id?: int64,
    @query @doc("跳转信息文字") platform_action?: string,
    @query @doc("点击后对变量运算语句") native_action?: string,
    @query @doc("选项出现条件判断语句") condition?: string,
    @query @doc("选项所跳转分P的cid") cid?: int64,
    @query @doc("选项出现的x坐标") x?: int64,
    @query @doc("选项出现的y坐标") y?: int64,
    @query @doc("选项文本对齐方式") text_align?: int64,
    @query @doc("选项文字") option?: string,
    @query @doc("选择动画信息") selected?: Record<unknown>,
    @query @doc("提交动画信息") submited?: Record<unknown>,
    @query @doc("是否为默认选项") is_default?: int64,
    @query @doc("是否为隐藏选项") is_hidden?: int64,
    @query @doc("选项组件外观图片url") choice_image?: string,
    @query @doc("文字颜色") title_text_color?: string,
    @query @doc("文字阴影颜色") title_shadow_color?: string,
    @query @doc("文字阴影x偏移") title_shadow_offset_x?: int64,
    @query @doc("文字阴影y偏移") title_shadow_offset_y?: int64,
    @query @doc("文字阴影半径") title_shadow_radius?: int64,
    @query @doc("倒计时条颜色") progressbar_color?: string,
    @query @doc("倒计时条阴影颜色") progressbar_shadow_color?: string,
    @query @doc("预加载的分P") video?: unknown[],
    @query @doc("内容") 项?: unknown,
    @query @doc("预加载第一项") field_0?: Record<unknown>,
    @query @doc("预加载第(n+1)项") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("稿件avid") aid?: int64,
    @query @doc("分P cid") cid?: int64,
    @query @doc("内容") 项?: unknown,
    @query @doc("第一个变量") field_0?: Record<unknown>,
    @query @doc("第(n+1)个变量") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("变量值") value?: int64,
    @query @doc("变量编号") id?: string,
    @query @doc("变量编号") id_v2?: string,
    @query @doc("变量类型") type?: int64,
    @query @doc("是否展示变量") is_show?: int64,
    @query @doc("变量名") name?: string,
    @query @doc("0") skip_overwrite?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("视频模块（分P）标题")
  title?: string;

  @doc("当前模块id")
  edge_id?: int64;

  @doc("进度回溯信息")
  story_list?: unknown[];

  @doc("当前模块信息")
  edges?: Record<unknown>;

  @doc("预加载的分P")
  preload?: Record<unknown>;

  @doc("变量列表")
  hidden_vars?: unknown[];

  @doc("是否为结束模块")
  is_leaf?: int64;

  @doc("禁止记录选择")
  no_tutorial?: int64;

  @doc("禁止进度回溯")
  no_backtracking?: int64;

  @doc("禁止结尾评分")
  no_evaluation?: int64;

  @doc("内容")
  项?: unknown;

  @doc("回溯第一项模块")
  field_0?: Record<unknown>;

  @doc("回溯第(n+1)项模块")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("内容")
  项?: unknown;

  @doc("模块编号")
  node_id?: int64;

  @doc("**同上**")
  edge_id?: int64;

  @doc("模块（分P）标题")
  title?: string;

  @doc("模块（分P）cid")
  cid?: int64;

  @doc("记录播放开始位置")
  start_pos?: int64;

  @doc("分P封面url")
  cover?: string;

  @doc("是否为当前模块")
  is_current?: int64;

  @doc("进度序号")
  cursor?: int64;

}

/**
 * edges 对象
 */
@doc("edges 数据模型")
model Edges {
  @doc("当前分P分辨率")
  dimension?: Record<unknown>;

  @doc("问题")
  questions?: unknown[];

  @doc("问题外观")
  skin?: Record<unknown>;

}

/**
 * dimension 对象
 */
@doc("dimension 数据模型")
model Dimension {
  @doc("当前分P 宽度")
  width?: int64;

  @doc("当前分P 高度")
  height?: int64;

  @doc("是否将宽高对换")
  rotate?: int64;

  @doc("？？？")
  sar?: string;

  @doc("内容")
  项?: unknown;

  @doc("套了个娃")
  field_0?: Record<unknown>;

  @doc("？？？")
  id?: int64;

  @doc("选项显示模式")
  type?: int64;

  @doc("300 或 duration")
  start_time_r?: int64;

  @doc("回答限时")
  duration?: int64;

  @doc("是否暂停播放视频")
  pause_video?: int64;

  @doc("空")
  title?: string;

  @doc("选项列表")
  choices?: unknown[];

  @doc("选项淡入时间")
  fade_in_time?: int64;

  @doc("选项淡出时间")
  fade_out_time?: int64;

  @doc("内容")
  项?: unknown;

  @doc("第一选项")
  field_0?: Record<unknown>;

  @doc("第(n+1)选项")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("选项所跳转的模块id")
  id?: int64;

  @doc("跳转信息文字")
  platform_action?: string;

  @doc("点击后对变量运算语句")
  native_action?: string;

  @doc("选项出现条件判断语句")
  condition?: string;

  @doc("选项所跳转分P的cid")
  cid?: int64;

  @doc("选项出现的x坐标")
  x?: int64;

  @doc("选项出现的y坐标")
  y?: int64;

  @doc("选项文本对齐方式")
  text_align?: int64;

  @doc("选项文字")
  option?: string;

  @doc("选择动画信息")
  selected?: Record<unknown>;

  @doc("提交动画信息")
  submited?: Record<unknown>;

  @doc("是否为默认选项")
  is_default?: int64;

  @doc("是否为隐藏选项")
  is_hidden?: int64;

}

/**
 * skin 对象
 */
@doc("skin 数据模型")
model Skin {
  @doc("选项组件外观图片url")
  choice_image?: string;

  @doc("文字颜色")
  title_text_color?: string;

  @doc("文字阴影颜色")
  title_shadow_color?: string;

  @doc("文字阴影x偏移")
  title_shadow_offset_x?: int64;

  @doc("文字阴影y偏移")
  title_shadow_offset_y?: int64;

  @doc("文字阴影半径")
  title_shadow_radius?: int64;

  @doc("倒计时条颜色")
  progressbar_color?: string;

  @doc("倒计时条阴影颜色")
  progressbar_shadow_color?: string;

}

/**
 * preload 对象
 */
@doc("preload 数据模型")
model Preload {
  @doc("预加载的分P")
  video?: unknown[];

  @doc("内容")
  项?: unknown;

  @doc("预加载第一项")
  field_0?: Record<unknown>;

  @doc("预加载第(n+1)项")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("稿件avid")
  aid?: int64;

  @doc("分P cid")
  cid?: int64;

  @doc("内容")
  项?: unknown;

  @doc("第一个变量")
  field_0?: Record<unknown>;

  @doc("第(n+1)个变量")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("变量值")
  value?: int64;

  @doc("变量编号")
  id?: string;

  @doc("变量编号")
  id_v2?: string;

  @doc("变量类型")
  type?: int64;

  @doc("是否展示变量")
  is_show?: int64;

  @doc("变量名")
  name?: string;

  @doc("0")
  skip_overwrite?: int64;

}
