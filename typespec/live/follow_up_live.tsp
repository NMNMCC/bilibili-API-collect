import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Live;

/**
 * 用户关注的所有UP的直播情况
 */
@route("/xlive/web-ucenter/user/following")
@tag("Live")
interface 用户关注的所有up的直播情况 {
  @get
  @doc("用户关注的所有UP的直播情况")
  用户关注的所有up的直播情况(
    @query @doc("页码") page: int64,
    @query @doc("每页的数据数量") page_size: int64,
    @query @doc("**尚不明确**<br />一般为`1`") ignoreRecord?: int64,
    @query @doc("**尚不明确**<br />建议用`true`, 不填为`false`") hit_ab?: boolean,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("标题") title?: string,
    @query @doc("每页的数据数量") pageSize?: int64,
    @query @doc("分页数量") totalPage?: int64,
    @query @doc("UP直播情况列表") list?: Record<unknown>,
    @query @doc("曾直播过的UP数量") count?: int64,
    @query @doc("未直播过的UP数量") never_lived_count?: int64,
    @query @doc("正在直播的UP数量") live_count?: int64,
    @query @doc("**尚不明确**") never_lived_faces?: unknown,
    @query @doc("房间号") roomid?: int64,
    @query @doc("主播uid") uid?: int64,
    @query @doc("主播名") uname?: string,
    @query @doc("直播标题") title?: string,
    @query @doc("主播头像") face?: string,
    @query @doc("是否正在直播") live_status?: int64,
    @query @doc("**尚不明确**<br />一般为0") record_num?: int64,
    @query @doc("**尚不明确**<br />一般为空") recent_record_id?: string,
    @query @doc("**尚不明确**<br />一般为1") is_attention?: int64,
    @query @doc("**尚不明确**<br />一般为0") clipnum?: int64,
    @query @doc("**尚不明确**<br />一般为0") fans_num?: int64,
    @query @doc("**尚不明确**<br />一般为空") area_name?: string,
    @query @doc("**尚不明确**<br />一般为空") area_value?: string,
    @query @doc("**尚不明确**<br />一般为空") tags?: string,
    @query @doc("**尚不明确**<br />一般为空") recent_record_id_v2?: string,
    @query @doc("**尚不明确**<br />一般为0") record_num_v2?: int64,
    @query @doc("主播上一次直播结束的时间戳") record_live_time?: int64,
    @query @doc("频道的名称") area_name_v2?: string,
    @query @doc("房间公告") room_news?: string,
    @query @doc("**尚不明确**") switch?: boolean,
    @query @doc("**尚不明确**") watch_icon?: string,
    @query @doc("**尚不明确**<br />当主播正在直播时, 为在线人数(可能)") text_small?: string,
    @query @doc("房间封面图片的URL") room_cover?: string,
    @query @doc("父分区id") parent_area_id?: int64,
    @query @doc("分区id") area_id?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("标题")
  title?: string;

  @doc("每页的数据数量")
  pageSize?: int64;

  @doc("分页数量")
  totalPage?: int64;

  @doc("UP直播情况列表")
  list?: Record<unknown>;

  @doc("曾直播过的UP数量")
  count?: int64;

  @doc("未直播过的UP数量")
  never_lived_count?: int64;

  @doc("正在直播的UP数量")
  live_count?: int64;

  @doc("**尚不明确**")
  never_lived_faces?: unknown;

}

/**
 * list 对象
 */
@doc("list 数据模型")
model List {
  @doc("房间号")
  roomid?: int64;

  @doc("主播uid")
  uid?: int64;

  @doc("主播名")
  uname?: string;

  @doc("直播标题")
  title?: string;

  @doc("主播头像")
  face?: string;

  @doc("是否正在直播")
  live_status?: int64;

  @doc("**尚不明确**<br />一般为0")
  record_num?: int64;

  @doc("**尚不明确**<br />一般为空")
  recent_record_id?: string;

  @doc("**尚不明确**<br />一般为1")
  is_attention?: int64;

  @doc("**尚不明确**<br />一般为0")
  clipnum?: int64;

  @doc("**尚不明确**<br />一般为0")
  fans_num?: int64;

  @doc("**尚不明确**<br />一般为空")
  area_name?: string;

  @doc("**尚不明确**<br />一般为空")
  area_value?: string;

  @doc("**尚不明确**<br />一般为空")
  tags?: string;

  @doc("**尚不明确**<br />一般为空")
  recent_record_id_v2?: string;

  @doc("**尚不明确**<br />一般为0")
  record_num_v2?: int64;

  @doc("主播上一次直播结束的时间戳")
  record_live_time?: int64;

  @doc("频道的名称")
  area_name_v2?: string;

  @doc("房间公告")
  room_news?: string;

  @doc("**尚不明确**")
  switch?: boolean;

  @doc("**尚不明确**")
  watch_icon?: string;

  @doc("**尚不明确**<br />当主播正在直播时, 为在线人数(可能)")
  text_small?: string;

  @doc("房间封面图片的URL")
  room_cover?: string;

  @doc("父分区id")
  parent_area_id?: int64;

  @doc("分区id")
  area_id?: int64;

}

/**
 * 用户关注的所有UP且正在直播的列表（PC端）
 */
@route("/xlive/web-ucenter/v1/xfetter/GetWebList")
@tag("Live")
interface 用户关注的所有up且正在直播的列表pc端 {
  @get
  @doc("用户关注的所有UP且正在直播的列表（PC端）")
  用户关注的所有up且正在直播的列表pc端(
    @query @doc("会影响到json回复中部分字段的值，具体的影响效果会在下表列出。") hit_ab: boolean,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") msg?: string,
    @query @doc("错误信息") message?: string,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("正在直播的房间列表") rooms?: unknown,
    @query @doc("正在直播的房间列表") list?: unknown,
    @query @doc("关注列表中正在直播的人数") count?: int64,
    @query @doc("关注列表中未开播的人数") not_living_num?: int64,
    @query @doc("直播间标题") title?: int64,
    @query @doc("直播间真实id") room_id?: int64,
    @query @doc("目标用户mid") uid?: int64,
    @query @doc("观看人数") online?: int64,
    @query @doc("已经直播的时长（单位为秒）") live_time?: int64,
    @query @doc("开播状态") live_status?: int64,
    @query @doc("直播间短id") short_id?: int64,
    @query @doc("分区id") area?: int64,
    @query @doc("分区名称") area_name?: string,
    @query @doc("二级分区id") area_v2_id?: int64,
    @query @doc("二级分区名") area_v2_name?: string,
    @query @doc("二级父分区名") area_v2_parent_name?: string,
    @query @doc("二级父分区id") area_v2_parent_id?: int64,
    @query @doc("用户名") uname?: string,
    @query @doc("用户头像图片链接") face?: string,
    @query @doc("标签名") tag_name?: string,
    @query @doc("标签列表") tags?: string,
    @query @doc("直播间封面图片链接") cover_from_user?: string,
    @query @doc("关键帧图片链接") keyframe?: string,
    @query @doc("未知") lock_till?: string,
    @query @doc("未知") hidden_till?: string,
    @query @doc("广播类型") broadcast_type?: int64,
    @query @doc("直播间是否加密") is_encrypt?: boolean,
    @query @doc("直播间链接") link?: string,
    @query @doc("用户昵称") nickname?: string,
    @query @doc("直播间名称") roomname?: string,
    @query @doc("直播间真实id") roomid?: int64,
    @query @doc("开播时间") liveTime?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("正在直播的房间列表")
  rooms?: unknown;

  @doc("关注列表中正在直播的人数")
  count?: int64;

  @doc("关注列表中未开播的人数")
  not_living_num?: int64;

}

/**
 * rooms 对象
 */
@doc("rooms 数据模型")
model Rooms {
  @doc("直播间标题")
  title?: int64;

  @doc("直播间真实id")
  room_id?: int64;

  @doc("目标用户mid")
  uid?: int64;

  @doc("观看人数")
  online?: int64;

  @doc("已经直播的时长（单位为秒）")
  live_time?: int64;

  @doc("开播状态")
  live_status?: int64;

  @doc("直播间短id")
  short_id?: int64;

  @doc("分区id")
  area?: int64;

  @doc("分区名称")
  area_name?: string;

  @doc("二级分区id")
  area_v2_id?: int64;

  @doc("二级分区名")
  area_v2_name?: string;

  @doc("二级父分区名")
  area_v2_parent_name?: string;

  @doc("二级父分区id")
  area_v2_parent_id?: int64;

  @doc("用户名")
  uname?: string;

  @doc("用户头像图片链接")
  face?: string;

  @doc("标签名")
  tag_name?: string;

  @doc("标签列表")
  tags?: string;

  @doc("直播间封面图片链接")
  cover_from_user?: string;

  @doc("关键帧图片链接")
  keyframe?: string;

  @doc("未知")
  lock_till?: string;

  @doc("未知")
  hidden_till?: string;

  @doc("广播类型")
  broadcast_type?: int64;

  @doc("直播间是否加密")
  is_encrypt?: boolean;

  @doc("直播间链接")
  link?: string;

  @doc("用户昵称")
  nickname?: string;

  @doc("直播间名称")
  roomname?: string;

  @doc("直播间真实id")
  roomid?: int64;

  @doc("开播时间")
  liveTime?: int64;

}
