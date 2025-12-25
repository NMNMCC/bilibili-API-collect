import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Video;

/**
 * 获取单视频推荐列表（web端）
 */
@route("/x/web-interface/archive/related")
@tag("Video")
interface 获取单视频推荐列表web端 {
  @get
  @doc("获取单视频推荐列表（web端）")
  获取单视频推荐列表web端(
    @query @doc("稿件avid") aid: int64,
    @query @doc("稿件bvid") bvid: string,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("推荐列表") data?: unknown[],
    @query @doc("内容") 项?: unknown,
    @query @doc("推荐视频1") field_0?: Record<unknown>,
    @query @doc("推荐视频(n+1)") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("推荐视频40") field_39?: Record<unknown>,
  ): ApiResponse<unknown>;
}

/**
 * 获取首页视频推荐列表（web端）
 */
@route("/x/web-interface/wbi/index/top/feed/rcmd")
@tag("Video")
interface 获取首页视频推荐列表web端 {
  @get
  @doc("获取首页视频推荐列表（web端）")
  获取首页视频推荐列表web端(
    @query @doc("相关性") fresh_type: int64,
    @query @doc("单页返回的记录条数") ps: int64,
    @query @doc("当前翻页号") fresh_idx: int64,
    @query @doc("当前翻页号(一小时前?)") fresh_idx_1h: int64,
    @query @doc("刷子?") brush: int64,
    @query @doc("本次抓取的最后一行行号") fetch_row: int64,
    @query @doc("网页位置") web_location: int64,
    @query @doc("普通列数") y_num: int64,
    @query @doc("总列数") last_y_num: int64,
    @query @doc("V8") feed_version: string,
    @query @doc("1") homepage_ver: int64,
    @query @doc("浏览器视口大小") screen: string,
    @query @doc("空") seo_info: string,
    @query @doc("上次抓取的视频av号列表") last_showlist: string,
    @query @doc("???") uniq_id: string,
    @query @doc("WBI 签名") w_rid: string,
    @query @doc("UNIX 时间戳") wts: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("推荐列表") item?: unknown[],
    @query @doc("用户mid") mid?: int64,
    @query @doc("0.5") preload_expose_pct?: int64,
    @query @doc("0.5") preload_floor_expose_pct?: int64,
    @query @doc("边栏列表?") side_bar_column?: unknown[],
    @query @doc("商业推广信息") business_info?: Record<unknown>,
    @query @doc("视频bvid") bvid?: string,
    @query @doc("稿件cid") cid?: int64,
    @query @doc("1") dislike_switch?: int64,
    @query @doc("0") dislike_switch_pc?: int64,
    @query @doc("视频时长") duraion?: int64,
    @query @doc("0") enable_vt?: int64,
    @query @doc("目标类型") goto?: int64,
    @query @doc("视频时长") duraion?: int64,
    @query @doc("视频aid / 直播间id") id?: int64,
    @query @doc("已关注") is_followed?: int64,
    @query @doc("0") is_stock?: int64,
    @query @doc("UP主") owner?: Record<unknown>,
    @query @doc("封面") pic?: string,
    @query @doc("封面(4:3)") pic_4_3?: string,
    @query @doc("0") pos?: int64,
    @query @doc("发布时间") pubdate?: int64,
    @query @doc("推荐理由") rcmd_reason?: Record<unknown>,
    @query @doc("直播间信息") room_info?: Record<unknown>,
    @query @doc("展示信息") show_info?: int64,
    @query @doc("视频状态信息") stat?: Record<unknown>,
    @query @doc("标题") title?: string,
    @query @doc("跟踪标识?") track_id?: string,
    @query @doc("目标页 URI") uri?: string,
    @query @doc("空") vt_display?: string,
    @query @doc("头像URL") face?: string,
    @query @doc("UP主mid") mid?: int64,
    @query @doc("UP昵称") name?: string,
    @query @doc("原因类型") reason_type?: int64,
    @query @doc("原因描述") content?: string,
    @query @doc("算错 怎么破？决定高考分数的这个非智力因素不容忽视\",") _title____做数学题总是抄错?: unknown,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("推荐列表")
  item?: unknown[];

  @doc("用户mid")
  mid?: int64;

  @doc("0.5")
  preload_expose_pct?: int64;

  @doc("0.5")
  preload_floor_expose_pct?: int64;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("商业推广信息")
  business_info?: Record<unknown>;

  @doc("视频bvid")
  bvid?: string;

  @doc("稿件cid")
  cid?: int64;

  @doc("1")
  dislike_switch?: int64;

  @doc("0")
  dislike_switch_pc?: int64;

  @doc("视频时长")
  duraion?: int64;

  @doc("0")
  enable_vt?: int64;

  @doc("目标类型")
  goto?: int64;

  @doc("视频时长")
  duraion?: int64;

  @doc("视频aid / 直播间id")
  id?: int64;

  @doc("已关注")
  is_followed?: int64;

  @doc("0")
  is_stock?: int64;

  @doc("UP主")
  owner?: Record<unknown>;

  @doc("封面")
  pic?: string;

  @doc("封面(4:3)")
  pic_4_3?: string;

  @doc("0")
  pos?: int64;

  @doc("发布时间")
  pubdate?: int64;

  @doc("推荐理由")
  rcmd_reason?: Record<unknown>;

  @doc("直播间信息")
  room_info?: Record<unknown>;

  @doc("展示信息")
  show_info?: int64;

  @doc("视频状态信息")
  stat?: Record<unknown>;

  @doc("标题")
  title?: string;

  @doc("跟踪标识?")
  track_id?: string;

  @doc("目标页 URI")
  uri?: string;

  @doc("空")
  vt_display?: string;

}

/**
 * owner 对象
 */
@doc("owner 数据模型")
model Owner {
  @doc("头像URL")
  face?: string;

  @doc("UP主mid")
  mid?: int64;

  @doc("UP昵称")
  name?: string;

}

/**
 * rcmd_reason 对象
 */
@doc("rcmd_reason 数据模型")
model Rcmd_reason {
  @doc("原因类型")
  reason_type?: int64;

  @doc("原因描述")
  content?: string;

  @doc("算错 怎么破？决定高考分数的这个非智力因素不容忽视\",")
  _title____做数学题总是抄错?: unknown;

}

/**
 * 根据点击视频获取的短视频播放列表
 */
@route("/x/v2/feed/index/story")
@tag("Video")
interface 根据点击视频获取的短视频播放列表 {
  @get
  @doc("根据点击视频获取的短视频播放列表")
  根据点击视频获取的短视频播放列表(
    @query @doc("点击视频的aid") aid: int64,
    @query @doc("视频列表页数") display_id: int64,
    @query @doc("APP登录Token") access_key: string,
    @query @doc("额外广告？") ad_extra: string,
    @query @doc("APP密钥") appkey: string,
    @query @doc("自动播放") auto_play: int64,
    @query @doc("版本") build: int64,
    @query @doc("视频的bv号") bvid: string,
    @query @doc("语言") c_locale: string,
    @query @doc("频道") channel: int64,
    @query @doc("目标频道id") cid: int64,
    @query @doc("未知") contain: boolean,
    @query @doc("未知") creative_id: int64,
    @query @doc("设备名称") device_name: string,
    @query @doc("未知") disable_rcmd: int64,
    @query @doc("未知") epid: int64,
    @query @doc("未知") feed_status: int64,
    @query @doc("视频流类型") fnval: int64,
    @query @doc("请求时提供的fnver") fnver: int64,
    @query @doc("源url类型") force_host: int64,
    @query @doc("是否允许 4K 视频") fourk: int64,
    @query @doc("未知") from: int64,
    @query @doc("未知") from_spmid: string,
    @query @doc("未知") goto: string,
    @query @doc("平台标识") mobi_app: string,
    @query @doc("网络") network: string,
    @query @doc("未知") ogv_style: int64,
    @query @doc("平台") platform: string,
    @query @doc("未知") player_net: int64,
    @query @doc("未知") pull: int64,
    @query @doc("似乎不是页码") pn: int64,
    @query @doc("未知") request_from: int64,
    @query @doc("语言") s_locale: string,
    @query @doc("未知") spmid: string,
    @query @doc("位置") statistics: string,
    @query @doc("未知") story_param: string,
    @query @doc("路径id？未知") trackid: string,
    @query @doc("秒级时间戳") ts: int64,
    @query @doc("视频模式？未知") video_mode: int64,
    @query @doc("未知") voice_balance: int64,
    @query @doc("APP签名") sign: string,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("视频信息") data?: Record<unknown>,
    @query @doc("配置") config?: Record<unknown>,
    @query @doc("视频信息") items?: unknown[],
    @query @doc("内容") 项?: unknown,
    @query @doc("视频信息1") field_0?: Record<unknown>,
    @query @doc("视频信息(n+1)") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("视频bv号") bvid?: string,
    @query @doc("卡片跳转") card_goto?: string,
    @query @doc("版权") copyright?: int64,
    @query @doc("封面url") cover?: string,
    @query @doc("视频描述") desc?: string,
    @query @doc("包括视频尺寸、旋转角度") dimension?: int64,
    @query @doc("不喜欢原因v2的各种显示") dislike_reasons_v2?: Record<unknown>,
    @query @doc("不喜欢原因v3的各种显示") dislike_reasons_v3?: Record<unknown>,
    @query @doc("视频时长") duration?: int64,
    @query @doc("短视频封面原图") ff_cover?: string,
    @query @doc("应该是跳转去向类型") goto?: string,
    @query @doc("拥有者，也就是up信息") owner?: Record<unknown>,
    @query @doc("参数，实际为视频aid") param?: string,
    @query @doc("播放器参数") player_args?: Record<unknown>,
    @query @doc("发布时间秒级时间戳") pubdate?: int64,
    @query @doc("报告流数据") report_flow_data?: string,
    @query @doc("未知") req_user?: unknown,
    @query @doc("未知") rights?: Record<unknown>,
    @query @doc("分享下方按钮") share_bottom_button?: Record<unknown>,
    @query @doc("未知") share_guide?: Record<unknown>,
    @query @doc("视频短链接") short_link?: string,
    @query @doc("显示举报") show_report?: Record<unknown>,
    @query @doc("视频信息") stat?: Record<unknown>,
    @query @doc("子标题") sub_title?: string,
    @query @doc("提交入口") submission_entrance?: Record<unknown>,
    @query @doc("三点按钮要显示的内容") three_point_button?: Record<unknown>,
    @query @doc("未知") thumb_up_animation?: string,
    @query @doc("视频标题") title?: string,
    @query @doc("搜索栏") top_search_bar?: Record<unknown>,
    @query @doc("路由track") track_id?: string,
    @query @doc("uri") uri?: string,
    @query @doc("用于显示的文本形式播放量") view_content?: string,
    @query @doc("vip相关的信息") vip?: Record<unknown>,
    @query @doc("未知") attention?: int64,
    @query @doc("一些显示设置") avatar?: Record<unknown>,
    @query @doc("头像url") face?: string,
    @query @doc("粉丝量") fans?: int64,
    @query @doc("获赞数") like_num?: int64,
    @query @doc("up主的mid") mid?: int64,
    @query @doc("up主的昵称") name?: string,
    @query @doc("官方认证") official_verify?: Record<unknown>,
    @query @doc("关系？未知") relation?: int64,
    @query @doc("子形象") sub_avatar?: Record<unknown>,
    @query @doc("充电相关") upower?: Record<unknown>,
    @query @doc("视频作者的aid") aid?: int64,
    @query @doc("所属频道的cid") cid?: int64,
    @query @doc("内容类型") type?: string,
    @query @doc("视频作者的aid") aid?: int64,
    @query @doc("视频硬币数") coin?: int64,
    @query @doc("视频弹幕数") danmaku?: int64,
    @query @doc("视频收藏数") favorite?: int64,
    @query @doc("未知") follow?: int64,
    @query @doc("视频点赞数") like?: int64,
    @query @doc("视频评论与回复总数") reply?: int64,
    @query @doc("视频分享数") share?: int64,
    @query @doc("视频播放") view?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("配置")
  config?: Record<unknown>;

  @doc("视频信息")
  items?: unknown[];

  @doc("内容")
  项?: unknown;

  @doc("视频信息1")
  field_0?: Record<unknown>;

  @doc("视频信息(n+1)")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("视频bv号")
  bvid?: string;

  @doc("卡片跳转")
  card_goto?: string;

  @doc("版权")
  copyright?: int64;

  @doc("封面url")
  cover?: string;

  @doc("视频描述")
  desc?: string;

  @doc("包括视频尺寸、旋转角度")
  dimension?: int64;

  @doc("不喜欢原因v2的各种显示")
  dislike_reasons_v2?: Record<unknown>;

  @doc("不喜欢原因v3的各种显示")
  dislike_reasons_v3?: Record<unknown>;

  @doc("视频时长")
  duration?: int64;

  @doc("短视频封面原图")
  ff_cover?: string;

  @doc("应该是跳转去向类型")
  goto?: string;

  @doc("拥有者，也就是up信息")
  owner?: Record<unknown>;

  @doc("参数，实际为视频aid")
  param?: string;

  @doc("播放器参数")
  player_args?: Record<unknown>;

  @doc("发布时间秒级时间戳")
  pubdate?: int64;

  @doc("报告流数据")
  report_flow_data?: string;

  @doc("未知")
  req_user?: unknown;

  @doc("未知")
  rights?: Record<unknown>;

  @doc("分享下方按钮")
  share_bottom_button?: Record<unknown>;

  @doc("未知")
  share_guide?: Record<unknown>;

  @doc("视频短链接")
  short_link?: string;

  @doc("显示举报")
  show_report?: Record<unknown>;

  @doc("视频信息")
  stat?: Record<unknown>;

  @doc("子标题")
  sub_title?: string;

  @doc("提交入口")
  submission_entrance?: Record<unknown>;

  @doc("三点按钮要显示的内容")
  three_point_button?: Record<unknown>;

  @doc("未知")
  thumb_up_animation?: string;

  @doc("视频标题")
  title?: string;

  @doc("搜索栏")
  top_search_bar?: Record<unknown>;

  @doc("路由track")
  track_id?: string;

  @doc("uri")
  uri?: string;

  @doc("用于显示的文本形式播放量")
  view_content?: string;

  @doc("vip相关的信息")
  vip?: Record<unknown>;

}

/**
 * owner 对象
 */
@doc("owner 数据模型")
model Owner {
  @doc("一些显示设置")
  avatar?: Record<unknown>;

  @doc("头像url")
  face?: string;

  @doc("粉丝量")
  fans?: int64;

  @doc("获赞数")
  like_num?: int64;

  @doc("up主的mid")
  mid?: int64;

  @doc("up主的昵称")
  name?: string;

  @doc("关系？未知")
  relation?: int64;

}

/**
 * player_args 对象
 */
@doc("player_args 数据模型")
model Player_args {
  @doc("视频作者的aid")
  aid?: int64;

  @doc("所属频道的cid")
  cid?: int64;

  @doc("内容类型")
  type?: string;

}

/**
 * player_args 对象
 */
@doc("player_args 数据模型")
model Player_args {
  @doc("视频作者的aid")
  aid?: int64;

  @doc("视频硬币数")
  coin?: int64;

  @doc("视频弹幕数")
  danmaku?: int64;

  @doc("视频收藏数")
  favorite?: int64;

  @doc("未知")
  follow?: int64;

  @doc("视频点赞数")
  like?: int64;

  @doc("视频评论与回复总数")
  reply?: int64;

  @doc("视频分享数")
  share?: int64;

  @doc("视频播放")
  view?: int64;

}

/**
 * 获取短视频模式视频列表
 */
@route("/x/v2/feed/index")
@tag("Video")
interface 获取短视频模式视频列表 {
  @get
  @doc("获取短视频模式视频列表")
  获取短视频模式视频列表(
    @query @doc("视频流格式标识") fnval: int64,
    @query @doc("视频流版本标识") fnver: int64,
    @query @doc("源url类型") force_host: int64,
    @query @doc("是否允许 4K 视频") fourk: int64,
    @query @doc("0") guidance: int64,
    @query @doc("0") https_url_req: int64,
    @query @doc("2") inline_danmu: int64,
    @query @doc("1") inline_sound: int64,
    @query @doc("0") interest_id: int64,
    @query @doc("登录状态") login_event: int64,
    @query @doc("android") mobi_app: int64,
    @query @doc("wifi") network: int64,
    @query @doc("非必要") open_event?: int64,
    @query @doc("android") platform: int64,
    @query @doc("false") pull: unknown,
    @query @doc("32") qn: int64,
    @query @doc("0") recsys_mode: int64,
    @query @doc("zh_CN") s_locale: string,
    @query @doc("1") video_mode: int64,
    @query @doc("非必要") accessKey?: string,
    @query @doc("音量均衡？") voice_balance: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("一些界面相关的内容") config?: Record<unknown>,
    @query @doc("视频列表") items?: unknown[],
    @query @doc("1") can_play?: int64,
    @query @doc("av") card_goto?: string,
    @query @doc("卡片类型") card_type?: string,
    @query @doc("封面url") cover?: string,
    @query @doc("播放量") cover_left_1_content_description?: string,
    @query @doc("弹幕数") cover_left_2_content_description?: string,
    @query @doc("播放量") cover_left_text_1?: string,
    @query @doc("弹幕数") cover_left_text_2?: string,
    @query @doc("视频长度") cover_right_content_description?: string,
    @query @doc("视频长度") cover_right_text?: string,
    @query @doc("up主信息") desc_button?: Record<unknown>,
    @query @doc("视频aid") param?: string,
    @query @doc("视频信息") player_args?: Record<unknown>,
    @query @doc("标题") title?: string,
    @query @doc("跳转链接") uri?: string,
    @query @doc("视频卡片左下角图标") goto_icon?: Record<unknown>,
    @query @doc("左下角的'竖屏'or'2千点赞'") rcmd_reason_style?: Record<unknown>,
    @query @doc("横幅列表") banner_item?: unknown,
    @query @doc("up名称") text?: string,
    @query @doc("1") type?: int64,
    @query @doc("跳转链接") uri?: string,
    @query @doc("视频aid") aid?: int64,
    @query @doc("视频cid") cid?: int64,
    @query @doc("视频长度") duration?: int64,
    @query @doc("图标链接") icon_url?: string,
    @query @doc("应该跟上面那个一样") icon_night_url?: string,
    @query @doc("16") icon_width?: int64,
    @query @doc("16") icon_height?: int64,
    @query @doc("1万点赞 \\") text?: string,
    @query @doc("#FF6633") text_color?: string,
    @query @doc("#FFF1ED") bg_color?: string,
    @query @doc("#FFF1ED") border_color?: string,
    @query @doc("#BF5330") text_color_night?: string,
    @query @doc("#3D2D29") bg_color_night?: string,
    @query @doc("#3D2D29") border_color_night?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("一些界面相关的内容")
  config?: Record<unknown>;

  @doc("视频列表")
  items?: unknown[];

  @doc("1")
  can_play?: int64;

  @doc("av")
  card_goto?: string;

  @doc("卡片类型")
  card_type?: string;

  @doc("封面url")
  cover?: string;

  @doc("播放量")
  cover_left_1_content_description?: string;

  @doc("弹幕数")
  cover_left_2_content_description?: string;

  @doc("播放量")
  cover_left_text_1?: string;

  @doc("弹幕数")
  cover_left_text_2?: string;

  @doc("视频长度")
  cover_right_content_description?: string;

  @doc("视频长度")
  cover_right_text?: string;

  @doc("up主信息")
  desc_button?: Record<unknown>;

  @doc("视频aid")
  param?: string;

  @doc("视频信息")
  player_args?: Record<unknown>;

  @doc("标题")
  title?: string;

  @doc("跳转链接")
  uri?: string;

  @doc("视频卡片左下角图标")
  goto_icon?: Record<unknown>;

  @doc("左下角的'竖屏'or'2千点赞'")
  rcmd_reason_style?: Record<unknown>;

  @doc("横幅列表")
  banner_item?: unknown;

}

/**
 * desc_button 对象
 */
@doc("desc_button 数据模型")
model Desc_button {
  @doc("up名称")
  text?: string;

  @doc("1")
  type?: int64;

  @doc("跳转链接")
  uri?: string;

}

/**
 * player_args 对象
 */
@doc("player_args 数据模型")
model Player_args {
  @doc("视频aid")
  aid?: int64;

  @doc("视频cid")
  cid?: int64;

  @doc("视频长度")
  duration?: int64;

}

/**
 * goto_icon 对象
 */
@doc("goto_icon 数据模型")
model Goto_icon {
  @doc("图标链接")
  icon_url?: string;

  @doc("应该跟上面那个一样")
  icon_night_url?: string;

  @doc("16")
  icon_width?: int64;

  @doc("16")
  icon_height?: int64;

}

/**
 * rcmd_reason_style 对象
 */
@doc("rcmd_reason_style 数据模型")
model Rcmd_reason_style {
  @doc("1万点赞 \\")
  text?: string;

  @doc("#FF6633")
  text_color?: string;

  @doc("#FFF1ED")
  bg_color?: string;

  @doc("#FFF1ED")
  border_color?: string;

  @doc("#BF5330")
  text_color_night?: string;

  @doc("#3D2D29")
  bg_color_night?: string;

  @doc("#3D2D29")
  border_color_night?: string;

}
