import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Appwidget;

/**
 * 获取APP端开屏图片列表
 */
@route("/x/v2/splash/brand/list")
@tag("Appwidget")
interface 获取app端开屏图片列表 {
  @get
  @doc("获取APP端开屏图片列表")
  获取app端开屏图片列表(
    @query @doc("APP密钥") appkey: string,
    @query @doc("当前时间戳") ts: int64,
    @query @doc("APP签名") sign: string,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("1800") pull_interval?: int64,
    @query @doc("false") forcibly?: boolean,
    @query @doc("order") rule?: string,
    @query @doc("开屏图片列表") list?: unknown[],
    @query @doc("默认显示项") show?: unknown[],
    @query @doc("内容") 项?: unknown,
    @query @doc("开屏图片1") field_0?: Record<unknown>,
    @query @doc("开屏图片(n+1)") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("开屏图片id") id?: int64,
    @query @doc("开屏图片url") thumb?: string,
    @query @doc("“bilibili”logo图片url") logo_url?: string,
    @query @doc("内容") 项?: unknown,
    @query @doc("套了个娃？") field_0?: Record<unknown>,
    @query @doc("开屏图片id") id?: int64,
    @query @doc("起始时间？") begin_time?: int64,
    @query @doc("结束时间？") end_time?: int64,
    @query @doc("0") probability?: int64,
    @query @doc("显示时间？") duration?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("1800")
  pull_interval?: int64;

  @doc("false")
  forcibly?: boolean;

  @doc("order")
  rule?: string;

  @doc("开屏图片列表")
  list?: unknown[];

  @doc("默认显示项")
  show?: unknown[];

  @doc("内容")
  项?: unknown;

  @doc("开屏图片1")
  field_0?: Record<unknown>;

  @doc("开屏图片(n+1)")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("开屏图片id")
  id?: int64;

  @doc("开屏图片url")
  thumb?: string;

  @doc("“bilibili”logo图片url")
  logo_url?: string;

  @doc("内容")
  项?: unknown;

  @doc("套了个娃？")
  field_0?: Record<unknown>;

  @doc("开屏图片id")
  id?: int64;

  @doc("起始时间？")
  begin_time?: int64;

  @doc("结束时间？")
  end_time?: int64;

  @doc("0")
  probability?: int64;

  @doc("显示时间？")
  duration?: int64;

}

/**
 * 获取APP端开屏幕广告信息
 */
@route("/x/v2/splash/list")
@tag("Appwidget")
interface 获取app端开屏幕广告信息 {
  @get
  @doc("获取APP端开屏幕广告信息")
  获取app端开屏幕广告信息(
    @query @doc("客户端内部版本号") build: int32,
    @query @doc("android, iphone, ipad") mobi_app: string,
    @query @doc("android, ios") platform: string,
    @query @doc("屏幕高度") height: int32,
    @query @doc("屏幕宽度") width: int32,
    @query @doc("生日日期(四位数，例 0101)") birth: string,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("长度为33, 前13位是当前秒级时间戳") splash_request_id?: unknown,
    @query @doc("最长显示时间？") max_time?: int32,
    @query @doc("最少显示时间？") min_interval?: int32,
    @query @doc("显示时间？") pull_interval?: int32,
    @query @doc("显示时间？") keep_ids?: int32,
    @query @doc("广告 list") list?: unknown,
    @query @doc("广告id") id?: int32,
    @query @doc("1") type?: int32,
    @query @doc("39") card_type?: int32,
    @query @doc("持续时间？") duration?: int32,
    @query @doc("开始展示时间") begin_time?: int32,
    @query @doc("停止展示时间") end_time?: int32,
    @query @doc("广告图片") thumb?: unknown,
    @query @doc("作用尚不明确") hash?: string,
    @query @doc("空值") logo_url?: string,
    @query @doc("空值") logo_hash?: string,
    @query @doc("是否跳转？") skip?: int32,
    @query @doc("跳转的url") uri?: string,
    @query @doc("视频url") video_url?: string,
    @query @doc("视频hash") video_hash?: string,
    @query @doc("视频宽度") video_width?: int64,
    @query @doc("视频高度") video_height?: int64,
    @query @doc("空值") uri_title?: string,
    @query @doc("929") source?: int32,
    @query @doc("1") cm_mark?: int32,
    @query @doc("作用尚不明确") ad_cb?: string,
    @query @doc("926") resource_id?: int32,
    @query @doc("作用尚不明确") request_id?: string,
    @query @doc("客户端IP") client_ip?: string,
    @query @doc("作用尚不明确") is_ad?: boolean,
    @query @doc("作用尚不明确") is_ad_loc?: boolean,
    @query @doc("滑动进入第三方应用") schema_title?: string,
    @query @doc("跳转的 APP 的白名单") schema_callup_white_list?: unknown[],
    @query @doc("显示信息？") extra?: Record<unknown>,
    @query @doc("是否可以当场下载 APP?") enable_pre_download?: boolean,
    @query @doc("是否可以静默下载 APP?") enable_background_download?: boolean,
    @query @doc("是否可以跳转(互动)？") interact_type?: int32,
    @query @doc("跳转(互动) url") interact_url?: string,
    @query @doc("作用尚不明确") interact_distance?: int32,
    @query @doc("所有的按钮") guide_button_list?: unknown[],
    @query @doc("作用尚不明确") mark_with_skip_style?: int64,
    @query @doc("作用尚不明确") skip_button_height?: int64,
    @query @doc("空值") guide_instructions_new?: string,
    @query @doc("空值") schema_title_new?: string,
    @query @doc("空") related_ids?: unknown[],
    @query @doc("空") schema_list?: unknown[],
    @query @doc("秒级时间戳") activity_time?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("长度为33, 前13位是当前秒级时间戳")
  splash_request_id?: unknown;

  @doc("最长显示时间？")
  max_time?: int32;

  @doc("最少显示时间？")
  min_interval?: int32;

  @doc("显示时间？")
  pull_interval?: int32;

  @doc("显示时间？")
  keep_ids?: int32;

  @doc("广告 list")
  list?: unknown;

  @doc("广告id")
  id?: int32;

  @doc("1")
  type?: int32;

  @doc("39")
  card_type?: int32;

  @doc("持续时间？")
  duration?: int32;

  @doc("开始展示时间")
  begin_time?: int32;

  @doc("停止展示时间")
  end_time?: int32;

  @doc("广告图片")
  thumb?: unknown;

  @doc("作用尚不明确")
  hash?: string;

  @doc("空值")
  logo_url?: string;

  @doc("空值")
  logo_hash?: string;

  @doc("是否跳转？")
  skip?: int32;

  @doc("跳转的url")
  uri?: string;

  @doc("视频url")
  video_url?: string;

  @doc("视频hash")
  video_hash?: string;

  @doc("视频宽度")
  video_width?: int64;

  @doc("视频高度")
  video_height?: int64;

  @doc("空值")
  uri_title?: string;

  @doc("929")
  source?: int32;

  @doc("1")
  cm_mark?: int32;

  @doc("作用尚不明确")
  ad_cb?: string;

  @doc("926")
  resource_id?: int32;

  @doc("作用尚不明确")
  request_id?: string;

  @doc("客户端IP")
  client_ip?: string;

  @doc("作用尚不明确")
  is_ad?: boolean;

  @doc("作用尚不明确")
  is_ad_loc?: boolean;

  @doc("滑动进入第三方应用")
  schema_title?: string;

  @doc("跳转的 APP 的白名单")
  schema_callup_white_list?: unknown[];

  @doc("显示信息？")
  extra?: Record<unknown>;

  @doc("是否可以当场下载 APP?")
  enable_pre_download?: boolean;

  @doc("是否可以静默下载 APP?")
  enable_background_download?: boolean;

  @doc("是否可以跳转(互动)？")
  interact_type?: int32;

  @doc("跳转(互动) url")
  interact_url?: string;

  @doc("作用尚不明确")
  interact_distance?: int32;

  @doc("所有的按钮")
  guide_button_list?: unknown[];

  @doc("作用尚不明确")
  mark_with_skip_style?: int64;

  @doc("作用尚不明确")
  skip_button_height?: int64;

}

/**
 * extra 对象
 */
@doc("extra 数据模型")
model Extra {
}

/**
 * guide_button_list 对象
 */
@doc("guide_button_list 数据模型")
model Guide_button_list {
  @doc("空值")
  guide_instructions_new?: string;

  @doc("空值")
  schema_title_new?: string;

  @doc("空")
  related_ids?: unknown[];

  @doc("空")
  schema_list?: unknown[];

  @doc("秒级时间戳")
  activity_time?: int64;

}
