import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Danmaku;

/**
 * 查询指定dmid的点赞数
 */
@route("/x/v2/dm/thumbup/stats")
@tag("Danmaku")
interface 查询指定dmid的点赞数 {
  @get
  @doc("查询指定dmid的点赞数")
  查询指定dmid的点赞数(
    @query @doc("视频 cid") oid: int64,
    @query @doc("欲查询的弹幕 dmid") ids: unknown,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("弹幕 id 与之对应数据的 Map") data?: Record<unknown>,
    @query @doc("{弹幕 dmid} 对应的点赞信息") _弹幕_dmid_?: Record<unknown>,
    @query @doc("对应弹幕所获得的点赞数") likes?: int64,
    @query @doc("当前用户是否点赞") user_like?: int64,
    @query @doc("弹幕 dmid 字符串形式") id_str?: string,
    @query @doc("（？）") show_threshold?: int64,
    @query @doc("（？）") reply_count?: int64,
    @query @doc("（？）") gray_release_control?: Record<unknown>,
    @query @doc("（？）") show_dm_reply?: boolean,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("{弹幕 dmid} 对应的点赞信息")
  _弹幕_dmid_?: Record<unknown>;

}

/**
 * {弹幕 dmid} 对象
 */
@doc("{弹幕 dmid} 数据模型")
model 弹幕Dmid {
  @doc("对应弹幕所获得的点赞数")
  likes?: int64;

  @doc("当前用户是否点赞")
  user_like?: int64;

  @doc("弹幕 dmid 字符串形式")
  id_str?: string;

  @doc("（？）")
  show_threshold?: int64;

  @doc("（？）")
  reply_count?: int64;

  @doc("（？）")
  gray_release_control?: Record<unknown>;

}

/**
 * gray_release_control 对象
 */
@doc("gray_release_control 数据模型")
model Gray_release_control {
  @doc("（？）")
  show_dm_reply?: boolean;

}
