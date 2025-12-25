import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.User;

/**
 * 用户空间详细信息
 */
@route("/x/space/wbi/acc/info")
@tag("User")
interface 用户空间详细信息 {
  @get
  @doc("用户空间详细信息")
  用户空间详细信息(
    @query @doc("目标用户mid") mid: int64,
    @query @doc("Wbi 签名") w_rid: string,
    @query @doc("当前时间戳") wts: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("mid") mid?: int64,
    @query @doc("昵称") name?: string,
    @query @doc("性别") sex?: string,
    @query @doc("头像链接") face?: string,
    @query @doc("是否为 NFT 头像") face_nft?: int64,
    @query @doc("NFT 头像类型？") face_nft_type?: int64,
    @query @doc("签名") sign?: string,
    @query @doc("用户权限等级") rank?: int64,
    @query @doc("当前等级") level?: int64,
    @query @doc("注册时间") jointime?: int64,
    @query @doc("节操值") moral?: int64,
    @query @doc("封禁状态") silence?: int64,
    @query @doc("硬币数") coins?: int64,
    @query @doc("是否具有粉丝勋章") fans_badge?: boolean,
    @query @doc("粉丝勋章信息") fans_medal?: Record<unknown>,
    @query @doc("认证信息") official?: Record<unknown>,
    @query @doc("会员信息") vip?: Record<unknown>,
    @query @doc("头像框信息") pendant?: Record<unknown>,
    @query @doc("勋章信息") nameplate?: Record<unknown>,
    @query @doc("（？）") user_honour_info?: Record<unknown>,
    @query @doc("是否关注此用户") is_followed?: boolean,
    @query @doc("主页头图链接") top_photo?: string,
    @query @doc("（？）") theme?: Record<unknown>,
    @query @doc("系统通知") sys_notice?: Record<unknown>,
    @query @doc("直播间信息") live_room?: Record<unknown>,
    @query @doc("生日") birthday?: string,
    @query @doc("学校") school?: Record<unknown>,
    @query @doc("专业资质信息") profession?: Record<unknown>,
    @query @doc("个人标签") tags?: unknown,
    @query @doc("（？）") series?: Record<unknown>,
    @query @doc("是否为硬核会员") is_senior_member?: int64,
    @query @doc("（？）") mcn_info?: null,
    @query @doc("（？）") gaia_res_type?: int64,
    @query @doc("（？）") gaia_data?: null,
    @query @doc("（？）") is_risk?: boolean,
    @query @doc("充电信息") elec?: Record<unknown>,
    @query @doc("是否显示老粉计划") contract?: Record<unknown>,
    @query @doc("（？）") certificate_show?: boolean,
    @query @doc("昵称渲染信息") name_render?: unknown,
    @query @doc("认证类型") role?: int64,
    @query @doc("认证信息") title?: string,
    @query @doc("认证备注") desc?: string,
    @query @doc("是否认证") type?: int64,
    @query @doc("会员类型") type?: int64,
    @query @doc("会员状态") status?: int64,
    @query @doc("会员过期时间") due_date?: int64,
    @query @doc("支付类型") vip_pay_type?: int64,
    @query @doc("0") theme_type?: int64,
    @query @doc("会员标签") label?: Record<unknown>,
    @query @doc("是否显示会员图标") avatar_subscript?: int64,
    @query @doc("会员昵称颜色") nickname_color?: string,
    @query @doc("大角色类型") role?: int64,
    @query @doc("大会员角标地址") avatar_subscript_url?: string,
    @query @doc("电视大会员状态") tv_vip_status?: int64,
    @query @doc("电视大会员支付类型") tv_vip_pay_type?: int64,
    @query @doc("电视大会员过期时间") tv_due_date?: int64,
    @query @doc("大会员角标信息") avatar_icon?: Record<unknown>,
    @query @doc("空") path?: string,
    @query @doc("会员类型文案") text?: string,
    @query @doc("会员标签") label_theme?: string,
    @query @doc("会员标签") text_color?: string,
    @query @doc("1") bg_style?: int64,
    @query @doc("会员标签背景颜色") bg_color?: string,
    @query @doc("会员标签边框颜色") border_color?: string,
    @query @doc("`true`") use_img_label?: boolean,
    @query @doc("`空串`") img_label_uri_hans?: string,
    @query @doc("`空串`") img_label_uri_hant?: string,
    @query @doc("大会员牌子图片") img_label_uri_hans_static?: string,
    @query @doc("大会员牌子图片") img_label_uri_hant_static?: string,
    @query @doc("（？）") icon_type?: int64,
    @query @doc("（？）") icon_resource?: Record<unknown>,
    @query @doc("头像框id") pid?: int64,
    @query @doc("头像框名称") name?: string,
    @query @doc("头像框图片url") image?: string,
    @query @doc("过期时间") expire?: int64,
    @query @doc("头像框图片url") image_enhance?: string,
    @query @doc("头像框图片逐帧序列url") image_enhance_frame?: string,
    @query @doc("新版头像框id") n_pid?: int64,
    @query @doc("勋章id") nid?: int64,
    @query @doc("勋章名称") name?: string,
    @query @doc("勋章图标") image?: string,
    @query @doc("勋章图标（小）") image_small?: string,
    @query @doc("勋章等级") level?: string,
    @query @doc("获取条件") condition?: string,
    @query @doc("是否佩戴了粉丝勋章") wear?: boolean,
    @query @doc("粉丝勋章信息") medal?: Record<unknown>,
    @query @doc("此用户mid") uid?: int64,
    @query @doc("粉丝勋章所属UP的mid") target_id?: int64,
    @query @doc("粉丝勋章id") medal_id?: int64,
    @query @doc("粉丝勋章等级") level?: int64,
    @query @doc("粉丝勋章名称") medal_name?: string,
    @query @doc("颜色") medal_color?: int64,
    @query @doc("当前亲密度") intimacy?: int64,
    @query @doc("下一等级所需亲密度") next_intimacy?: int64,
    @query @doc("每日亲密度获取上限") day_limit?: int64,
    @query @doc("今日已获得亲密度") today_feed?: int64,
    @query @doc("粉丝勋章颜色") medal_color_start?: int64,
    @query @doc("粉丝勋章颜色") medal_color_end?: int64,
    @query @doc("粉丝勋章边框颜色") medal_color_border?: int64,
    @query @doc("当前是否佩戴") wearing_status?: int64,
    @query @doc("id") id?: int64,
    @query @doc("显示文案") content?: string,
    @query @doc("跳转地址") url?: string,
    @query @doc("提示类型") notice_type?: int64,
    @query @doc("前缀图标") icon?: string,
    @query @doc("文字颜色") text_color?: string,
    @query @doc("背景颜色") bg_color?: string,
    @query @doc("notice_type") id?: unknown,
    @query @doc("1") field_5?: unknown,
    @query @doc("1") field_8?: unknown,
    @query @doc("1") field_11?: unknown,
    @query @doc("1") field_16?: unknown,
    @query @doc("2") field_20?: unknown,
    @query @doc("1") field_24?: unknown,
    @query @doc("1") field_25?: unknown,
    @query @doc("1") field_31?: unknown,
    @query @doc("1") field_34?: unknown,
    @query @doc("1") field_36?: unknown,
    @query @doc("直播间状态") roomStatus?: int64,
    @query @doc("直播状态") liveStatus?: int64,
    @query @doc("直播间网页 url") url?: string,
    @query @doc("直播间标题") title?: string,
    @query @doc("直播间封面 url") cover?: string,
    @query @doc("直播间 id") roomid?: int64,
    @query @doc("轮播状态") roundStatus?: int64,
    @query @doc("0") broadcast_type?: int64,
    @query @doc("?") switch?: boolean,
    @query @doc("total watched users") num?: int64,
    @query @doc("watched icon url") icon?: string,
    @query @doc("?") icon_location?: string,
    @query @doc("watched icon url") icon_web?: string,
    @query @doc("就读大学名称") name?: string,
    @query @doc("资质名称") name?: string,
    @query @doc("职位") department?: string,
    @query @doc("所属机构") title?: string,
    @query @doc("是否显示") is_show?: int64,
    @query @doc("0") mid?: int64,
    @query @doc("null") colour?: string,
    @query @doc("null") tags?: unknown[],
    @query @doc("(?)") user_upgrade_status?: int64,
    @query @doc("(?)") show_upgrade_window?: boolean,
    @query @doc("显示的充电信息") show_info?: Record<unknown>,
    @query @doc("是否显示充电按钮") show?: boolean,
    @query @doc("充电功能开启状态") state?: int64,
    @query @doc("充电按钮显示文字") title?: string,
    @query @doc("充电图标") icon?: string,
    @query @doc("跳转url") jump_url?: string,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("true/false<br/>在页面中未使用此字段") is_display?: boolean,
    @query @doc("是否在显示老粉计划") is_follow_display?: boolean,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("mid")
  mid?: int64;

  @doc("昵称")
  name?: string;

  @doc("性别")
  sex?: string;

  @doc("头像链接")
  face?: string;

  @doc("是否为 NFT 头像")
  face_nft?: int64;

  @doc("NFT 头像类型？")
  face_nft_type?: int64;

  @doc("签名")
  sign?: string;

  @doc("用户权限等级")
  rank?: int64;

  @doc("当前等级")
  level?: int64;

  @doc("注册时间")
  jointime?: int64;

  @doc("节操值")
  moral?: int64;

  @doc("封禁状态")
  silence?: int64;

  @doc("硬币数")
  coins?: int64;

  @doc("是否具有粉丝勋章")
  fans_badge?: boolean;

  @doc("粉丝勋章信息")
  fans_medal?: Record<unknown>;

  @doc("认证信息")
  official?: Record<unknown>;

  @doc("会员信息")
  vip?: Record<unknown>;

  @doc("头像框信息")
  pendant?: Record<unknown>;

  @doc("勋章信息")
  nameplate?: Record<unknown>;

  @doc("（？）")
  user_honour_info?: Record<unknown>;

  @doc("是否关注此用户")
  is_followed?: boolean;

  @doc("主页头图链接")
  top_photo?: string;

  @doc("（？）")
  theme?: Record<unknown>;

  @doc("系统通知")
  sys_notice?: Record<unknown>;

  @doc("直播间信息")
  live_room?: Record<unknown>;

  @doc("生日")
  birthday?: string;

  @doc("学校")
  school?: Record<unknown>;

  @doc("专业资质信息")
  profession?: Record<unknown>;

  @doc("个人标签")
  tags?: unknown;

  @doc("（？）")
  series?: Record<unknown>;

  @doc("是否为硬核会员")
  is_senior_member?: int64;

  @doc("（？）")
  mcn_info?: null;

  @doc("（？）")
  gaia_res_type?: int64;

  @doc("（？）")
  gaia_data?: null;

  @doc("（？）")
  is_risk?: boolean;

  @doc("充电信息")
  elec?: Record<unknown>;

  @doc("是否显示老粉计划")
  contract?: Record<unknown>;

  @doc("（？）")
  certificate_show?: boolean;

  @doc("昵称渲染信息")
  name_render?: unknown;

}

/**
 * official 对象
 */
@doc("official 数据模型")
model Official {
  @doc("认证类型")
  role?: int64;

  @doc("认证信息")
  title?: string;

  @doc("认证备注")
  desc?: string;

  @doc("是否认证")
  type?: int64;

}

/**
 * vip 对象
 */
@doc("vip 数据模型")
model Vip {
  @doc("会员类型")
  type?: int64;

  @doc("会员状态")
  status?: int64;

  @doc("会员过期时间")
  due_date?: int64;

  @doc("支付类型")
  vip_pay_type?: int64;

  @doc("0")
  theme_type?: int64;

  @doc("会员标签")
  label?: Record<unknown>;

  @doc("是否显示会员图标")
  avatar_subscript?: int64;

  @doc("会员昵称颜色")
  nickname_color?: string;

  @doc("大角色类型")
  role?: int64;

  @doc("大会员角标地址")
  avatar_subscript_url?: string;

  @doc("电视大会员状态")
  tv_vip_status?: int64;

  @doc("电视大会员支付类型")
  tv_vip_pay_type?: int64;

  @doc("电视大会员过期时间")
  tv_due_date?: int64;

  @doc("大会员角标信息")
  avatar_icon?: Record<unknown>;

}

/**
 * label 对象
 */
@doc("label 数据模型")
model Label {
  @doc("空")
  path?: string;

  @doc("会员类型文案")
  text?: string;

  @doc("会员标签")
  label_theme?: string;

  @doc("会员标签")
  text_color?: string;

  @doc("1")
  bg_style?: int64;

  @doc("会员标签背景颜色")
  bg_color?: string;

  @doc("会员标签边框颜色")
  border_color?: string;

  @doc("`true`")
  use_img_label?: boolean;

  @doc("`空串`")
  img_label_uri_hans?: string;

  @doc("`空串`")
  img_label_uri_hant?: string;

  @doc("大会员牌子图片")
  img_label_uri_hans_static?: string;

  @doc("大会员牌子图片")
  img_label_uri_hant_static?: string;

}

/**
 * avatar_icon 对象
 */
@doc("avatar_icon 数据模型")
model Avatar_icon {
  @doc("（？）")
  icon_type?: int64;

  @doc("（？）")
  icon_resource?: Record<unknown>;

}

/**
 * pendant 对象
 */
@doc("pendant 数据模型")
model Pendant {
  @doc("头像框id")
  pid?: int64;

  @doc("头像框名称")
  name?: string;

  @doc("头像框图片url")
  image?: string;

  @doc("过期时间")
  expire?: int64;

  @doc("头像框图片url")
  image_enhance?: string;

  @doc("头像框图片逐帧序列url")
  image_enhance_frame?: string;

  @doc("新版头像框id")
  n_pid?: int64;

}

/**
 * nameplate 对象
 */
@doc("nameplate 数据模型")
model Nameplate {
  @doc("勋章id")
  nid?: int64;

  @doc("勋章名称")
  name?: string;

  @doc("勋章图标")
  image?: string;

  @doc("勋章图标（小）")
  image_small?: string;

  @doc("勋章等级")
  level?: string;

  @doc("获取条件")
  condition?: string;

}

/**
 * fans_medal 对象
 */
@doc("fans_medal 数据模型")
model Fans_medal {
  @doc("是否佩戴了粉丝勋章")
  wear?: boolean;

  @doc("粉丝勋章信息")
  medal?: Record<unknown>;

}

/**
 * medal 对象
 */
@doc("medal 数据模型")
model Medal {
  @doc("此用户mid")
  uid?: int64;

  @doc("粉丝勋章所属UP的mid")
  target_id?: int64;

  @doc("粉丝勋章id")
  medal_id?: int64;

  @doc("粉丝勋章等级")
  level?: int64;

  @doc("粉丝勋章名称")
  medal_name?: string;

  @doc("颜色")
  medal_color?: int64;

  @doc("当前亲密度")
  intimacy?: int64;

  @doc("下一等级所需亲密度")
  next_intimacy?: int64;

  @doc("每日亲密度获取上限")
  day_limit?: int64;

  @doc("今日已获得亲密度")
  today_feed?: int64;

  @doc("粉丝勋章颜色")
  medal_color_start?: int64;

  @doc("粉丝勋章颜色")
  medal_color_end?: int64;

  @doc("粉丝勋章边框颜色")
  medal_color_border?: int64;

  @doc("当前是否佩戴")
  wearing_status?: int64;

}

/**
 * sys_notice 对象
 */
@doc("sys_notice 数据模型")
model Sys_notice {
  @doc("id")
  id?: int64;

  @doc("显示文案")
  content?: string;

  @doc("跳转地址")
  url?: string;

  @doc("提示类型")
  notice_type?: int64;

  @doc("前缀图标")
  icon?: string;

  @doc("文字颜色")
  text_color?: string;

  @doc("背景颜色")
  bg_color?: string;

  @doc("notice_type")
  id?: unknown;

  @doc("1")
  field_5?: unknown;

  @doc("1")
  field_8?: unknown;

  @doc("1")
  field_11?: unknown;

  @doc("1")
  field_16?: unknown;

  @doc("2")
  field_20?: unknown;

  @doc("1")
  field_24?: unknown;

  @doc("1")
  field_25?: unknown;

  @doc("1")
  field_31?: unknown;

  @doc("1")
  field_34?: unknown;

  @doc("1")
  field_36?: unknown;

}

/**
 * live_room 对象
 */
@doc("live_room 数据模型")
model Live_room {
  @doc("直播间状态")
  roomStatus?: int64;

  @doc("直播状态")
  liveStatus?: int64;

  @doc("直播间网页 url")
  url?: string;

  @doc("直播间标题")
  title?: string;

  @doc("直播间封面 url")
  cover?: string;

  @doc("直播间 id")
  roomid?: int64;

  @doc("轮播状态")
  roundStatus?: int64;

  @doc("0")
  broadcast_type?: int64;

}

/**
 * watched_show 对象
 */
@doc("watched_show 数据模型")
model Watched_show {
  @doc("?")
  switch?: boolean;

  @doc("total watched users")
  num?: int64;

  @doc("watched icon url")
  icon?: string;

  @doc("?")
  icon_location?: string;

  @doc("watched icon url")
  icon_web?: string;

}

/**
 * school 对象
 */
@doc("school 数据模型")
model School {
  @doc("就读大学名称")
  name?: string;

}

/**
 * profession 对象
 */
@doc("profession 数据模型")
model Profession {
  @doc("资质名称")
  name?: string;

  @doc("职位")
  department?: string;

  @doc("所属机构")
  title?: string;

  @doc("是否显示")
  is_show?: int64;

}

/**
 * user_honour_info 对象
 */
@doc("user_honour_info 数据模型")
model User_honour_info {
  @doc("0")
  mid?: int64;

  @doc("null")
  colour?: string;

  @doc("null")
  tags?: unknown[];

}

/**
 * series 对象
 */
@doc("series 数据模型")
model Series {
  @doc("(?)")
  user_upgrade_status?: int64;

  @doc("(?)")
  show_upgrade_window?: boolean;

}

/**
 * elec 对象
 */
@doc("elec 数据模型")
model Elec {
  @doc("显示的充电信息")
  show_info?: Record<unknown>;

}

/**
 * show_info 对象
 */
@doc("show_info 数据模型")
model Show_info {
  @doc("是否显示充电按钮")
  show?: boolean;

  @doc("充电功能开启状态")
  state?: int64;

  @doc("充电按钮显示文字")
  title?: string;

  @doc("充电图标")
  icon?: string;

  @doc("跳转url")
  jump_url?: string;

}

/**
 * contract 对象
 */
@doc("contract 数据模型")
model Contract {
  @doc("是否在显示老粉计划")
  is_follow_display?: boolean;

}

/**
 * 用户名片信息
 */
@route("/x/web-interface/card")
@tag("User")
interface 用户名片信息 {
  @get
  @doc("用户名片信息")
  用户名片信息(
    @query @doc("目标用户mid") mid: int64,
    @query @doc("是否请求用户主页头图") photo: boolean,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("卡片信息") card?: Record<unknown>,
    @query @doc("是否关注此用户") following?: boolean,
    @query @doc("用户稿件数") archive_count?: int64,
    @query @doc("0") article_count?: int64,
    @query @doc("粉丝数") follower?: int64,
    @query @doc("点赞数") like_num?: int64,
    @query @doc("用户mid") mid?: string,
    @query @doc("false") approve?: boolean,
    @query @doc("用户昵称") name?: string,
    @query @doc("用户性别") sex?: string,
    @query @doc("用户头像链接") face?: string,
    @query @doc("0") DisplayRank?: string,
    @query @doc("0") regtime?: int64,
    @query @doc("用户状态") spacesta?: int64,
    @query @doc("空") birthday?: string,
    @query @doc("空") place?: string,
    @query @doc("空") description?: string,
    @query @doc("0") article?: int64,
    @query @doc("空") attentions?: unknown[],
    @query @doc("粉丝数") fans?: int64,
    @query @doc("关注数") friend?: int64,
    @query @doc("关注数") attention?: int64,
    @query @doc("签名") sign?: string,
    @query @doc("等级") level_info?: Record<unknown>,
    @query @doc("挂件") pendant?: Record<unknown>,
    @query @doc("勋章") nameplate?: Record<unknown>,
    @query @doc("认证信息") Official?: Record<unknown>,
    @query @doc("认证信息2") official_verify?: Record<unknown>,
    @query @doc("大会员状态") vip?: Record<unknown>,
    @query @doc("主页头图") space?: Record<unknown>,
    @query @doc("当前等级") current_level?: int64,
    @query @doc("0") current_min?: int64,
    @query @doc("0") current_exp?: int64,
    @query @doc("0") next_exp?: int64,
    @query @doc("挂件id") pid?: int64,
    @query @doc("挂件名称") name?: string,
    @query @doc("挂件图片url") image?: string,
    @query @doc("0") expire?: int64,
    @query @doc("勋章id") nid?: int64,
    @query @doc("勋章名称") name?: string,
    @query @doc("挂件图片url 正常") image?: string,
    @query @doc("勋章图片url 小") image_small?: string,
    @query @doc("勋章等级") level?: string,
    @query @doc("勋章条件") condition?: string,
    @query @doc("认证类型") role?: int64,
    @query @doc("认证信息") title?: string,
    @query @doc("认证备注") desc?: string,
    @query @doc("是否认证") type?: int64,
    @query @doc("是否认证") type?: int64,
    @query @doc("认证信息") desc?: string,
    @query @doc("大会员类型") vipType?: int64,
    @query @doc("空") dueRemark?: string,
    @query @doc("0") accessStatus?: int64,
    @query @doc("大会员状态") vipStatus?: int64,
    @query @doc("空") vipStatusWarn?: string,
    @query @doc("0") theme_type?: int64,
    @query @doc("主页头图url 小图") s_img?: string,
    @query @doc("主页头图url 正常") l_img?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("卡片信息")
  card?: Record<unknown>;

  @doc("是否关注此用户")
  following?: boolean;

  @doc("用户稿件数")
  archive_count?: int64;

  @doc("0")
  article_count?: int64;

  @doc("粉丝数")
  follower?: int64;

  @doc("点赞数")
  like_num?: int64;

}

/**
 * card 对象
 */
@doc("card 数据模型")
model Card {
  @doc("用户mid")
  mid?: string;

  @doc("false")
  approve?: boolean;

  @doc("用户昵称")
  name?: string;

  @doc("用户性别")
  sex?: string;

  @doc("用户头像链接")
  face?: string;

  @doc("0")
  DisplayRank?: string;

  @doc("0")
  regtime?: int64;

  @doc("用户状态")
  spacesta?: int64;

  @doc("空")
  birthday?: string;

  @doc("空")
  place?: string;

  @doc("空")
  description?: string;

  @doc("0")
  article?: int64;

  @doc("空")
  attentions?: unknown[];

  @doc("粉丝数")
  fans?: int64;

  @doc("关注数")
  friend?: int64;

  @doc("关注数")
  attention?: int64;

  @doc("签名")
  sign?: string;

  @doc("等级")
  level_info?: Record<unknown>;

  @doc("挂件")
  pendant?: Record<unknown>;

  @doc("勋章")
  nameplate?: Record<unknown>;

  @doc("认证信息")
  Official?: Record<unknown>;

  @doc("认证信息2")
  official_verify?: Record<unknown>;

  @doc("大会员状态")
  vip?: Record<unknown>;

  @doc("主页头图")
  space?: Record<unknown>;

}

/**
 * level_info 对象
 */
@doc("level_info 数据模型")
model Level_info {
  @doc("当前等级")
  current_level?: int64;

  @doc("0")
  current_min?: int64;

  @doc("0")
  current_exp?: int64;

  @doc("0")
  next_exp?: int64;

}

/**
 * pendant 对象
 */
@doc("pendant 数据模型")
model Pendant {
  @doc("挂件id")
  pid?: int64;

  @doc("挂件名称")
  name?: string;

  @doc("挂件图片url")
  image?: string;

  @doc("0")
  expire?: int64;

}

/**
 * nameplate 对象
 */
@doc("nameplate 数据模型")
model Nameplate {
  @doc("勋章id")
  nid?: int64;

  @doc("勋章名称")
  name?: string;

  @doc("挂件图片url 正常")
  image?: string;

  @doc("勋章图片url 小")
  image_small?: string;

  @doc("勋章等级")
  level?: string;

  @doc("勋章条件")
  condition?: string;

}

/**
 * Official 对象
 */
@doc("Official 数据模型")
model Official {
  @doc("认证类型")
  role?: int64;

  @doc("认证信息")
  title?: string;

  @doc("认证备注")
  desc?: string;

  @doc("是否认证")
  type?: int64;

}

/**
 * official_verify 对象
 */
@doc("official_verify 数据模型")
model Official_verify {
  @doc("是否认证")
  type?: int64;

  @doc("认证信息")
  desc?: string;

}

/**
 * vip 对象
 */
@doc("vip 数据模型")
model Vip {
  @doc("大会员类型")
  vipType?: int64;

  @doc("空")
  dueRemark?: string;

  @doc("0")
  accessStatus?: int64;

  @doc("大会员状态")
  vipStatus?: int64;

  @doc("空")
  vipStatusWarn?: string;

  @doc("0")
  theme_type?: int64;

}

/**
 * space 对象
 */
@doc("space 数据模型")
model Space {
  @doc("主页头图url 小图")
  s_img?: string;

  @doc("主页头图url 正常")
  l_img?: string;

}

/**
 * 登录用户空间详细信息
 */
@route("/x/space/myinfo")
@tag("User")
interface 登录用户空间详细信息 {
  @get
  @doc("登录用户空间详细信息")
  登录用户空间详细信息(
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("mid") mid?: int64,
    @query @doc("昵称") name?: string,
    @query @doc("性别") sex?: string,
    @query @doc("头像图片url") face?: string,
    @query @doc("签名") sign?: string,
    @query @doc("10000") rank?: int64,
    @query @doc("当前等级") level?: int64,
    @query @doc("0") jointime?: int64,
    @query @doc("节操") moral?: int64,
    @query @doc("封禁状态") silence?: int64,
    @query @doc("已验证邮箱") email_status?: int64,
    @query @doc("已验证手机号") tel_status?: int64,
    @query @doc("1") identification?: int64,
    @query @doc("大会员状态") vip?: Record<unknown>,
    @query @doc("生日") birthday?: int64,
    @query @doc("0") is_tourist?: int64,
    @query @doc("0") is_fake_account?: int64,
    @query @doc("0") pin_prompting?: int64,
    @query @doc("0") is_deleted?: int64,
    @query @doc("硬币数") coins?: int64,
    @query @doc("粉丝数") following?: int64,
    @query @doc("粉丝数") follower?: int64,
    @query @doc("会员类型") type?: int64,
    @query @doc("会员状态") status?: int64,
    @query @doc("会员过期时间") due_date?: int64,
    @query @doc("0") theme_type?: int64,
    @query @doc("会员标签") label?: Record<unknown>,
    @query @doc("是否显示会员图标") avatar_subscript?: int64,
    @query @doc("会员昵称颜色") nickname_color?: string,
    @query @doc("空") path?: string,
    @query @doc("会员名称") text?: string,
    @query @doc("会员标签") label_theme?: string,
    @query @doc("挂件id") pid?: int64,
    @query @doc("挂件名称") name?: string,
    @query @doc("挂件图片url") image?: string,
    @query @doc("0") expire?: int64,
    @query @doc("勋章id") nid?: int64,
    @query @doc("勋章名称") name?: string,
    @query @doc("挂件图片url 正常") image?: string,
    @query @doc("勋章图片url 小") image_small?: string,
    @query @doc("勋章等级") level?: string,
    @query @doc("勋章条件") condition?: string,
    @query @doc("认证类型") role?: int64,
    @query @doc("认证信息") title?: string,
    @query @doc("认证备注") desc?: string,
    @query @doc("是否认证") type?: int64,
    @query @doc("当前等级") current_level?: int64,
    @query @doc("0") current_min?: int64,
    @query @doc("0") current_exp?: int64,
    @query @doc("0") next_exp?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("mid")
  mid?: int64;

  @doc("昵称")
  name?: string;

  @doc("性别")
  sex?: string;

  @doc("头像图片url")
  face?: string;

  @doc("签名")
  sign?: string;

  @doc("10000")
  rank?: int64;

  @doc("当前等级")
  level?: int64;

  @doc("0")
  jointime?: int64;

  @doc("节操")
  moral?: int64;

  @doc("封禁状态")
  silence?: int64;

  @doc("已验证邮箱")
  email_status?: int64;

  @doc("已验证手机号")
  tel_status?: int64;

  @doc("1")
  identification?: int64;

  @doc("大会员状态")
  vip?: Record<unknown>;

  @doc("生日")
  birthday?: int64;

  @doc("0")
  is_tourist?: int64;

  @doc("0")
  is_fake_account?: int64;

  @doc("0")
  pin_prompting?: int64;

  @doc("0")
  is_deleted?: int64;

  @doc("硬币数")
  coins?: int64;

  @doc("粉丝数")
  following?: int64;

  @doc("粉丝数")
  follower?: int64;

}

/**
 * vip 对象
 */
@doc("vip 数据模型")
model Vip {
  @doc("会员类型")
  type?: int64;

  @doc("会员状态")
  status?: int64;

  @doc("会员过期时间")
  due_date?: int64;

  @doc("0")
  theme_type?: int64;

  @doc("会员标签")
  label?: Record<unknown>;

  @doc("是否显示会员图标")
  avatar_subscript?: int64;

  @doc("会员昵称颜色")
  nickname_color?: string;

}

/**
 * label 对象
 */
@doc("label 数据模型")
model Label {
  @doc("空")
  path?: string;

  @doc("会员名称")
  text?: string;

  @doc("会员标签")
  label_theme?: string;

}

/**
 * pendant 对象
 */
@doc("pendant 数据模型")
model Pendant {
  @doc("挂件id")
  pid?: int64;

  @doc("挂件名称")
  name?: string;

  @doc("挂件图片url")
  image?: string;

  @doc("0")
  expire?: int64;

}

/**
 * nameplate 对象
 */
@doc("nameplate 数据模型")
model Nameplate {
  @doc("勋章id")
  nid?: int64;

  @doc("勋章名称")
  name?: string;

  @doc("挂件图片url 正常")
  image?: string;

  @doc("勋章图片url 小")
  image_small?: string;

  @doc("勋章等级")
  level?: string;

  @doc("勋章条件")
  condition?: string;

}

/**
 * Official 对象
 */
@doc("Official 数据模型")
model Official {
  @doc("认证类型")
  role?: int64;

  @doc("认证信息")
  title?: string;

  @doc("认证备注")
  desc?: string;

  @doc("是否认证")
  type?: int64;

}

/**
 * level_exp 对象
 */
@doc("level_exp 数据模型")
model Level_exp {
  @doc("当前等级")
  current_level?: int64;

  @doc("0")
  current_min?: int64;

  @doc("0")
  current_exp?: int64;

  @doc("0")
  next_exp?: int64;

}

/**
 * 多用户详细信息
 */
@route("/x/polymer/pc-electron/v1/user/cards")
@tag("User")
interface 多用户详细信息 {
  @get
  @doc("多用户详细信息")
  多用户详细信息(
    @query @doc("目标用户的mid列表") uids: unknown,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("该mid对应的用户信息") _用户mid_?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("mid") mid?: string,
    @query @doc("头像链接") face?: string,
    @query @doc("昵称") name?: string,
    @query @doc("认证信息") official?: Record<unknown>,
    @query @doc("会员信息") vip?: Record<unknown>,
    @query @doc("昵称渲染信息") name_render?: unknown,
    @query @doc("昵称颜色信息（？）") colors_info?: Record<unknown>,
    @query @doc("`\"Default\"` 或 `\"Colorful\"`") render_scheme?: string,
    @query @doc("昵称颜色（？）") color?: unknown[],
    @query @doc("`[\"6\"]`") color_ids?: unknown[],
    @query @doc("内容") 项?: unknown,
    @query @doc("颜色1") field_0?: Record<unknown>,
    @query @doc("颜色(n+1)") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("浅色模式昵称颜色") color_day?: string,
    @query @doc("深色模式昵称颜色") color_night?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("该mid对应的用户信息")
  _用户mid_?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

}

/**
 * {用户mid} 对象
 */
@doc("{用户mid} 数据模型")
model 用户mid {
  @doc("mid")
  mid?: string;

  @doc("头像链接")
  face?: string;

  @doc("昵称")
  name?: string;

}

/**
 * data.official 对象
 */
@doc("data.official 数据模型")
model Dataofficial {
}

/**
 * data.vip 对象
 */
@doc("data.vip 数据模型")
model Datavip {
  @doc("昵称渲染信息")
  name_render?: unknown;

}

/**
 * name_render 对象
 */
@doc("name_render 数据模型")
model Name_render {
  @doc("昵称颜色信息（？）")
  colors_info?: Record<unknown>;

  @doc("`\"Default\"` 或 `\"Colorful\"`")
  render_scheme?: string;

}

/**
 * colors_info 对象
 */
@doc("colors_info 数据模型")
model Colors_info {
  @doc("昵称颜色（？）")
  color?: unknown[];

  @doc("`[\"6\"]`")
  color_ids?: unknown[];

  @doc("内容")
  项?: unknown;

  @doc("颜色1")
  field_0?: Record<unknown>;

  @doc("颜色(n+1)")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("浅色模式昵称颜色")
  color_day?: string;

  @doc("深色模式昵称颜色")
  color_night?: string;

}

/**
 * 多用户详细信息2
 */
@route("/account/v1/user/cards")
@tag("User")
interface 多用户详细信息2 {
  @get
  @doc("多用户详细信息2")
  多用户详细信息2(
    @query @doc("目标用户的mid列表") uids: unknown,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: unknown[],
  ): ApiResponse<unknown>;
}

/**
 * 多用户详细信息3
 */
@route("/x/im/user_infos")
@tag("User")
interface 多用户详细信息3 {
  @get
  @doc("多用户详细信息3")
  多用户详细信息3(
    @query @doc("目标用户的mid列表") uids: unknown,
    @query @doc("内容") 项?: unknown,
    @query @doc("用户1") field_0?: Record<unknown>,
    @query @doc("用户(n+1)") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("mid") mid?: int64,
    @query @doc("昵称") name?: string,
    @query @doc("头像链接") face?: string,
    @query @doc("签名") sign?: string,
    @query @doc("用户权限等级") rank?: int64,
    @query @doc("当前等级") level?: int64,
    @query @doc("封禁状态") silence?: int64,
    @query @doc("大会员信息") vip?: Record<unknown>,
    @query @doc("认证信息") offical?: Record<unknown>,
    @query @doc("专业信息？") expert_info?: Record<unknown>,
  ): ApiResponse<unknown>;
}
