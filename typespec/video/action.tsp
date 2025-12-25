import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Video;

/**
 * 点赞
 */
@route("/x/web-interface/archive/like")
@tag("Video")
interface 点赞 {
  @post
  @doc("点赞")
  点赞(
    @body @doc("稿件 avid") aid: int64,
    @body @doc("稿件 bvid") bvid: string,
    @body @doc("操作方式") like: int64,
    @body @doc("CSRF Token（位于 Cookie）") csrf: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
    @body @doc("APP 登录 Token") access_key: string,
    @body @doc("稿件 avid") aid: int64,
    @body @doc("操作方式") like: int64,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
    @body @doc("数据本体") data?: Record<unknown>,
    @body @doc("提示信息内容") toast?: string,
    @query @doc("APP 登录 Token") access_key: string,
    @query @doc("稿件 avid") aid: int64,
    @query @doc("稿件 bvid") bvid: string,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("被点赞标志") data?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("提示信息内容")
  toast?: string;

  @doc("APP 登录 Token")
  access_key?: string;

  @doc("稿件 avid")
  aid?: int64;

  @doc("稿件 bvid")
  bvid?: string;

  @doc("返回值")
  code?: int64;

  @doc("错误信息")
  message?: string;

  @doc("1")
  ttl?: int64;

  @doc("被点赞标志")
  data?: int64;

}

/**
 * 点踩
 */
@route("/x/v2/view/dislike")
@tag("Video")
interface 点踩 {
  @post
  @doc("点踩")
  点踩(
    @body @doc("APP 登录 Token") access_key: string,
    @body @doc("视频 aid") aid: int64,
    @body @doc("操作类型") dislike: int64,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
  ): ApiResponse<unknown>;
}

/**
 * 投币
 */
@route("/x/web-interface/coin/add")
@tag("Video")
interface 投币 {
  @post
  @doc("投币")
  投币(
    @body @doc("稿件 avid") aid: int64,
    @body @doc("稿件 bvid") bvid: string,
    @body @doc("投币数量") multiply: int64,
    @body @doc("是否附加点赞") select_like: int64,
    @body @doc("CSRF Token（位于 Cookie）") csrf: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
    @body @doc("信息本体") data?: Record<unknown>,
    @body @doc("是否点赞成功") like?: boolean,
    @body @doc("APP 登录 Token") access_key: string,
    @body @doc("稿件 avid") aid: int64,
    @body @doc("投币数量") multiply: int64,
    @body @doc("附加点赞") select_like: int64,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
    @body @doc("信息本体") data?: Record<unknown>,
    @body @doc("是否点赞成功") like?: boolean,
    @query @doc("APP 登录 Token") access_key: string,
    @query @doc("稿件 avid") aid: int64,
    @query @doc("稿件 bvid") bvid: string,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("投币枚数") multiply?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("投币枚数")
  multiply?: int64;

}

/**
 * 收藏
 */
@route("/medialist/gateway/coll/resource/deal")
@tag("Video")
interface 收藏 {
  @post
  @doc("收藏")
  收藏(
    @body @doc("APP 登录 Token") access_key: string,
    @body @doc("稿件 avid") rid: int64,
    @body @doc("必须为2") type: int64,
    @body @doc("需要加入的收藏夹 mlid") add_media_ids: unknown,
    @body @doc("需要取消的收藏夹 mlid") del_media_ids: unknown,
    @body @doc("CSRF Token（位于 Cookie）") csrf: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("信息本体") data?: Record<unknown>,
    @body @doc("是否为未关注用户收藏") prompt?: boolean,
    @body @doc("稿件 avid") rid: int64,
    @body @doc("必须为2") type: int64,
    @body @doc("需要加入的收藏夹 mlid") add_media_ids: unknown,
    @body @doc("需要取消的收藏夹 mlid") del_media_ids: unknown,
    @body @doc("CSRF Token (即 Cookie 中 bili_jct)") csrf: string,
    @body @doc("平台标识?") platform: string,
    @body @doc("1") eab_x: int64,
    @body @doc("正整数") ramval: int64,
    @body @doc("1") ga: int64,
    @body @doc("???") gaia_source: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
    @body @doc("信息本体") data?: Record<unknown>,
    @body @doc("是否为未关注用户收藏?") prompt?: boolean,
    @body @doc("作用尚不明确") ga_data?: null,
    @body @doc("空") toast_msg?: string,
    @body @doc("0") success_num?: int64,
    @query @doc("APP 登录 Token") access_key: string,
    @query @doc("稿件 avid 或稿件 bvid") aid: unknown,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("1") count?: int64,
    @query @doc("是否收藏") favoured?: boolean,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("是否为未关注用户收藏")
  prompt?: boolean;

  @doc("稿件 avid")
  rid?: int64;

  @doc("必须为2")
  type?: int64;

  @doc("需要加入的收藏夹 mlid")
  add_media_ids?: unknown;

  @doc("需要取消的收藏夹 mlid")
  del_media_ids?: unknown;

  @doc("CSRF Token (即 Cookie 中 bili_jct)")
  csrf?: string;

  @doc("平台标识?")
  platform?: string;

  @doc("1")
  eab_x?: int64;

  @doc("正整数")
  ramval?: int64;

  @doc("1")
  ga?: int64;

  @doc("???")
  gaia_source?: string;

  @doc("返回值")
  code?: int64;

  @doc("错误信息")
  message?: string;

  @doc("1")
  ttl?: int64;

  @doc("信息本体")
  data?: Record<unknown>;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("是否为未关注用户收藏?")
  prompt?: boolean;

  @doc("作用尚不明确")
  ga_data?: null;

  @doc("空")
  toast_msg?: string;

  @doc("0")
  success_num?: int64;

  @doc("APP 登录 Token")
  access_key?: string;

  @doc("稿件 avid 或稿件 bvid")
  aid?: unknown;

  @doc("返回值")
  code?: int64;

  @doc("错误信息")
  message?: string;

  @doc("1")
  ttl?: int64;

  @doc("信息本体")
  data?: Record<unknown>;

  @doc("1")
  count?: int64;

  @doc("是否收藏")
  favoured?: boolean;

}

/**
 * 一键三连
 */
@route("/x/web-interface/archive/like/triple")
@tag("Video")
interface 一键三连 {
  @post
  @doc("一键三连")
  一键三连(
    @body @doc("稿件 avid") aid: int64,
    @body @doc("稿件 bvid") bvid: string,
    @body @doc("CSRF Token（位于 Cookie）") csrf: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
    @body @doc("信息本体") data?: Record<unknown>,
    @body @doc("是否点赞成功") like?: boolean,
    @body @doc("是否投币成功") coin?: boolean,
    @body @doc("是否收藏成功") fav?: boolean,
    @body @doc("投币枚数") multiply?: int64,
    @body @doc("APP 登录 Token") access_key: string,
    @body @doc("稿件 avid") aid: int64,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
    @body @doc("信息本体") data?: Record<unknown>,
    @body @doc("是否点赞成功") like?: boolean,
    @body @doc("是否投币成功") coin?: boolean,
    @body @doc("是否收藏成功") fav?: boolean,
    @body @doc("投币枚数") multiply?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("是否点赞成功")
  like?: boolean;

  @doc("是否投币成功")
  coin?: boolean;

  @doc("是否收藏成功")
  fav?: boolean;

  @doc("投币枚数")
  multiply?: int64;

  @doc("APP 登录 Token")
  access_key?: string;

  @doc("稿件 avid")
  aid?: int64;

  @doc("返回值")
  code?: int64;

  @doc("错误信息")
  message?: string;

  @doc("1")
  ttl?: int64;

  @doc("信息本体")
  data?: Record<unknown>;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("是否点赞成功")
  like?: boolean;

  @doc("是否投币成功")
  coin?: boolean;

  @doc("是否收藏成功")
  fav?: boolean;

  @doc("投币枚数")
  multiply?: int64;

}

/**
 * 分享
 */
@route("/x/web-interface/share/add")
@tag("Video")
interface 分享 {
  @post
  @doc("分享")
  分享(
    @body @doc("稿件 aid") aid: int64,
    @body @doc("稿件 bvid") bvid: string,
    @body @doc("CSRF Token (即 Cookie 中 bili_jct)") csrf: string,
    @body @doc("2") eab_x: int64,
    @body @doc("0") ramval: int64,
    @body @doc("web_normal") source: string,
    @body @doc("1") ga: int64,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
    @body @doc("当前分享数") data?: int64,
  ): ApiResponse<unknown>;
}
