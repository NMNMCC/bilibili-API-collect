import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Danmaku;

/**
 * 获取实时弹幕
 */
@route("/x/v2/dm/web/seg.so")
@tag("Danmaku")
interface 获取实时弹幕 {
  @get
  @doc("获取实时弹幕")
  获取实时弹幕(
    @query @doc("弹幕类") type: int64,
    @query @doc("视频 cid") oid: int64,
    @query @doc("稿件 avid") pid: int64,
    @query @doc("分包") segment_index: int64,
    @query @doc("（？）") pull_mode: int64,
    @query @doc("（？）") ps: int64,
    @query @doc("（？）") pe: int64,
    @query @doc("含义") 名称?: unknown,
    @query @doc("弹幕条目") elems?: unknown,
    @query @doc("含义") 名称?: unknown,
    @query @doc("弹幕 dmid") id?: unknown,
    @query @doc("视频内弹幕出现时间") progress?: unknown,
    @query @doc("弹幕类型") mode?: unknown,
    @query @doc("弹幕字号") fontsize?: unknown,
    @query @doc("弹幕颜色") color?: unknown,
    @query @doc("发送者 mid 的 HASH") midHash?: string,
    @query @doc("弹幕内容") content?: string,
    @query @doc("弹幕发送时间") ctime?: unknown,
    @query @doc("权重") weight?: unknown,
    @query @doc("动作？") action?: string,
    @query @doc("弹幕池") pool?: unknown,
    @query @doc("弹幕 dmid") idStr?: string,
    @query @doc("弹幕属性位") attr?: unknown,
    @query @doc("动画？") animation?: string,
  ): ApiResponse<unknown>;
}
