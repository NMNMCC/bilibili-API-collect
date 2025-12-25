import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Audio;

/**
 * 查询音频收藏状态
 */
@route("/audio/music-service-c/web/collections/songs-coll")
@tag("Audio")
interface 查询音频收藏状态 {
  @get
  @doc("查询音频收藏状态")
  查询音频收藏状态(
    @query @doc("音频auid") sid: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") msg?: string,
    @query @doc("是否收藏") data?: boolean,
  ): ApiResponse<unknown>;
}

/**
 * 查询音频投币数
 */
@route("/audio/music-service-c/web/coin/audio")
@tag("Audio")
interface 查询音频投币数 {
  @get
  @doc("查询音频投币数")
  查询音频投币数(
    @query @doc("音频auid") sid: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") msg?: string,
    @query @doc("投币数量") data?: int64,
  ): ApiResponse<unknown>;
}

/**
 * 投币音频
 */
@route("/audio/music-service-c/web/coin/add")
@tag("Audio")
interface 投币音频 {
  @post
  @doc("投币音频")
  投币音频(
    @query @doc("音频 auid") sid: int64,
    @query @doc("投币数量（最大为 2）") multiply: int64,
    @query @doc("CSRF Token（位于 cookie）") csrf: string,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") msg?: string,
    @query @doc("当前投币数量") data?: string,
  ): ApiResponse<unknown>;
}
