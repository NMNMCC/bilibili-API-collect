import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Live;

/**
 * 获取直播间的表情包
 */
@route("/xlive/web-ucenter/v2/emoticon/GetEmoticons")
@tag("Live")
interface 获取直播间的表情包 {
  @get
  @doc("获取直播间的表情包")
  获取直播间的表情包(
    @query @doc("平台") platform: string,
    @query @doc("直播间长号") room_id: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误消息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("表情包数据") data?: unknown,
    @query @doc("品牌标识?") fans_brand?: int64,
    @query @doc("购买链接?") purchase_url?: unknown,
    @query @doc("封面 URL") current_cover?: string,
    @query @doc("表情列表") emoticons?: unknown,
    @query @doc("文字描述") pkg_descript?: string,
    @query @doc("包 ID") pkg_id?: int64,
    @query @doc("包名称") pkg_name?: string,
    @query @doc("使用权限?") pkg_perm?: int64,
    @query @doc("包类型") pkg_type?: int64,
    @query @doc("最近使用的表情") recently_used_emoticons?: unknown,
    @query @doc("顶部展示信息?") top_show?: Record<unknown>,
    @query @doc("最近使用的顶部展示信息?") top_show_recent?: Record<unknown>,
    @query @doc("解锁所需身份标识?") unlock_identity?: int64,
    @query @doc("解锁所需礼物?") unlock_need_gift?: int64,
    @query @doc("突出展示?") bulge_display?: int64,
    @query @doc("描述") descript?: string,
    @query @doc("触发关键词?") emoji?: string,
    @query @doc("表情 ID") emoticon_id?: int64,
    @query @doc("表情唯一标识") emoticon_unique?: string,
    @query @doc("表情值类型?") emoticon_value_type?: int64,
    @query @doc("表情图片高度") height?: int64,
    @query @doc("身份限制标识?") identity?: int64,
    @query @doc("播放器区域内展示?") in_player_area?: int64,
    @query @doc("是否为动态表情?") is_dynamic?: int64,
    @query @doc("使用权限?") perm?: int64,
    @query @doc("解锁需求礼物?") unlock_need_gift?: int64,
    @query @doc("解锁需求等级?") unlock_need_level?: int64,
    @query @doc("解锁展示颜色?") unlock_show_color?: string,
    @query @doc("解锁展示图片?") unlock_show_image?: string,
    @query @doc("解锁展示文字?") unlock_show_text?: string,
    @query @doc("表情图片 URL") url?: string,
    @query @doc("表情图片宽度") width?: int64,
    @query @doc("左上") top_left?: Record<unknown>,
    @query @doc("右上") top_right?: Record<unknown>,
    @query @doc("图片?") image?: string,
    @query @doc("文字") text?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("表情包数据")
  data?: unknown;

  @doc("品牌标识?")
  fans_brand?: int64;

  @doc("购买链接?")
  purchase_url?: unknown;

}

/**
 * data.data[] 对象
 */
@doc("data.data[] 数据模型")
model Datadata {
  @doc("封面 URL")
  current_cover?: string;

  @doc("表情列表")
  emoticons?: unknown;

  @doc("文字描述")
  pkg_descript?: string;

  @doc("包 ID")
  pkg_id?: int64;

  @doc("包名称")
  pkg_name?: string;

  @doc("使用权限?")
  pkg_perm?: int64;

  @doc("包类型")
  pkg_type?: int64;

  @doc("最近使用的表情")
  recently_used_emoticons?: unknown;

  @doc("顶部展示信息?")
  top_show?: Record<unknown>;

  @doc("最近使用的顶部展示信息?")
  top_show_recent?: Record<unknown>;

  @doc("解锁所需身份标识?")
  unlock_identity?: int64;

  @doc("解锁所需礼物?")
  unlock_need_gift?: int64;

}

/**
 * data.data[].emoticons[] 对象
 */
@doc("data.data[].emoticons[] 数据模型")
model Datadataemoticons {
  @doc("突出展示?")
  bulge_display?: int64;

  @doc("描述")
  descript?: string;

  @doc("触发关键词?")
  emoji?: string;

  @doc("表情 ID")
  emoticon_id?: int64;

  @doc("表情唯一标识")
  emoticon_unique?: string;

  @doc("表情值类型?")
  emoticon_value_type?: int64;

  @doc("表情图片高度")
  height?: int64;

  @doc("身份限制标识?")
  identity?: int64;

  @doc("播放器区域内展示?")
  in_player_area?: int64;

  @doc("是否为动态表情?")
  is_dynamic?: int64;

  @doc("使用权限?")
  perm?: int64;

  @doc("解锁需求礼物?")
  unlock_need_gift?: int64;

  @doc("解锁需求等级?")
  unlock_need_level?: int64;

  @doc("解锁展示颜色?")
  unlock_show_color?: string;

  @doc("解锁展示图片?")
  unlock_show_image?: string;

  @doc("解锁展示文字?")
  unlock_show_text?: string;

  @doc("表情图片 URL")
  url?: string;

  @doc("表情图片宽度")
  width?: int64;

}

/**
 * data.data[].top_show 对象
 */
@doc("data.data[].top_show 数据模型")
model Datadatatop_show {
  @doc("左上")
  top_left?: Record<unknown>;

  @doc("右上")
  top_right?: Record<unknown>;

}

/**
 * data.data[].top_show.top_left 对象
 */
@doc("data.data[].top_show.top_left 数据模型")
model Datadatatop_showtop_left {
  @doc("图片?")
  image?: string;

  @doc("文字")
  text?: string;

}

/**
 * data.data[].top_show.top_right 对象
 */
@doc("data.data[].top_show.top_right 数据模型")
model Datadatatop_showtop_right {
}

/**
 * data.data[].top_show.top_left 对象
 */
@doc("data.data[].top_show.top_left 数据模型")
model Datadatatop_showtop_left {
}

/**
 * data.data[].top_show_recent 对象
 */
@doc("data.data[].top_show_recent 数据模型")
model Datadatatop_show_recent {
}

/**
 * data.data[].top_show 对象
 */
@doc("data.data[].top_show 数据模型")
model Datadatatop_show {
}

/**
 * data.data[].top_show_recent.top_left 对象
 */
@doc("data.data[].top_show_recent.top_left 数据模型")
model Datadatatop_show_recenttop_left {
}

/**
 * data.data[].top_show.top_left 对象
 */
@doc("data.data[].top_show.top_left 数据模型")
model Datadatatop_showtop_left {
}

/**
 * data.data[].top_show_recent.top_right 对象
 */
@doc("data.data[].top_show_recent.top_right 数据模型")
model Datadatatop_show_recenttop_right {
}

/**
 * data.data[].top_show.top_left 对象
 */
@doc("data.data[].top_show.top_left 数据模型")
model Datadatatop_showtop_left {
}
