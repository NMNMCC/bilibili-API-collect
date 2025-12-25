import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Fav;

/**
 * 获取收藏夹元数据
 */
@route("/x/v3/fav/folder/info")
@tag("Fav")
interface 获取收藏夹元数据 {
  @get
  @doc("获取收藏夹元数据")
  获取收藏夹元数据(
    @query @doc("目标收藏夹id（完整id）") media_id: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("信息本体") data?: unknown,
    @query @doc("收藏夹mlid（完整id）") id?: int64,
    @query @doc("收藏夹原始id") fid?: int64,
    @query @doc("创建者mid") mid?: int64,
    @query @doc("属性位（？）") attr?: int64,
    @query @doc("收藏夹标题") title?: string,
    @query @doc("收藏夹封面图片url") cover?: string,
    @query @doc("创建者信息") upper?: Record<unknown>,
    @query @doc("封面图类别（？）") cover_type?: int64,
    @query @doc("收藏夹状态数") cnt_info?: Record<unknown>,
    @query @doc("类型（？）") type?: int64,
    @query @doc("备注") intro?: string,
    @query @doc("创建时间") ctime?: int64,
    @query @doc("收藏时间") mtime?: int64,
    @query @doc("状态（？）") state?: int64,
    @query @doc("收藏夹收藏状态") fav_state?: int64,
    @query @doc("点赞状态") like_state?: int64,
    @query @doc("收藏夹内容数量") media_count?: int64,
    @query @doc("创建者mid") mid?: int64,
    @query @doc("创建者昵称") name?: string,
    @query @doc("创建者头像url") face?: string,
    @query @doc("是否已关注创建者") followed?: boolean,
    @query @doc("会员类别") vip_type?: int64,
    @query @doc("会员开通状态") vip_statue?: int64,
    @query @doc("收藏数") collect?: int64,
    @query @doc("播放数") play?: int64,
    @query @doc("点赞数") thumb_up?: int64,
    @query @doc("分享数") share?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("收藏夹mlid（完整id）")
  id?: int64;

  @doc("收藏夹原始id")
  fid?: int64;

  @doc("创建者mid")
  mid?: int64;

  @doc("属性位（？）")
  attr?: int64;

  @doc("收藏夹标题")
  title?: string;

  @doc("收藏夹封面图片url")
  cover?: string;

  @doc("创建者信息")
  upper?: Record<unknown>;

  @doc("封面图类别（？）")
  cover_type?: int64;

  @doc("收藏夹状态数")
  cnt_info?: Record<unknown>;

  @doc("类型（？）")
  type?: int64;

  @doc("备注")
  intro?: string;

  @doc("创建时间")
  ctime?: int64;

  @doc("收藏时间")
  mtime?: int64;

  @doc("状态（？）")
  state?: int64;

  @doc("收藏夹收藏状态")
  fav_state?: int64;

  @doc("点赞状态")
  like_state?: int64;

  @doc("收藏夹内容数量")
  media_count?: int64;

}

/**
 * upper 对象
 */
@doc("upper 数据模型")
model Upper {
  @doc("创建者mid")
  mid?: int64;

  @doc("创建者昵称")
  name?: string;

  @doc("创建者头像url")
  face?: string;

  @doc("是否已关注创建者")
  followed?: boolean;

  @doc("会员类别")
  vip_type?: int64;

  @doc("会员开通状态")
  vip_statue?: int64;

}

/**
 * cnt_info 对象
 */
@doc("cnt_info 数据模型")
model Cnt_info {
  @doc("收藏数")
  collect?: int64;

  @doc("播放数")
  play?: int64;

  @doc("点赞数")
  thumb_up?: int64;

  @doc("分享数")
  share?: int64;

}

/**
 * 获取指定用户创建的所有收藏夹信息
 */
@route("/x/v3/fav/folder/created/list-all")
@tag("Fav")
interface 获取指定用户创建的所有收藏夹信息 {
  @get
  @doc("获取指定用户创建的所有收藏夹信息")
  获取指定用户创建的所有收藏夹信息(
    @query @doc("目标用户mid") up_mid: int64,
    @query @doc("目标内容属性") type: int64,
    @query @doc("目标内容id") rid: int64,
    @query @doc("333.1387") web_location: string,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: unknown,
    @query @doc("创建的收藏夹数") count?: int64,
    @query @doc("收藏夹列表") list?: unknown,
    @query @doc("（？）") season?: null,
    @query @doc("内容") 项?: unknown,
    @query @doc("收藏夹1") field_0?: Record<unknown>,
    @query @doc("收藏夹(n+1)") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("收藏夹mlid（完整id）") id?: int64,
    @query @doc("收藏夹原始id") fid?: int64,
    @query @doc("创建者mid") mid?: int64,
    @query @doc("收藏夹属性") attr?: int64,
    @query @doc("收藏夹标题") title?: string,
    @query @doc("目标id是否存在于该收藏夹") fav_state?: int64,
    @query @doc("收藏夹内容数量") media_count?: int64,
    @query @doc("备注") 位?: unknown,
    @query @doc("0：公开<br />1：私有") field_0?: unknown,
    @query @doc("0：默认收藏夹<br />1：其他收藏夹") field_1?: unknown,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("创建的收藏夹数")
  count?: int64;

  @doc("收藏夹列表")
  list?: unknown;

  @doc("（？）")
  season?: null;

  @doc("内容")
  项?: unknown;

  @doc("收藏夹1")
  field_0?: Record<unknown>;

  @doc("收藏夹(n+1)")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("收藏夹mlid（完整id）")
  id?: int64;

  @doc("收藏夹原始id")
  fid?: int64;

  @doc("创建者mid")
  mid?: int64;

  @doc("收藏夹属性")
  attr?: int64;

  @doc("收藏夹标题")
  title?: string;

  @doc("目标id是否存在于该收藏夹")
  fav_state?: int64;

  @doc("收藏夹内容数量")
  media_count?: int64;

  @doc("备注")
  位?: unknown;

  @doc("0：公开<br />1：私有")
  field_0?: unknown;

  @doc("0：默认收藏夹<br />1：其他收藏夹")
  field_1?: unknown;

}

/**
 * 查询用户收藏的视频收藏夹
 */
@route("/x/v3/fav/folder/collected/list")
@tag("Fav")
interface 查询用户收藏的视频收藏夹 {
  @get
  @doc("查询用户收藏的视频收藏夹")
  查询用户收藏的视频收藏夹(
    @query @doc("每页项数") ps: int64,
    @query @doc("页码") pn: int64,
    @query @doc("目标用户mid") up_mid: int64,
    @query @doc("平台类型") platform: string,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: unknown,
    @query @doc("创建的收藏夹数") count?: int64,
    @query @doc("收藏夹列表") list?: unknown,
    @query @doc("内容") 项?: unknown,
    @query @doc("收藏夹1") field_0?: Record<unknown>,
    @query @doc("收藏夹(n+1)") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("收藏夹ml") id?: int64,
    @query @doc("原始收藏夹mlid") fid?: int64,
    @query @doc("创建用户mid") mid?: int64,
    @query @doc("收藏夹属性") attr?: int64,
    @query @doc("收藏夹标题") title?: string,
    @query @doc("收藏夹封面图片url") cover?: string,
    @query @doc("收藏夹创建用户信息") upper?: Record<unknown>,
    @query @doc("2") cover_type?: int64,
    @query @doc("空") intro?: string,
    @query @doc("创建时间") ctime?: int64,
    @query @doc("审核时间") mtime?: int64,
    @query @doc("0, 1") state?: int64,
    @query @doc("0") fav_state?: int64,
    @query @doc("收藏夹总计视频数") media_count?: int64,
    @query @doc("创建人mid") mid?: int64,
    @query @doc("创建人昵称") name?: string,
    @query @doc("空") face?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("创建的收藏夹数")
  count?: int64;

  @doc("收藏夹列表")
  list?: unknown;

  @doc("内容")
  项?: unknown;

  @doc("收藏夹1")
  field_0?: Record<unknown>;

  @doc("收藏夹(n+1)")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("收藏夹ml")
  id?: int64;

  @doc("原始收藏夹mlid")
  fid?: int64;

  @doc("创建用户mid")
  mid?: int64;

  @doc("收藏夹属性")
  attr?: int64;

  @doc("收藏夹标题")
  title?: string;

  @doc("收藏夹封面图片url")
  cover?: string;

  @doc("收藏夹创建用户信息")
  upper?: Record<unknown>;

  @doc("2")
  cover_type?: int64;

  @doc("空")
  intro?: string;

  @doc("创建时间")
  ctime?: int64;

  @doc("审核时间")
  mtime?: int64;

  @doc("0, 1")
  state?: int64;

  @doc("0")
  fav_state?: int64;

  @doc("收藏夹总计视频数")
  media_count?: int64;

}

/**
 * upper 对象
 */
@doc("upper 数据模型")
model Upper {
  @doc("创建人mid")
  mid?: int64;

  @doc("创建人昵称")
  name?: string;

  @doc("空")
  face?: string;

}

/**
 * 批量获取指定收藏id的内容
 */
@route("/x/v3/fav/resource/infos")
@tag("Fav")
interface 批量获取指定收藏id的内容 {
  @get
  @doc("批量获取指定收藏id的内容")
  批量获取指定收藏id的内容(
    @query @doc("目标内容id列表") resources: unknown,
    @query @doc("平台标识") platform: string,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("内容信息列表") data?: unknown,
    @query @doc("内容") 项?: unknown,
    @query @doc("内容信息1") field_0?: Record<unknown>,
    @query @doc("内容信息（n+1）") n?: Record<unknown>,
    @query @doc("...") ___?: Record<unknown>,
    @query @doc("内容id") id?: int64,
    @query @doc("内容类型") type?: int64,
    @query @doc("标题") title?: string,
    @query @doc("封面url") cover?: string,
    @query @doc("简介") intro?: string,
    @query @doc("视频分P数") page?: int64,
    @query @doc("音频/视频时长") duration?: int64,
    @query @doc("UP主信息") upper?: Record<unknown>,
    @query @doc("属性") attr?: int64,
    @query @doc("状态数") cnt_info?: Record<unknown>,
    @query @doc("跳转uri") link?: string,
    @query @doc("投稿时间") ctime?: int64,
    @query @doc("发布时间") pubtime?: int64,
    @query @doc("收藏时间") fav_time?: int64,
    @query @doc("视频稿件bvid") bv_id?: string,
    @query @doc("视频稿件bvid") bvid?: string,
    @query @doc("（？）") season?: null,
    @query @doc("UP主mid") mid?: int64,
    @query @doc("UP主昵称") name?: string,
    @query @doc("UP主头像url") face?: string,
    @query @doc("收藏数") collect?: int64,
    @query @doc("播放数") play?: int64,
    @query @doc("弹幕数") danmaku?: int64,
  ): ApiResponse<Upper>;
}

/**
 * upper 对象
 */
@doc("upper 数据模型")
model Upper {
  @doc("UP主mid")
  mid?: int64;

  @doc("UP主昵称")
  name?: string;

  @doc("UP主头像url")
  face?: string;

}

/**
 * cnt_info 对象
 */
@doc("cnt_info 数据模型")
model Cnt_info {
  @doc("收藏数")
  collect?: int64;

  @doc("播放数")
  play?: int64;

  @doc("弹幕数")
  danmaku?: int64;

}
