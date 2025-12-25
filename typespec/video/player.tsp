import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Video;

/**
 * web 播放器信息
 */
@route("/x/player/wbi/v2")
@tag("Video")
interface Web播放器信息 {
  @get
  @doc("web 播放器信息")
  web播放器信息(
    @query @doc("稿件 avid") aid: int64,
    @query @doc("稿件 bvid") bvid: string,
    @query @doc("稿件 cid") cid: int64,
    @query @doc("番剧 season_id") season_id: int64,
    @query @doc("剧集 ep_id") ep_id: int64,
    @query @doc("WBI 签名") w_rid: string,
    @query @doc("当前 unix 时间戳") wts: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("数据本体") data?: Record<unknown>,
    @query @doc("视频 aid") aid?: int64,
    @query @doc("视频 bvid") bvid?: string,
    @query @doc("禁止分享?") no_share?: boolean,
    @query @doc("视频 cid") cid?: int64,
    @query @doc("webmask 防挡字幕信息") dm_mask?: Record<unknown>,
    @query @doc("字幕信息") subtitle?: Record<unknown>,
    @query @doc("分段章节信息") view_points?: unknown[],
    @query @doc("请求 IP 信息") ip_info?: Record<unknown>,
    @query @doc("登录用户 mid") login_mid?: int64,
    @query @doc("是否为该视频 UP 主") is_owner?: boolean,
    @query @doc("登录用户等级信息") level_info?: Record<unknown>,
    @query @doc("登录用户 VIP 信息") vip?: Record<unknown>,
    @query @doc("答题状态") answer_status?: int64,
    @query @doc("封禁时间?") block_time?: int64,
    @query @doc("上次观看时间?") last_play_time?: int64,
    @query @doc("上次观看 cid?") last_play_cid?: int64,
    @query @doc("当前 UNIX 秒级时间戳") now_time?: int64,
    @query @doc("在线人数") online_count?: int64,
    @query @doc("是否必须登陆才能查看字幕") need_login_subtitle?: boolean,
    @query @doc("`为创作付费，购买观看完整视频\\") preview_toast?: string,
    @query @doc("互动视频资讯") interaction?: Record<unknown>,
    @query @doc("播放器相关信息?") fawkes?: Record<unknown>,
    @query @doc("背景音乐信息") bgm_info?: Record<unknown>,
    @query @doc("是否为充电专属视频") is_upower_exclusive?: boolean,
    @query @doc("充电专属视频信息") elec_high_level?: Record<unknown>,
    @query @doc("是否 360 全景视频") is_360?: boolean,
    @query @doc("音乐 id") music_id?: string,
    @query @doc("音乐标题") music_title?: string,
    @query @doc("跳转 URL") jump_url?: string,
    @query @doc("视频 cid") cid?: int64,
    @query @doc("未知") plat?: int64,
    @query @doc("webmask 取样 fps") fps?: int64,
    @query @doc("未知") time?: int64,
    @query @doc("webmask 资源 url") mask_url?: string,
    @query @doc("true") allow_submit?: boolean,
    @query @doc("\"\"") lan?: string,
    @query @doc("\"\"") lan_doc?: string,
    @query @doc("不登录为 `[]`") subtitles?: unknown[],
    @query @doc("和 id 不一样") id_str?: string,
    @query @doc("语言类型英文字母缩写") lan?: string,
    @query @doc("语言类型中文名称") lan_doc?: string,
    @query @doc("资源 url 地址") subtitle_url?: string,
    @query @doc("0") type?: int64,
    @query @doc("分段章节名") content?: string,
    @query @doc("分段章节起始秒数") from?: int64,
    @query @doc("分段章节结束秒数") to?: int64,
    @query @doc("图片资源地址") imgUrl?: string,
    @query @doc("\"\"") logoUrl?: string,
    @query @doc("剧情图id") graph_version?: int64,
    @query @doc("未登入有机会返回 `登录后才能体验全部结局哦～`") msg?: string,
    @query @doc("错误信息？") error_toast?: string,
    @query @doc("0?") mark?: int64,
    @query @doc("0?") need_reload?: int64,
    @query @doc("解锁视频所需最低定价档位的代码") privilege_type?: int64,
    @query @doc("提示标题") title?: string,
    @query @doc("提示子标题") sub_title?: string,
    @query @doc("是否显示按钮") show_button?: boolean,
    @query @doc("按钮文本") button_text?: string,
    @query @doc("跳转url信息") jump_url?: Record<unknown>,
    @query @doc("充电介绍语") intro?: string,
    @query @doc("（？）") open?: boolean,
    @query @doc("（？）") new?: boolean,
    @query @doc("（？）") question_text?: string,
    @query @doc("（？）") qa_detail_link?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("视频 aid")
  aid?: int64;

  @doc("视频 bvid")
  bvid?: string;

  @doc("禁止分享?")
  no_share?: boolean;

  @doc("视频 cid")
  cid?: int64;

  @doc("webmask 防挡字幕信息")
  dm_mask?: Record<unknown>;

  @doc("字幕信息")
  subtitle?: Record<unknown>;

  @doc("分段章节信息")
  view_points?: unknown[];

  @doc("请求 IP 信息")
  ip_info?: Record<unknown>;

  @doc("登录用户 mid")
  login_mid?: int64;

  @doc("是否为该视频 UP 主")
  is_owner?: boolean;

  @doc("登录用户等级信息")
  level_info?: Record<unknown>;

  @doc("登录用户 VIP 信息")
  vip?: Record<unknown>;

  @doc("答题状态")
  answer_status?: int64;

  @doc("封禁时间?")
  block_time?: int64;

  @doc("上次观看时间?")
  last_play_time?: int64;

  @doc("上次观看 cid?")
  last_play_cid?: int64;

  @doc("当前 UNIX 秒级时间戳")
  now_time?: int64;

  @doc("在线人数")
  online_count?: int64;

  @doc("是否必须登陆才能查看字幕")
  need_login_subtitle?: boolean;

  @doc("`为创作付费，购买观看完整视频\\")
  preview_toast?: string;

  @doc("互动视频资讯")
  interaction?: Record<unknown>;

  @doc("播放器相关信息?")
  fawkes?: Record<unknown>;

  @doc("背景音乐信息")
  bgm_info?: Record<unknown>;

  @doc("是否为充电专属视频")
  is_upower_exclusive?: boolean;

  @doc("充电专属视频信息")
  elec_high_level?: Record<unknown>;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("是否 360 全景视频")
  is_360?: boolean;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("音乐 id")
  music_id?: string;

  @doc("音乐标题")
  music_title?: string;

  @doc("跳转 URL")
  jump_url?: string;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("视频 cid")
  cid?: int64;

  @doc("未知")
  plat?: int64;

  @doc("webmask 取样 fps")
  fps?: int64;

  @doc("未知")
  time?: int64;

  @doc("webmask 资源 url")
  mask_url?: string;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("true")
  allow_submit?: boolean;

  @doc("\"\"")
  lan?: string;

  @doc("\"\"")
  lan_doc?: string;

  @doc("不登录为 `[]`")
  subtitles?: unknown[];

}

/**
 * subtitle 对象
 */
@doc("subtitle 数据模型")
model Subtitle {
  @doc("和 id 不一样")
  id_str?: string;

  @doc("语言类型英文字母缩写")
  lan?: string;

  @doc("语言类型中文名称")
  lan_doc?: string;

  @doc("资源 url 地址")
  subtitle_url?: string;

  @doc("0")
  type?: int64;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("分段章节名")
  content?: string;

  @doc("分段章节起始秒数")
  from?: int64;

  @doc("分段章节结束秒数")
  to?: int64;

  @doc("图片资源地址")
  imgUrl?: string;

  @doc("\"\"")
  logoUrl?: string;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("剧情图id")
  graph_version?: int64;

  @doc("未登入有机会返回 `登录后才能体验全部结局哦～`")
  msg?: string;

  @doc("错误信息？")
  error_toast?: string;

  @doc("0?")
  mark?: int64;

  @doc("0?")
  need_reload?: int64;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("解锁视频所需最低定价档位的代码")
  privilege_type?: int64;

  @doc("提示标题")
  title?: string;

  @doc("提示子标题")
  sub_title?: string;

  @doc("是否显示按钮")
  show_button?: boolean;

  @doc("按钮文本")
  button_text?: string;

  @doc("跳转url信息")
  jump_url?: Record<unknown>;

  @doc("充电介绍语")
  intro?: string;

  @doc("（？）")
  open?: boolean;

  @doc("（？）")
  new?: boolean;

  @doc("（？）")
  question_text?: string;

  @doc("（？）")
  qa_detail_link?: string;

}

/**
 * 播放反馈
 */
@route("/x/resource/laser2")
@tag("Video")
interface 播放反馈 {
  @post
  @doc("播放反馈")
  播放反馈(
    @query @doc("-") _?: unknown,
    @query @doc("当前用户 mid") mid: int64,
    @query @doc("BUVID (APP) 或 buvid3 (Web)") buvid: string,
    @query @doc("APP 密钥") app_key: string,
    @query @doc("日志 URL") url: string,
    @query @doc("任务类型") task_type: int64,
    @query @doc("-") _?: unknown,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("数据本体") data?: Record<unknown>,
    @query @doc("-") _?: unknown,
    @query @doc("任务 ID?") task_id?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("-")
  _?: unknown;

  @doc("任务 ID?")
  task_id?: int64;

}
