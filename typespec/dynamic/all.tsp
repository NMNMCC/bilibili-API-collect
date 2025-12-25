import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Dynamic;

/**
 * 获取全部动态列表
 */
@route("/x/polymer/web-dynamic/v1/feed/all")
@tag("Dynamic")
interface 获取全部动态列表 {
  @get
  @doc("获取全部动态列表")
  获取全部动态列表(
    @query @doc("非必要") timezone_offset?: string,
    @query @doc("非必要") type?: string,
    @query @doc("非必要") host_mid?: int64,
    @query @doc("非必要") offset?: int64,
    @query @doc("非必要") update_baseline?: string,
    @query @doc("非必要") page?: int64,
    @query @doc("非必要") platform?: string,
    @query @doc("非必要") features?: string,
    @query @doc("非必要") web_location?: string,
    @query @doc("响应码") code?: int64,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("是否有更多数据") has_more?: boolean,
    @query @doc("数据数组") items?: unknown[],
    @query @doc("偏移量") offset?: string,
    @query @doc("更新基线") update_baseline?: string,
    @query @doc("本次获取获取到了多少条新动态") update_num?: int64,
    @query @doc("动态id") id_str?: string,
    @query @doc("动态信息") modules?: Record<unknown>,
    @query @doc("动态类型") type?: string,
    @query @doc("是否显示") visible?: boolean,
    @query @doc("原动态信息") orig?: Record<unknown>,
    @query @doc("见 [动态类型](./dynamic_enum.md#动态类型)") comment_id_str?: string,
    @query @doc("见 [动态类型](./dynamic_enum.md#动态类型)") comment_type?: int64,
    @query @doc("见下") like_icon?: Record<unknown>,
    @query @doc("见 [动态类型](./dynamic_enum.md#动态类型)") rid_str?: string,
    @query @doc("`空串`") action_url?: string,
    @query @doc("`空串`") end_url?: string,
    @query @doc("`0`") id?: int64,
    @query @doc("`空串`") start_url?: string,
    @query @doc("UP主信息") module_author?: Record<unknown>,
    @query @doc("动态内容信息") module_dynamic?: Record<unknown>,
    @query @doc("动态右上角三点菜单") module_more?: Record<unknown>,
    @query @doc("动态统计数据") module_stat?: Record<unknown>,
    @query @doc("热度评论") module_interaction?: Record<unknown>,
    @query @doc("动态折叠信息") module_fold?: Record<unknown>,
    @query @doc("争议小黄条") module_dispute?: Record<unknown>,
    @query @doc("置顶信息") module_tag?: Record<unknown>,
    @query @doc("相关内容卡片信息") additional?: Record<unknown>,
    @query @doc("动态文字内容") desc?: Record<unknown>,
    @query @doc("动态主体对象") major?: Record<unknown>,
    @query @doc("话题信息") topic?: Record<unknown>,
    @query @doc("一般类型") common?: Record<unknown>,
    @query @doc("卡片类型") type?: string,
    @query @doc("预约信息") reserve?: Record<unknown>,
    @query @doc("商品内容") goods?: Record<unknown>,
    @query @doc("投票信息") vote?: Record<unknown>,
    @query @doc("视频信息") ugc?: Record<unknown>,
    @query @doc("比赛信息?") match?: Record<unknown>,
    @query @doc("充电专属抽奖信息") upower_lottery?: Record<unknown>,
    @query @doc("按钮内容") button?: Record<unknown>,
    @query @doc("左侧封面图") cover?: string,
    @query @doc("描述1") desc1?: string,
    @query @doc("描述2") desc2?: string,
    @query @doc("卡片头文本") head_text?: string,
    @query @doc("相关id") id_str?: string,
    @query @doc("跳转URL") jump_url?: string,
    @query @doc("`1`") style?: int64,
    @query @doc("子类型") sub_type?: string,
    @query @doc("卡片标题") title?: string,
    @query @doc("跳转类型") jump_style?: Record<unknown>,
    @query @doc("跳转URL") jump_url?: string,
    @query @doc("1：`game`和`decoration`类型<br/>2：`ogv`类型") type?: int64,
    @query @doc("`ogv`类型特有") check?: Record<unknown>,
    @query @doc("`1`") status?: int64,
    @query @doc("`ogv`类型特有") uncheck?: Record<unknown>,
    @query @doc("`空串`") icon_url?: string,
    @query @doc("按钮显示文案") text?: string,
    @query @doc("按钮图片URL") icon_url?: string,
    @query @doc("按钮显示文案") text?: string,
    @query @doc("按钮图片URL") icon_url?: string,
    @query @doc("按钮显示文案") text?: string,
    @query @doc("按钮信息") button?: Record<unknown>,
    @query @doc("预约时间") desc1?: Record<unknown>,
    @query @doc("预约观看量") desc2?: Record<unknown>,
    @query @doc("跳转URL") jump_url?: string,
    @query @doc("预约人数") reserve_total?: int64,
    @query @doc("`0`") state?: int64,
    @query @doc("`1` `2`") stype?: int64,
    @query @doc("预约标题") title?: string,
    @query @doc("预约发起人UID") up_mid?: int64,
    @query @doc("预约有奖信息") desc3?: Record<unknown>,
    @query @doc("已预约状态显示内容") check?: Record<unknown>,
    @query @doc("预约状态") status?: int64,
    @query @doc("类型") type?: int64,
    @query @doc("未预约状态显示内容") uncheck?: Record<unknown>,
    @query @doc("跳转按钮") jump_style?: Record<unknown>,
    @query @doc("跳转URL") jump_url?: string,
    @query @doc("`空串`") icon_url?: string,
    @query @doc("按钮显示文案") text?: string,
    @query @doc("显示图标URL") icon_url?: string,
    @query @doc("按钮显示文案") text?: string,
    @query @doc("预约成功显示提示文案") toast?: string,
    @query @doc("是否不可预约") disable?: int64,
    @query @doc("`空串`") icon_url?: string,
    @query @doc("按钮显示文案") text?: string,
    @query @doc("类型") style?: int64,
    @query @doc("显示文案") text?: string,
    @query @doc("`0`") style?: int64,
    @query @doc("显示文案") text?: string,
    @query @doc("是否显示") visible?: boolean,
    @query @doc("开奖信息跳转URL") jump_url?: string,
    @query @doc("`1`") style?: int64,
    @query @doc("奖品信息显示文案") text?: string,
    @query @doc("`空串`") head_icon?: string,
    @query @doc("卡片头显示文案") head_text?: string,
    @query @doc("商品信息列表") items?: unknown[],
    @query @doc("`空串`") jump_url?: string,
    @query @doc("商品副标题") brief?: string,
    @query @doc("商品封面") cover?: string,
    @query @doc("商品ID") id?: string,
    @query @doc("跳转按钮显示文案") jump_desc?: string,
    @query @doc("跳转URL") jump_url?: string,
    @query @doc("商品名称") name?: string,
    @query @doc("商品价格") price?: string,
    @query @doc("`1`") choice_cnt?: int64,
    @query @doc("是否默认勾选`同时分享至动态`") default_share?: int64,
    @query @doc("投票标题") desc?: string,
    @query @doc("剩余时间") end_time?: int64,
    @query @doc("已参与人数") join_num?: int64,
    @query @doc("`1`") status?: int64,
    @query @doc("`null`") type?: null,
    @query @doc("发起人UID") uid?: int64,
    @query @doc("投票ID") vote_id?: int64,
    @query @doc("封面") cover?: string,
    @query @doc("播放量与弹幕数") desc_second?: string,
    @query @doc("视频长度") duration?: string,
    @query @doc("`空串`") head_text?: string,
    @query @doc("视频AV号") id_str?: string,
    @query @doc("视频跳转URL") jump_url?: string,
    @query @doc("`true`") multi_line?: boolean,
    @query @doc("视频标题") title?: string,
    @query @doc("富文本节点列表") rich_text_nodes?: unknown[],
    @query @doc("动态的文字内容") text?: string,
    @query @doc("动态主体类型") type?: string,
    @query @doc("合集信息") ugc_season?: Record<unknown>,
    @query @doc("专栏类型") article?: Record<unknown>,
    @query @doc("带图动态") draw?: Record<unknown>,
    @query @doc("视频信息") archive?: Record<unknown>,
    @query @doc("直播状态") live_rcmd?: Record<unknown>,
    @query @doc("一般类型") common?: Record<unknown>,
    @query @doc("剧集信息") pgc?: Record<unknown>,
    @query @doc("课程信息") courses?: Record<unknown>,
    @query @doc("音频信息") music?: Record<unknown>,
    @query @doc("图文动态") opus?: Record<unknown>,
    @query @doc("动态失效") none?: Record<unknown>,
    @query @doc("充电相关") upower_common?: Record<unknown>,
    @query @doc("背景") background?: Record<unknown>,
    @query @doc("按钮") button?: Record<unknown>,
    @query @doc("图标") icon?: Record<unknown>,
    @query @doc("跳转 URL") jump_url?: string,
    @query @doc("关联 id") rid?: string,
    @query @doc("标题") title?: string,
    @query @doc("标题前缀") title_prefix?: string,
    @query @doc("类型") type?: int64,
    @query @doc("UP 主 mid (UID)") up_mid?: int64,
    @query @doc("充电操作状态?") upower_action_state?: int64,
    @query @doc("充电级别?") upower_level?: int64,
    @query @doc("深色背景") dark_src?: string,
    @query @doc("浅色背景") light_src?: string,
    @query @doc("跳转样式") jump_style?: Record<unknown>,
    @query @doc("跳转 URL") jump_url?: string,
    @query @doc("类型") type?: int64,
    @query @doc("文本") text?: string,
    @query @doc("深色图标 URL") dark_src?: string,
    @query @doc("浅色图标 URL") light_src?: string,
    @query @doc("视频AV号") aid?: int64,
    @query @doc("角标信息") badge?: Record<unknown>,
    @query @doc("视频封面") cover?: string,
    @query @doc("视频简介") desc?: string,
    @query @doc("`0`") disable_preview?: int64,
    @query @doc("时长") duration_text?: string,
    @query @doc("跳转URL") jump_url?: string,
    @query @doc("统计信息") stat?: Record<unknown>,
    @query @doc("视频标题") title?: string,
    @query @doc("背景颜色") bg_color?: string,
    @query @doc("字体颜色") color?: string,
    @query @doc("角标文案") text?: string,
    @query @doc("弹幕数") danmaku?: string,
    @query @doc("播放数") play?: string,
    @query @doc("封面图数组") covers?: unknown[],
    @query @doc("文章摘要") desc?: string,
    @query @doc("文章CV号") id?: int64,
    @query @doc("文章跳转地址") jump_url?: string,
    @query @doc("文章阅读量") label?: string,
    @query @doc("文章标题") title?: string,
    @query @doc("对应相簿id") id?: int64,
    @query @doc("图片信息列表") items?: unknown[],
    @query @doc("图片高度") height?: int64,
    @query @doc("图片大小") size?: int64,
    @query @doc("图片URL") src?: string,
    @query @doc("图片宽度") width?: int64,
    @query @doc("视频AV号") aid?: string,
    @query @doc("角标信息") badge?: Record<unknown>,
    @query @doc("视频BVID") bvid?: string,
    @query @doc("视频封面") cover?: string,
    @query @doc("视频简介") desc?: string,
    @query @doc("`0`") disable_preview?: int64,
    @query @doc("视频长度") duration_text?: string,
    @query @doc("跳转URL") jump_url?: string,
    @query @doc("统计信息") stat?: Record<unknown>,
    @query @doc("视频标题") title?: string,
    @query @doc("`1`") type?: int64,
    @query @doc("背景颜色") bg_color?: string,
    @query @doc("字体颜色") color?: string,
    @query @doc("角标文案") text?: string,
    @query @doc("弹幕数") danmaku?: string,
    @query @doc("播放数") play?: string,
    @query @doc("直播间内容JSON") content?: string,
    @query @doc("`0`") reserve_type?: int64,
    @query @doc("角标信息") badge?: Record<unknown>,
    @query @doc("`0`") biz_type?: int64,
    @query @doc("左侧图片封面") cover?: string,
    @query @doc("右侧描述信息") desc?: string,
    @query @doc("跳转地址") jump_url?: string,
    @query @doc("`空串`") label?: string,
    @query @doc("`1`") style?: int64,
    @query @doc("右侧标题") title?: string,
    @query @doc("背景色") bg_color?: string,
    @query @doc("前景色") color?: string,
    @query @doc("文本") text?: string,
    @query @doc("角标信息") badge?: Record<unknown>,
    @query @doc("视频封面") cover?: string,
    @query @doc("分集EpId") epid?: int64,
    @query @doc("跳转URL") jump_url?: string,
    @query @doc("剧集SeasonId") season_id?: int64,
    @query @doc("统计信息") stat?: Record<unknown>,
    @query @doc("剧集类型") sub_type?: int64,
    @query @doc("视频标题") title?: string,
    @query @doc("`2`") type?: int64,
    @query @doc("背景颜色") bg_color?: string,
    @query @doc("字体颜色") color?: string,
    @query @doc("角标文案") text?: string,
    @query @doc("弹幕数") danmaku?: string,
    @query @doc("播放数") play?: string,
    @query @doc("角标信息") badge?: Record<unknown>,
    @query @doc("封面图URL") cover?: string,
    @query @doc("更新状态描述") desc?: string,
    @query @doc("课程id") id?: int64,
    @query @doc("跳转URL") jump_url?: string,
    @query @doc("课程副标题") sub_title?: string,
    @query @doc("课程标题") title?: string,
    @query @doc("背景颜色") bg_color?: string,
    @query @doc("字体颜色") color?: string,
    @query @doc("角标文案") text?: string,
    @query @doc("音频封面") cover?: string,
    @query @doc("音频AUID") id?: int64,
    @query @doc("跳转URL") jump_url?: string,
    @query @doc("音频分类") label?: string,
    @query @doc("音频标题") title?: string,
    @query @doc("展开收起") fold_action?: unknown[],
    @query @doc("跳转URL") jump_url?: string,
    @query @doc("图片信息") pics?: unknown[],
    @query @doc("动态内容") summary?: Record<unknown>,
    @query @doc("动态标题") title?: string,
    @query @doc("富文本节点列表") rich_text_nodes?: unknown[],
    @query @doc("评论内容") text?: string,
    @query @doc("角标信息") badge?: Record<unknown>,
    @query @doc("直播封面") cover?: string,
    @query @doc("直播主分区名称") desc_first?: string,
    @query @doc("观看人数") desc_second?: string,
    @query @doc("直播间id") id?: int64,
    @query @doc("直播间跳转URL") jump_url?: string,
    @query @doc("直播状态") live_state?: int64,
    @query @doc("`0`") reserve_type?: int64,
    @query @doc("直播间标题") title?: string,
    @query @doc("背景颜色") bg_color?: string,
    @query @doc("字体颜色") color?: string,
    @query @doc("角标文案") text?: string,
    @query @doc("动态失效显示文案") tips?: string,
    @query @doc("信息列表") items?: unknown[],
    @query @doc("点赞/评论信息") desc?: Record<unknown>,
    @query @doc("类型") type?: int64,
    @query @doc("富文本节点列表") rich_text_nodes?: unknown[],
    @query @doc("评论内容") text?: string,
    @query @doc("被折叠的动态id列表") ids?: unknown[],
    @query @doc("显示文案") statement?: string,
    @query @doc("`1`") type?: int64,
    @query @doc("`空数组`") users?: unknown[],
    @query @doc("提醒文案") title?: string,
    @query @doc("'置顶'") text?: string,
  ): ApiResponse<Module_author>;
}

/**
 * module_author 对象
 */
@doc("module_author 数据模型")
model Module_author {
  @doc("动态内容信息")
  module_dynamic?: Record<unknown>;

}

/**
 * module_more 对象
 */
@doc("module_more 数据模型")
model Module_more {
}

/**
 * module_stat 对象
 */
@doc("module_stat 数据模型")
model Module_stat {
  @doc("热度评论")
  module_interaction?: Record<unknown>;

  @doc("动态折叠信息")
  module_fold?: Record<unknown>;

  @doc("争议小黄条")
  module_dispute?: Record<unknown>;

  @doc("置顶信息")
  module_tag?: Record<unknown>;

  @doc("相关内容卡片信息")
  additional?: Record<unknown>;

  @doc("动态文字内容")
  desc?: Record<unknown>;

  @doc("动态主体对象")
  major?: Record<unknown>;

  @doc("话题信息")
  topic?: Record<unknown>;

  @doc("一般类型")
  common?: Record<unknown>;

  @doc("卡片类型")
  type?: string;

  @doc("预约信息")
  reserve?: Record<unknown>;

  @doc("商品内容")
  goods?: Record<unknown>;

  @doc("投票信息")
  vote?: Record<unknown>;

  @doc("视频信息")
  ugc?: Record<unknown>;

  @doc("比赛信息?")
  match?: Record<unknown>;

  @doc("充电专属抽奖信息")
  upower_lottery?: Record<unknown>;

  @doc("按钮内容")
  button?: Record<unknown>;

  @doc("左侧封面图")
  cover?: string;

  @doc("描述1")
  desc1?: string;

  @doc("描述2")
  desc2?: string;

  @doc("卡片头文本")
  head_text?: string;

  @doc("相关id")
  id_str?: string;

  @doc("跳转URL")
  jump_url?: string;

  @doc("`1`")
  style?: int64;

  @doc("子类型")
  sub_type?: string;

  @doc("卡片标题")
  title?: string;

  @doc("跳转类型")
  jump_style?: Record<unknown>;

  @doc("跳转URL")
  jump_url?: string;

  @doc("1：`game`和`decoration`类型<br/>2：`ogv`类型")
  type?: int64;

  @doc("`ogv`类型特有")
  check?: Record<unknown>;

  @doc("`1`")
  status?: int64;

  @doc("`ogv`类型特有")
  uncheck?: Record<unknown>;

  @doc("`空串`")
  icon_url?: string;

  @doc("按钮显示文案")
  text?: string;

  @doc("按钮图片URL")
  icon_url?: string;

  @doc("按钮显示文案")
  text?: string;

  @doc("按钮图片URL")
  icon_url?: string;

  @doc("按钮显示文案")
  text?: string;

  @doc("按钮信息")
  button?: Record<unknown>;

  @doc("预约时间")
  desc1?: Record<unknown>;

  @doc("预约观看量")
  desc2?: Record<unknown>;

  @doc("跳转URL")
  jump_url?: string;

  @doc("预约人数")
  reserve_total?: int64;

  @doc("`0`")
  state?: int64;

  @doc("`1` `2`")
  stype?: int64;

  @doc("预约标题")
  title?: string;

  @doc("预约发起人UID")
  up_mid?: int64;

  @doc("预约有奖信息")
  desc3?: Record<unknown>;

  @doc("已预约状态显示内容")
  check?: Record<unknown>;

  @doc("预约状态")
  status?: int64;

  @doc("类型")
  type?: int64;

  @doc("未预约状态显示内容")
  uncheck?: Record<unknown>;

  @doc("跳转按钮")
  jump_style?: Record<unknown>;

  @doc("跳转URL")
  jump_url?: string;

}

/**
 * data.items[n].modules.module_dynamic.additional.reserve.button.check 对象
 */
@doc("data.items[n].modules.module_dynamic.additional.reserve.button.check 数据模型")
model Dataitemsnmodulesmodule_dynamicadditionalreservebuttoncheck {
  @doc("`空串`")
  icon_url?: string;

  @doc("按钮显示文案")
  text?: string;

  @doc("显示图标URL")
  icon_url?: string;

  @doc("按钮显示文案")
  text?: string;

  @doc("预约成功显示提示文案")
  toast?: string;

  @doc("是否不可预约")
  disable?: int64;

  @doc("`空串`")
  icon_url?: string;

  @doc("按钮显示文案")
  text?: string;

  @doc("类型")
  style?: int64;

  @doc("显示文案")
  text?: string;

  @doc("`0`")
  style?: int64;

  @doc("显示文案")
  text?: string;

  @doc("是否显示")
  visible?: boolean;

  @doc("开奖信息跳转URL")
  jump_url?: string;

  @doc("`1`")
  style?: int64;

  @doc("奖品信息显示文案")
  text?: string;

  @doc("`空串`")
  head_icon?: string;

  @doc("卡片头显示文案")
  head_text?: string;

  @doc("商品信息列表")
  items?: unknown[];

  @doc("`空串`")
  jump_url?: string;

  @doc("商品副标题")
  brief?: string;

  @doc("商品封面")
  cover?: string;

  @doc("商品ID")
  id?: string;

  @doc("跳转按钮显示文案")
  jump_desc?: string;

  @doc("跳转URL")
  jump_url?: string;

  @doc("商品名称")
  name?: string;

  @doc("商品价格")
  price?: string;

  @doc("`1`")
  choice_cnt?: int64;

  @doc("是否默认勾选`同时分享至动态`")
  default_share?: int64;

  @doc("投票标题")
  desc?: string;

  @doc("剩余时间")
  end_time?: int64;

  @doc("已参与人数")
  join_num?: int64;

  @doc("`1`")
  status?: int64;

  @doc("`null`")
  type?: null;

  @doc("发起人UID")
  uid?: int64;

  @doc("投票ID")
  vote_id?: int64;

  @doc("封面")
  cover?: string;

  @doc("播放量与弹幕数")
  desc_second?: string;

  @doc("视频长度")
  duration?: string;

  @doc("`空串`")
  head_text?: string;

  @doc("视频AV号")
  id_str?: string;

  @doc("视频跳转URL")
  jump_url?: string;

  @doc("`true`")
  multi_line?: boolean;

  @doc("视频标题")
  title?: string;

  @doc("富文本节点列表")
  rich_text_nodes?: unknown[];

  @doc("动态的文字内容")
  text?: string;

  @doc("动态主体类型")
  type?: string;

  @doc("合集信息")
  ugc_season?: Record<unknown>;

  @doc("专栏类型")
  article?: Record<unknown>;

  @doc("带图动态")
  draw?: Record<unknown>;

  @doc("视频信息")
  archive?: Record<unknown>;

  @doc("直播状态")
  live_rcmd?: Record<unknown>;

  @doc("一般类型")
  common?: Record<unknown>;

  @doc("剧集信息")
  pgc?: Record<unknown>;

  @doc("课程信息")
  courses?: Record<unknown>;

  @doc("音频信息")
  music?: Record<unknown>;

  @doc("图文动态")
  opus?: Record<unknown>;

  @doc("动态失效")
  none?: Record<unknown>;

  @doc("充电相关")
  upower_common?: Record<unknown>;

}

/**
 * data.items[].modules.module_dynamic.major.upower_common 对象
 */
@doc("data.items[].modules.module_dynamic.major.upower_common 数据模型")
model Dataitemsmodulesmodule_dynamicmajorupower_common {
  @doc("背景")
  background?: Record<unknown>;

  @doc("按钮")
  button?: Record<unknown>;

  @doc("图标")
  icon?: Record<unknown>;

  @doc("跳转 URL")
  jump_url?: string;

  @doc("关联 id")
  rid?: string;

  @doc("标题")
  title?: string;

  @doc("标题前缀")
  title_prefix?: string;

  @doc("类型")
  type?: int64;

  @doc("UP 主 mid (UID)")
  up_mid?: int64;

  @doc("充电操作状态?")
  upower_action_state?: int64;

  @doc("充电级别?")
  upower_level?: int64;

}

/**
 * data.items[].modules.module_dynamic.major.upower_common.background 对象
 */
@doc("data.items[].modules.module_dynamic.major.upower_common.background 数据模型")
model Dataitemsmodulesmodule_dynamicmajorupower_commonbackground {
  @doc("深色背景")
  dark_src?: string;

  @doc("浅色背景")
  light_src?: string;

}

/**
 * data.items[].modules.module_dynamic.major.upower_common.button 对象
 */
@doc("data.items[].modules.module_dynamic.major.upower_common.button 数据模型")
model Dataitemsmodulesmodule_dynamicmajorupower_commonbutton {
  @doc("跳转样式")
  jump_style?: Record<unknown>;

  @doc("跳转 URL")
  jump_url?: string;

  @doc("类型")
  type?: int64;

}

/**
 * data.items[].modules.module_dynamic.major.upower_common.button.jump_style 对象
 */
@doc("data.items[].modules.module_dynamic.major.upower_common.button.jump_style 数据模型")
model Dataitemsmodulesmodule_dynamicmajorupower_commonbuttonjump_style {
  @doc("文本")
  text?: string;

}

/**
 * data.items[].modules.module_dynamic.major.upower_common.icon 对象
 */
@doc("data.items[].modules.module_dynamic.major.upower_common.icon 数据模型")
model Dataitemsmodulesmodule_dynamicmajorupower_commonicon {
  @doc("深色图标 URL")
  dark_src?: string;

  @doc("浅色图标 URL")
  light_src?: string;

  @doc("视频AV号")
  aid?: int64;

  @doc("角标信息")
  badge?: Record<unknown>;

  @doc("视频封面")
  cover?: string;

  @doc("视频简介")
  desc?: string;

  @doc("`0`")
  disable_preview?: int64;

  @doc("时长")
  duration_text?: string;

  @doc("跳转URL")
  jump_url?: string;

  @doc("统计信息")
  stat?: Record<unknown>;

  @doc("视频标题")
  title?: string;

  @doc("背景颜色")
  bg_color?: string;

  @doc("字体颜色")
  color?: string;

  @doc("角标文案")
  text?: string;

  @doc("弹幕数")
  danmaku?: string;

  @doc("播放数")
  play?: string;

  @doc("封面图数组")
  covers?: unknown[];

  @doc("文章摘要")
  desc?: string;

  @doc("文章CV号")
  id?: int64;

  @doc("文章跳转地址")
  jump_url?: string;

  @doc("文章阅读量")
  label?: string;

  @doc("文章标题")
  title?: string;

  @doc("对应相簿id")
  id?: int64;

  @doc("图片信息列表")
  items?: unknown[];

  @doc("图片高度")
  height?: int64;

  @doc("图片大小")
  size?: int64;

  @doc("图片URL")
  src?: string;

  @doc("图片宽度")
  width?: int64;

  @doc("视频AV号")
  aid?: string;

  @doc("角标信息")
  badge?: Record<unknown>;

  @doc("视频BVID")
  bvid?: string;

  @doc("视频封面")
  cover?: string;

  @doc("视频简介")
  desc?: string;

  @doc("`0`")
  disable_preview?: int64;

  @doc("视频长度")
  duration_text?: string;

  @doc("跳转URL")
  jump_url?: string;

  @doc("统计信息")
  stat?: Record<unknown>;

  @doc("视频标题")
  title?: string;

  @doc("`1`")
  type?: int64;

  @doc("背景颜色")
  bg_color?: string;

  @doc("字体颜色")
  color?: string;

  @doc("角标文案")
  text?: string;

  @doc("弹幕数")
  danmaku?: string;

  @doc("播放数")
  play?: string;

  @doc("直播间内容JSON")
  content?: string;

  @doc("`0`")
  reserve_type?: int64;

  @doc("角标信息")
  badge?: Record<unknown>;

  @doc("`0`")
  biz_type?: int64;

  @doc("左侧图片封面")
  cover?: string;

  @doc("右侧描述信息")
  desc?: string;

  @doc("跳转地址")
  jump_url?: string;

  @doc("`空串`")
  label?: string;

  @doc("`1`")
  style?: int64;

  @doc("右侧标题")
  title?: string;

  @doc("背景色")
  bg_color?: string;

  @doc("前景色")
  color?: string;

  @doc("文本")
  text?: string;

  @doc("角标信息")
  badge?: Record<unknown>;

  @doc("视频封面")
  cover?: string;

  @doc("分集EpId")
  epid?: int64;

  @doc("跳转URL")
  jump_url?: string;

  @doc("剧集SeasonId")
  season_id?: int64;

  @doc("统计信息")
  stat?: Record<unknown>;

  @doc("剧集类型")
  sub_type?: int64;

  @doc("视频标题")
  title?: string;

  @doc("`2`")
  type?: int64;

  @doc("背景颜色")
  bg_color?: string;

  @doc("字体颜色")
  color?: string;

  @doc("角标文案")
  text?: string;

  @doc("弹幕数")
  danmaku?: string;

  @doc("播放数")
  play?: string;

  @doc("角标信息")
  badge?: Record<unknown>;

  @doc("封面图URL")
  cover?: string;

  @doc("更新状态描述")
  desc?: string;

  @doc("课程id")
  id?: int64;

  @doc("跳转URL")
  jump_url?: string;

  @doc("课程副标题")
  sub_title?: string;

  @doc("课程标题")
  title?: string;

  @doc("背景颜色")
  bg_color?: string;

  @doc("字体颜色")
  color?: string;

  @doc("角标文案")
  text?: string;

  @doc("音频封面")
  cover?: string;

  @doc("音频AUID")
  id?: int64;

  @doc("跳转URL")
  jump_url?: string;

  @doc("音频分类")
  label?: string;

  @doc("音频标题")
  title?: string;

  @doc("展开收起")
  fold_action?: unknown[];

  @doc("跳转URL")
  jump_url?: string;

  @doc("图片信息")
  pics?: unknown[];

  @doc("动态内容")
  summary?: Record<unknown>;

  @doc("动态标题")
  title?: string;

}

/**
 * desc 对象
 */
@doc("desc 数据模型")
model Desc {
  @doc("评论内容")
  text?: string;

  @doc("角标信息")
  badge?: Record<unknown>;

  @doc("直播封面")
  cover?: string;

  @doc("直播主分区名称")
  desc_first?: string;

  @doc("观看人数")
  desc_second?: string;

  @doc("直播间id")
  id?: int64;

  @doc("直播间跳转URL")
  jump_url?: string;

  @doc("直播状态")
  live_state?: int64;

  @doc("`0`")
  reserve_type?: int64;

  @doc("直播间标题")
  title?: string;

  @doc("背景颜色")
  bg_color?: string;

  @doc("字体颜色")
  color?: string;

  @doc("角标文案")
  text?: string;

  @doc("动态失效显示文案")
  tips?: string;

  @doc("信息列表")
  items?: unknown[];

  @doc("点赞/评论信息")
  desc?: Record<unknown>;

  @doc("类型")
  type?: int64;

  @doc("富文本节点列表")
  rich_text_nodes?: unknown[];

  @doc("评论内容")
  text?: string;

  @doc("被折叠的动态id列表")
  ids?: unknown[];

  @doc("显示文案")
  statement?: string;

  @doc("`1`")
  type?: int64;

  @doc("`空数组`")
  users?: unknown[];

  @doc("提醒文案")
  title?: string;

  @doc("'置顶'")
  text?: string;

}

/**
 * 检测是否有新动态
 */
@route("/x/polymer/web-dynamic/v1/feed/all/update")
@tag("Dynamic")
interface 检测是否有新动态 {
  @get
  @doc("检测是否有新动态")
  检测是否有新动态(
    @query @doc("-") _?: unknown,
    @query @doc("动态类型") type: string,
    @query @doc("更新基线") update_baseline: unknown,
    @query @doc("333.1365") web_location: string,
    @query @doc("-") _?: unknown,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("-") _?: unknown,
    @query @doc("有新动态的数量") update_num?: int64,
  ): ApiResponse<unknown>;
}
