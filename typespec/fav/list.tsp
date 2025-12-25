import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Fav;

/**
 * 获取收藏夹内容明细列表
 */
@route("/x/v3/fav/resource/list")
@tag("Fav")
interface 获取收藏夹内容明细列表 {
  @get
  @doc("获取收藏夹内容明细列表")
  获取收藏夹内容明细列表(
    @query @doc("目标收藏夹mlid（完整id）") media_id: int64,
    @query @doc("分区tid") tid: int64,
    @query @doc("搜索关键字") keyword: string,
    @query @doc("排序方式") order: string,
    @query @doc("查询范围") type: int64,
    @query @doc("每页数量") ps: int64,
    @query @doc("页码") pn: int64,
    @query @doc("平台标识") platform: string,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("信息本体") data?: unknown,
    @query @doc("收藏夹元数据") info?: Record<unknown>,
    @query @doc("收藏夹内容") medias?: unknown[],
    @query @doc("收藏夹是否有下一页") has_more?: boolean,
    @query @doc("接口返回时间") ttl?: int64,
    @query @doc("收藏夹mlid（完整id）") id?: int64,
    @query @doc("收藏夹原始id") fid?: int64,
    @query @doc("创建者mid") mid?: int64,
    @query @doc("属性") attr?: int64,
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
    @query @doc("内容") 项?: unknown,
    @query @doc("收藏内容1") field_0?: Record<unknown>,
    @query @doc("收藏内容(n+1)") n?: Record<unknown>,
    @query @doc("...") ___?: Record<unknown>,
    @query @doc("内容id") id?: int64,
    @query @doc("内容类型") type?: int64,
    @query @doc("标题") title?: string,
    @query @doc("封面url") cover?: string,
    @query @doc("简介") intro?: string,
    @query @doc("视频分P数") page?: int64,
    @query @doc("音频/视频时长") duration?: int64,
    @query @doc("UP主信息") upper?: Record<unknown>,
    @query @doc("失效") attr?: int64,
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
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("收藏夹元数据")
  info?: Record<unknown>;

  @doc("收藏夹内容")
  medias?: unknown[];

  @doc("收藏夹是否有下一页")
  has_more?: boolean;

  @doc("接口返回时间")
  ttl?: int64;

}

/**
 * info 对象
 */
@doc("info 数据模型")
model Info {
  @doc("收藏夹mlid（完整id）")
  id?: int64;

  @doc("收藏夹原始id")
  fid?: int64;

  @doc("创建者mid")
  mid?: int64;

  @doc("属性")
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

  @doc("内容")
  项?: unknown;

  @doc("收藏内容1")
  field_0?: Record<unknown>;

  @doc("收藏内容(n+1)")
  n?: Record<unknown>;

  @doc("...")
  ___?: Record<unknown>;

  @doc("内容id")
  id?: int64;

  @doc("内容类型")
  type?: int64;

  @doc("标题")
  title?: string;

  @doc("封面url")
  cover?: string;

  @doc("简介")
  intro?: string;

  @doc("视频分P数")
  page?: int64;

  @doc("音频/视频时长")
  duration?: int64;

  @doc("UP主信息")
  upper?: Record<unknown>;

  @doc("失效")
  attr?: int64;

  @doc("状态数")
  cnt_info?: Record<unknown>;

  @doc("跳转uri")
  link?: string;

  @doc("投稿时间")
  ctime?: int64;

  @doc("发布时间")
  pubtime?: int64;

  @doc("收藏时间")
  fav_time?: int64;

  @doc("视频稿件bvid")
  bv_id?: string;

  @doc("视频稿件bvid")
  bvid?: string;

  @doc("（？）")
  season?: null;

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

/**
 * 获取收藏夹全部内容id
 */
@route("/x/v3/fav/resource/ids")
@tag("Fav")
interface 获取收藏夹全部内容id {
  @get
  @doc("获取收藏夹全部内容id")
  获取收藏夹全部内容id(
    @query @doc("目标收藏夹mlid（完整id）") media_id: int64,
    @query @doc("平台标识") platform: string,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("内容id列表") data?: unknown,
    @query @doc("内容id") id?: int64,
    @query @doc("内容类型") type?: int64,
    @query @doc("视频稿件bvid") bv_id?: string,
    @query @doc("视频稿件bvid") bvid?: string,
  ): ApiResponse<unknown>;
}
