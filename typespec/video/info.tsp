import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Video;

/**
 * 获取视频详细信息(web端)
 */
@route("/x/web-interface/wbi/view")
@tag("Video")
interface 获取视频详细信息web端 {
  @get
  @doc("获取视频详细信息(web端)")
  获取视频详细信息web端(
    @query @doc("稿件avid") aid: int64,
    @query @doc("稿件bvid") bvid: string,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("稿件bvid") bvid?: string,
    @query @doc("稿件avid") aid?: int64,
    @query @doc("稿件分P总数") videos?: int64,
    @query @doc("分区tid") tid?: int64,
    @query @doc("分区tid (v2)") tid_v2?: int64,
    @query @doc("子分区名称") tname?: string,
    @query @doc("子分区名称 (v2)") tname_v2?: string,
    @query @doc("视频类型") copyright?: int64,
    @query @doc("稿件封面图片url") pic?: string,
    @query @doc("稿件标题") title?: string,
    @query @doc("稿件发布时间") pubdate?: int64,
    @query @doc("用户投稿时间") ctime?: int64,
    @query @doc("视频简介") desc?: string,
    @query @doc("新版视频简介") desc_v2?: unknown[],
    @query @doc("视频状态") state?: int64,
    @query @doc("~~稿件属性位配置~~") __attribute___已经弃用_?: unknown,
    @query @doc("稿件总时长(所有分P)") duration?: int64,
    @query @doc("撞车视频跳转avid") forward?: int64,
    @query @doc("稿件参与的活动id") mission_id?: int64,
    @query @doc("重定向url") redirect_url?: string,
    @query @doc("视频属性标志") rights?: Record<unknown>,
    @query @doc("视频UP主信息") owner?: Record<unknown>,
    @query @doc("视频状态数") stat?: Record<unknown>,
    @query @doc("争议/警告信息") argue_info?: Record<unknown>,
    @query @doc("视频同步发布的的动态的文字内容") dynamic?: string,
    @query @doc("视频1P cid") cid?: int64,
    @query @doc("视频1P分辨率") dimension?: Record<unknown>,
    @query @doc("用于青少年模式") teenage_mode?: int64,
    @query @doc("是否可以在 Story Mode 展示?") is_story?: boolean,
    @query @doc("是否为充电专属视频") is_upower_exclusive?: boolean,
    @query @doc("充电专属视频是否支持试看") is_upower_preview?: boolean,
    @query @doc("是否不允许缓存?") no_cache?: boolean,
    @query @doc("视频分P列表") pages?: unknown[],
    @query @doc("视频CC字幕信息") subtitle?: Record<unknown>,
    @query @doc("视频合集信息") ugc_season?: Record<unknown>,
    @query @doc("合作成员列表") staff?: unknown[],
    @query @doc("用户装扮信息") user_garb?: Record<unknown>,
    @query @doc("空串") like_icon?: string,
    @query @doc("需要跳转到BV号?") need_jump_bv?: boolean,
    @query @doc("禁止展示UP主信息?") disable_show_up_info?: boolean,
    @query @doc("是否为 Story Mode 视频?") is_story_play?: boolean,
    @query @doc("是否为自己投稿的视频?") is_view_self?: boolean,
    @query @doc("内容") 项?: unknown,
    @query @doc("新版简介内容") field_0?: Record<unknown>,
    @query @doc("简介内容") raw_text?: string,
    @query @doc("类型") type?: int64,
    @query @doc("被@用户的mid") biz_id?: int64,
    @query @doc("是否允许承包") bp?: int64,
    @query @doc("是否支持充电") elec?: int64,
    @query @doc("是否允许下载") download?: int64,
    @query @doc("是否电影") movie?: int64,
    @query @doc("是否PGC付费") pay?: int64,
    @query @doc("是否有高码率") hd5?: int64,
    @query @doc("是否显示“禁止转载”标志") no_reprint?: int64,
    @query @doc("是否自动播放") autoplay?: int64,
    @query @doc("是否UGC付费") ugc_pay?: int64,
    @query @doc("是否为联合投稿") is_cooperation?: int64,
    @query @doc("0") ugc_pay_preview?: int64,
    @query @doc("0") no_background?: int64,
    @query @doc("0") clean_mode?: int64,
    @query @doc("是否为互动视频") is_stein_gate?: int64,
    @query @doc("是否为全景视频") is_360?: int64,
    @query @doc("0") no_share?: int64,
    @query @doc("0") arc_pay?: int64,
    @query @doc("0") free_watch?: int64,
    @query @doc("UP主mid") mid?: int64,
    @query @doc("UP主昵称") name?: string,
    @query @doc("UP主头像") face?: string,
    @query @doc("稿件avid") aid?: int64,
    @query @doc("播放数") view?: int64,
    @query @doc("弹幕数") danmaku?: int64,
    @query @doc("评论数") reply?: int64,
    @query @doc("收藏数") favorite?: int64,
    @query @doc("投币数") coin?: int64,
    @query @doc("分享数") share?: int64,
    @query @doc("当前排名") now_rank?: int64,
    @query @doc("历史最高排行") his_rank?: int64,
    @query @doc("获赞数") like?: int64,
    @query @doc("点踩数") dislike?: int64,
    @query @doc("视频评分") evaluation?: string,
    @query @doc("作用尚不明确") vt?: int32,
    @query @doc("作用尚不明确") argue_link?: string,
    @query @doc("警告/争议提示信息") argue_msg?: string,
    @query @doc("作用尚不明确") argue_type?: int32,
    @query @doc("内容") 项?: unknown,
    @query @doc("1P内容") field_0?: Record<unknown>,
    @query @doc("(n+1)P内容") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("分P cid") cid?: int64,
    @query @doc("分P序号") page?: int64,
    @query @doc("视频来源") from?: string,
    @query @doc("分P标题") part?: string,
    @query @doc("分P持续时间") duration?: int64,
    @query @doc("站外视频vid") vid?: string,
    @query @doc("站外视频跳转url") weblink?: string,
    @query @doc("当前分P分辨率") dimension?: Record<unknown>,
    @query @doc("当前分P 宽度") width?: int64,
    @query @doc("当前分P 高度") height?: int64,
    @query @doc("是否将宽高对换") rotate?: int64,
    @query @doc("是否允许提交字幕") allow_submit?: boolean,
    @query @doc("字幕列表") list?: unknown[],
    @query @doc("内容") 项?: unknown,
    @query @doc("字幕1") field_0?: Record<unknown>,
    @query @doc("字幕(n+1)") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("字幕id") id?: int64,
    @query @doc("字幕语言") lan?: string,
    @query @doc("字幕语言名称") lan_doc?: string,
    @query @doc("是否锁定") is_lock?: boolean,
    @query @doc("字幕上传者mid") author_mid?: int64,
    @query @doc("json格式字幕文件url") subtitle_url?: string,
    @query @doc("字幕上传者信息") author?: Record<unknown>,
    @query @doc("字幕上传者mid") mid?: int64,
    @query @doc("字幕上传者昵称") name?: string,
    @query @doc("字幕上传者性别") sex?: string,
    @query @doc("字幕上传者头像url") face?: string,
    @query @doc("字幕上传者签名") sign?: string,
    @query @doc("10000") rank?: int64,
    @query @doc("0") birthday?: int64,
    @query @doc("0") is_fake_account?: int64,
    @query @doc("0") is_deleted?: int64,
    @query @doc("视频合集id") id?: int64,
    @query @doc("视频合集标题") title?: string,
    @query @doc("视频合集作者id") mid?: string,
    @query @doc("视频合集介绍") intro?: string,
    @query @doc("？") sign_state?: int64,
    @query @doc("稿件属性位") attribute?: int64,
    @query @doc("视频合集中分部列表，名称可由up主自定义，默认为正片") sections?: unknown[],
    @query @doc("视频合集状态数") stat?: Record<unknown>,
    @query @doc("视频合集中视频数量") ep_count?: int64,
    @query @doc("作用尚不明确") season_type?: int64,
    @query @doc("是否为付费合集") is_pay_season?: boolean,
    @query @doc("作用尚不明确") enable_vt?: int64,
    @query @doc("视频合集中分部所属视频合集id") season_id?: int64,
    @query @doc("视频合集中分部id") section_id?: int64,
    @query @doc("视频合集中分部标题") title?: string,
    @query @doc("？") type?: int64,
    @query @doc("视频合集中分部的视频列表") episodes?: unknown[],
    @query @doc("视频合集中分部中视频所属视频合集id") season_id?: int64,
    @query @doc("视频合集中视频合集中分部中视频所属视频合集分部id") section_id?: int64,
    @query @doc("视频合集分部中视频id(以下简称视频)") id?: int64,
    @query @doc("视频aid") aid?: int64,
    @query @doc("视频cid") cid?: int64,
    @query @doc("视频标题") title?: string,
    @query @doc("~~稿件属性位配置~~") __attribute___已经弃用_?: unknown,
    @query @doc("视频详细信息") arc?: Record<unknown>,
    @query @doc("视频合集id") season_id?: int64,
    @query @doc("视频合集总浏览量") view?: int64,
    @query @doc("视频合集总弹幕量") danmaku?: int64,
    @query @doc("视频合集总评论量") reply?: int64,
    @query @doc("视频合集总收藏数") fav?: int64,
    @query @doc("视频合集总投币数") coin?: int64,
    @query @doc("视频合集总分享数") share?: int64,
    @query @doc("视频合集当前排名") now_rank?: int64,
    @query @doc("视频合集历史排名") his_rank?: int64,
    @query @doc("视频合集总获赞数") like?: int64,
    @query @doc("作用尚不明确") vt?: int64,
    @query @doc("作用尚不明确") vv?: int64,
    @query @doc("内容") 项?: unknown,
    @query @doc("合作成员1") field_0?: Record<unknown>,
    @query @doc("合作成员(n+1)") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("成员mid") mid?: int64,
    @query @doc("成员名称") title?: string,
    @query @doc("成员昵称") name?: string,
    @query @doc("成员头像url") face?: string,
    @query @doc("成员大会员状态") vip?: Record<unknown>,
    @query @doc("成员认证信息") official?: Record<unknown>,
    @query @doc("成员粉丝数") follower?: int64,
    @query @doc("成员会员类型") type?: int64,
    @query @doc("会员状态") status?: int64,
    @query @doc("到期时间") due_date?: int64,
    @query @doc("0") theme_type?: int64,
    @query @doc("成员认证级别") role?: int64,
    @query @doc("成员认证名") title?: string,
    @query @doc("成员认证备注") desc?: string,
    @query @doc("成员认证类型") type?: int64,
    @query @doc("某url？") url_image_ani_cut?: string,
    @query @doc("当前稿件aid") aid?: int64,
    @query @doc("1：入站必刷收录<br/>2：第?期每周必看<br/>3：全站排行榜最高第?名<br/>4：热门") type?: int64,
    @query @doc("描述") desc?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("稿件bvid")
  bvid?: string;

  @doc("稿件avid")
  aid?: int64;

  @doc("稿件分P总数")
  videos?: int64;

  @doc("分区tid")
  tid?: int64;

  @doc("分区tid (v2)")
  tid_v2?: int64;

  @doc("子分区名称")
  tname?: string;

  @doc("子分区名称 (v2)")
  tname_v2?: string;

  @doc("视频类型")
  copyright?: int64;

  @doc("稿件封面图片url")
  pic?: string;

  @doc("稿件标题")
  title?: string;

  @doc("稿件发布时间")
  pubdate?: int64;

  @doc("用户投稿时间")
  ctime?: int64;

  @doc("视频简介")
  desc?: string;

  @doc("新版视频简介")
  desc_v2?: unknown[];

  @doc("稿件总时长(所有分P)")
  duration?: int64;

  @doc("稿件参与的活动id")
  mission_id?: int64;

  @doc("视频属性标志")
  rights?: Record<unknown>;

  @doc("视频UP主信息")
  owner?: Record<unknown>;

  @doc("视频状态数")
  stat?: Record<unknown>;

  @doc("争议/警告信息")
  argue_info?: Record<unknown>;

  @doc("视频同步发布的的动态的文字内容")
  dynamic?: string;

  @doc("视频1P cid")
  cid?: int64;

  @doc("视频1P分辨率")
  dimension?: Record<unknown>;

  @doc("用于青少年模式")
  teenage_mode?: int64;

  @doc("是否可以在 Story Mode 展示?")
  is_story?: boolean;

  @doc("是否为充电专属视频")
  is_upower_exclusive?: boolean;

  @doc("充电专属视频是否支持试看")
  is_upower_preview?: boolean;

  @doc("是否不允许缓存?")
  no_cache?: boolean;

  @doc("视频分P列表")
  pages?: unknown[];

  @doc("视频CC字幕信息")
  subtitle?: Record<unknown>;

  @doc("视频合集信息")
  ugc_season?: Record<unknown>;

  @doc("合作成员列表")
  staff?: unknown[];

  @doc("用户装扮信息")
  user_garb?: Record<unknown>;

  @doc("空串")
  like_icon?: string;

  @doc("需要跳转到BV号?")
  need_jump_bv?: boolean;

  @doc("禁止展示UP主信息?")
  disable_show_up_info?: boolean;

  @doc("是否为 Story Mode 视频?")
  is_story_play?: boolean;

  @doc("是否为自己投稿的视频?")
  is_view_self?: boolean;

  @doc("内容")
  项?: unknown;

  @doc("新版简介内容")
  field_0?: Record<unknown>;

  @doc("简介内容")
  raw_text?: string;

  @doc("类型")
  type?: int64;

  @doc("被@用户的mid")
  biz_id?: int64;

}

/**
 * rights 对象
 */
@doc("rights 数据模型")
model Rights {
  @doc("是否允许承包")
  bp?: int64;

  @doc("是否支持充电")
  elec?: int64;

  @doc("是否允许下载")
  download?: int64;

  @doc("是否电影")
  movie?: int64;

  @doc("是否PGC付费")
  pay?: int64;

  @doc("是否有高码率")
  hd5?: int64;

  @doc("是否显示“禁止转载”标志")
  no_reprint?: int64;

  @doc("是否自动播放")
  autoplay?: int64;

  @doc("是否UGC付费")
  ugc_pay?: int64;

  @doc("是否为联合投稿")
  is_cooperation?: int64;

  @doc("0")
  ugc_pay_preview?: int64;

  @doc("0")
  no_background?: int64;

  @doc("0")
  clean_mode?: int64;

  @doc("是否为互动视频")
  is_stein_gate?: int64;

  @doc("是否为全景视频")
  is_360?: int64;

  @doc("0")
  no_share?: int64;

  @doc("0")
  arc_pay?: int64;

  @doc("0")
  free_watch?: int64;

}

/**
 * owner 对象
 */
@doc("owner 数据模型")
model Owner {
  @doc("UP主mid")
  mid?: int64;

  @doc("UP主昵称")
  name?: string;

  @doc("UP主头像")
  face?: string;

}

/**
 * stat 对象
 */
@doc("stat 数据模型")
model Stat {
  @doc("稿件avid")
  aid?: int64;

  @doc("播放数")
  view?: int64;

  @doc("弹幕数")
  danmaku?: int64;

  @doc("评论数")
  reply?: int64;

  @doc("收藏数")
  favorite?: int64;

  @doc("投币数")
  coin?: int64;

  @doc("分享数")
  share?: int64;

  @doc("当前排名")
  now_rank?: int64;

  @doc("历史最高排行")
  his_rank?: int64;

  @doc("获赞数")
  like?: int64;

  @doc("点踩数")
  dislike?: int64;

  @doc("视频评分")
  evaluation?: string;

  @doc("作用尚不明确")
  vt?: int32;

}

/**
 * argue_info 对象
 */
@doc("argue_info 数据模型")
model Argue_info {
  @doc("作用尚不明确")
  argue_link?: string;

  @doc("警告/争议提示信息")
  argue_msg?: string;

  @doc("作用尚不明确")
  argue_type?: int32;

  @doc("内容")
  项?: unknown;

  @doc("1P内容")
  field_0?: Record<unknown>;

  @doc("(n+1)P内容")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("分P cid")
  cid?: int64;

  @doc("分P序号")
  page?: int64;

  @doc("视频来源")
  from?: string;

  @doc("分P标题")
  part?: string;

  @doc("分P持续时间")
  duration?: int64;

  @doc("站外视频vid")
  vid?: string;

  @doc("站外视频跳转url")
  weblink?: string;

  @doc("当前分P分辨率")
  dimension?: Record<unknown>;

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

}

/**
 * subtitle 对象
 */
@doc("subtitle 数据模型")
model Subtitle {
  @doc("是否允许提交字幕")
  allow_submit?: boolean;

  @doc("字幕列表")
  list?: unknown[];

}

/**
 * subtitle 对象
 */
@doc("subtitle 数据模型")
model Subtitle {
  @doc("内容")
  项?: unknown;

  @doc("字幕1")
  field_0?: Record<unknown>;

  @doc("字幕(n+1)")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("字幕id")
  id?: int64;

  @doc("字幕语言")
  lan?: string;

  @doc("字幕语言名称")
  lan_doc?: string;

  @doc("是否锁定")
  is_lock?: boolean;

  @doc("字幕上传者mid")
  author_mid?: int64;

  @doc("json格式字幕文件url")
  subtitle_url?: string;

  @doc("字幕上传者信息")
  author?: Record<unknown>;

}

/**
 * author 对象
 */
@doc("author 数据模型")
model Author {
  @doc("字幕上传者mid")
  mid?: int64;

  @doc("字幕上传者昵称")
  name?: string;

  @doc("字幕上传者性别")
  sex?: string;

  @doc("字幕上传者头像url")
  face?: string;

  @doc("字幕上传者签名")
  sign?: string;

  @doc("10000")
  rank?: int64;

  @doc("0")
  birthday?: int64;

  @doc("0")
  is_fake_account?: int64;

  @doc("0")
  is_deleted?: int64;

}

/**
 * ugc_season 对象
 */
@doc("ugc_season 数据模型")
model Ugc_season {
  @doc("视频合集id")
  id?: int64;

  @doc("视频合集标题")
  title?: string;

  @doc("视频合集作者id")
  mid?: string;

  @doc("视频合集介绍")
  intro?: string;

  @doc("？")
  sign_state?: int64;

  @doc("视频合集中分部列表，名称可由up主自定义，默认为正片")
  sections?: unknown[];

  @doc("视频合集状态数")
  stat?: Record<unknown>;

  @doc("视频合集中视频数量")
  ep_count?: int64;

  @doc("作用尚不明确")
  season_type?: int64;

  @doc("是否为付费合集")
  is_pay_season?: boolean;

  @doc("作用尚不明确")
  enable_vt?: int64;

  @doc("视频合集中分部所属视频合集id")
  season_id?: int64;

  @doc("视频合集中分部id")
  section_id?: int64;

  @doc("视频合集中分部标题")
  title?: string;

  @doc("？")
  type?: int64;

  @doc("视频合集中分部的视频列表")
  episodes?: unknown[];

  @doc("视频合集中分部中视频所属视频合集id")
  season_id?: int64;

  @doc("视频合集中视频合集中分部中视频所属视频合集分部id")
  section_id?: int64;

  @doc("视频合集分部中视频id(以下简称视频)")
  id?: int64;

  @doc("视频aid")
  aid?: int64;

  @doc("视频cid")
  cid?: int64;

  @doc("视频标题")
  title?: string;

  @doc("视频详细信息")
  arc?: Record<unknown>;

}

/**
 * stat 对象
 */
@doc("stat 数据模型")
model Stat {
  @doc("视频合集id")
  season_id?: int64;

  @doc("视频合集总浏览量")
  view?: int64;

  @doc("视频合集总弹幕量")
  danmaku?: int64;

  @doc("视频合集总评论量")
  reply?: int64;

  @doc("视频合集总收藏数")
  fav?: int64;

  @doc("视频合集总投币数")
  coin?: int64;

  @doc("视频合集总分享数")
  share?: int64;

  @doc("视频合集当前排名")
  now_rank?: int64;

  @doc("视频合集历史排名")
  his_rank?: int64;

  @doc("视频合集总获赞数")
  like?: int64;

  @doc("作用尚不明确")
  vt?: int64;

  @doc("作用尚不明确")
  vv?: int64;

  @doc("内容")
  项?: unknown;

  @doc("合作成员1")
  field_0?: Record<unknown>;

  @doc("合作成员(n+1)")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("成员mid")
  mid?: int64;

  @doc("成员名称")
  title?: string;

  @doc("成员昵称")
  name?: string;

  @doc("成员头像url")
  face?: string;

  @doc("成员大会员状态")
  vip?: Record<unknown>;

  @doc("成员认证信息")
  official?: Record<unknown>;

  @doc("成员粉丝数")
  follower?: int64;

}

/**
 * vip 对象
 */
@doc("vip 数据模型")
model Vip {
  @doc("成员会员类型")
  type?: int64;

  @doc("会员状态")
  status?: int64;

  @doc("到期时间")
  due_date?: int64;

  @doc("0")
  theme_type?: int64;

}

/**
 * official 对象
 */
@doc("official 数据模型")
model Official {
  @doc("成员认证级别")
  role?: int64;

  @doc("成员认证名")
  title?: string;

  @doc("成员认证备注")
  desc?: string;

  @doc("成员认证类型")
  type?: int64;

}

/**
 * user_garb 对象
 */
@doc("user_garb 数据模型")
model User_garb {
  @doc("某url？")
  url_image_ani_cut?: string;

}

/**
 * honor_reply 对象
 */
@doc("honor_reply 数据模型")
model Honor_reply {
  @doc("当前稿件aid")
  aid?: int64;

  @doc("1：入站必刷收录<br/>2：第?期每周必看<br/>3：全站排行榜最高第?名<br/>4：热门")
  type?: int64;

  @doc("描述")
  desc?: int64;

}

/**
 * 获取视频超详细信息(web端)
 */
@route("/x/web-interface/view/detail")
@tag("Video")
interface 获取视频超详细信息web端 {
  @get
  @doc("获取视频超详细信息(web端)")
  获取视频超详细信息web端(
    @query @doc("稿件avid") aid: int64,
    @query @doc("稿件bvid") bvid: string,
    @query @doc("是否获取UP主充电信息") need_elec: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("视频基本信息") View?: Record<unknown>,
    @query @doc("视频UP主信息") Card?: Record<unknown>,
    @query @doc("视频TAG信息") Tags?: unknown[],
    @query @doc("视频热评信息") Reply?: Record<unknown>,
    @query @doc("推荐视频信息") Related?: unknown[],
    @query @doc("？") Spec?: null,
    @query @doc("？") hot_share?: Record<unknown>,
    @query @doc("充电信息") elec?: unknown,
    @query @doc("？") recommend?: null,
    @query @doc("视频操作按钮信息") emergency?: Record<unknown>,
    @query @doc("？") view_addit?: Record<unknown>,
    @query @doc("？") guide?: null,
    @query @doc("？") query_tags?: null,
    @query @doc("分词信息") participle?: unknown[],
    @query @doc("？") module_ctrl?: null,
    @query @doc("？") replace_recommend?: boolean,
    @query @doc("内容") 项?: unknown,
    @query @doc("推荐视频1") field_0?: Record<unknown>,
    @query @doc("推荐视频(n+1)") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("false") show?: boolean,
    @query @doc("空") list?: unknown[],
    @query @doc("是否不显示点赞按钮") no_like?: boolean,
    @query @doc("是否不显示投币按钮") no_coin?: boolean,
    @query @doc("是否不显示收藏按钮") no_fav?: boolean,
    @query @doc("是否不显示分享按钮") no_share?: boolean,
    @query @doc("是否不显示直播推荐") field_63?: boolean,
    @query @doc("是否不显示活动推荐") field_64?: boolean,
    @query @doc("？") field_69?: boolean,
    @query @doc("是否不显示标签与笔记") field_71?: boolean,
    @query @doc("？") field_72?: boolean,
    @query @doc("弹幕:42522\\n投稿时间：2010/06/20 10:13\\n啊哈哈哈，啊哈哈，啊哈，啊……总之就是武器……\",") _desc____sm9307581_n武器A_n_日常_UP主_博丽_灵梦_UID_13308__n播放_1605344?: unknown,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("视频基本信息")
  View?: Record<unknown>;

  @doc("视频UP主信息")
  Card?: Record<unknown>;

  @doc("视频TAG信息")
  Tags?: unknown[];

  @doc("视频热评信息")
  Reply?: Record<unknown>;

  @doc("推荐视频信息")
  Related?: unknown[];

  @doc("？")
  Spec?: null;

  @doc("？")
  hot_share?: Record<unknown>;

  @doc("充电信息")
  elec?: unknown;

  @doc("？")
  recommend?: null;

  @doc("视频操作按钮信息")
  emergency?: Record<unknown>;

  @doc("？")
  view_addit?: Record<unknown>;

  @doc("？")
  guide?: null;

  @doc("？")
  query_tags?: null;

  @doc("分词信息")
  participle?: unknown[];

  @doc("？")
  module_ctrl?: null;

  @doc("？")
  replace_recommend?: boolean;

}

/**
 * View 对象
 */
@doc("View 数据模型")
model View {
}

/**
 * Card 对象
 */
@doc("Card 数据模型")
model Card {
}

/**
 * Reply 对象
 */
@doc("Reply 数据模型")
model Reply {
  @doc("内容")
  项?: unknown;

  @doc("推荐视频1")
  field_0?: Record<unknown>;

  @doc("推荐视频(n+1)")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

}

/**
 * hot_share 对象
 */
@doc("hot_share 数据模型")
model Hot_share {
  @doc("false")
  show?: boolean;

  @doc("空")
  list?: unknown[];

}

/**
 * elec 对象
 */
@doc("elec 数据模型")
model Elec {
}

/**
 * emergency 对象
 */
@doc("emergency 数据模型")
model Emergency {
  @doc("是否不显示点赞按钮")
  no_like?: boolean;

  @doc("是否不显示投币按钮")
  no_coin?: boolean;

  @doc("是否不显示收藏按钮")
  no_fav?: boolean;

  @doc("是否不显示分享按钮")
  no_share?: boolean;

}

/**
 * view_addit 对象
 */
@doc("view_addit 数据模型")
model View_addit {
  @doc("是否不显示直播推荐")
  field_63?: boolean;

  @doc("是否不显示活动推荐")
  field_64?: boolean;

  @doc("？")
  field_69?: boolean;

  @doc("是否不显示标签与笔记")
  field_71?: boolean;

  @doc("？")
  field_72?: boolean;

  @doc("弹幕:42522\\n投稿时间：2010/06/20 10:13\\n啊哈哈哈，啊哈哈，啊哈，啊……总之就是武器……\",")
  _desc____sm9307581_n武器A_n_日常_UP主_博丽_灵梦_UID_13308__n播放_1605344?: unknown;

}

/**
 * 获取视频简介
 */
@route("/x/web-interface/archive/desc")
@tag("Video")
interface 获取视频简介 {
  @get
  @doc("获取视频简介")
  获取视频简介(
    @query @doc("稿件avid") aid: int64,
    @query @doc("稿件bvid") bvid: string,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("简介内容") data?: string,
  ): ApiResponse<unknown>;
}

/**
 * 查询视频分P列表 (avid/bvid转cid)
 */
@route("/x/player/pagelist")
@tag("Video")
interface 查询视频分p列表Avidbvid转cid {
  @get
  @doc("查询视频分P列表 (avid/bvid转cid)")
  查询视频分p列表Avidbvid转cid(
    @query @doc("稿件avid") aid: int64,
    @query @doc("稿件bvid") bvid: string,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("分P列表") data?: unknown[],
    @query @doc("内容") 项?: unknown,
    @query @doc("1P内容") field_0?: Record<unknown>,
    @query @doc("(n+1)P内容") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("当前分P cid") cid?: int64,
    @query @doc("当前分P") page?: int64,
    @query @doc("视频来源") from?: string,
    @query @doc("当前分P标题") part?: string,
    @query @doc("当前分P持续时间") duration?: int64,
    @query @doc("站外视频vid") vid?: string,
    @query @doc("站外视频跳转url") weblink?: string,
    @query @doc("当前分P分辨率") dimension?: Record<unknown>,
    @query @doc("分P封面") first_frame?: string,
    @query @doc("当前分P 宽度") width?: int64,
    @query @doc("当前分P 高度") height?: int64,
    @query @doc("是否将宽高对换") rotate?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("当前分P cid")
  cid?: int64;

  @doc("当前分P")
  page?: int64;

  @doc("视频来源")
  from?: string;

  @doc("当前分P标题")
  part?: string;

  @doc("当前分P持续时间")
  duration?: int64;

  @doc("站外视频vid")
  vid?: string;

  @doc("站外视频跳转url")
  weblink?: string;

  @doc("当前分P分辨率")
  dimension?: Record<unknown>;

  @doc("分P封面")
  first_frame?: string;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("当前分P 宽度")
  width?: int64;

  @doc("当前分P 高度")
  height?: int64;

  @doc("是否将宽高对换")
  rotate?: int64;

}
