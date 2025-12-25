import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Danmaku;

/**
 * 获取实时弹幕1
 */
@route("/x/v1/dm/list.so")
@tag("Danmaku")
interface 获取实时弹幕1 {
  @get
  @doc("获取实时弹幕1")
  获取实时弹幕1(
    @query @doc("视频cid") oid: int64,
  ): ApiResponse<unknown>;
}

/**
 * 获取实时弹幕2
 */
@route("/{cid}.xml")
@tag("Danmaku")
interface 获取实时弹幕2 {
  @get
  @doc("获取实时弹幕2")
  获取实时弹幕2(
    @query @doc("视频cid") cid: int64,
  ): ApiResponse<unknown>;
}
