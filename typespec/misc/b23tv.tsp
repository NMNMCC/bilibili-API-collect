import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Misc;

/**
 * 生成
 */
@route("/x/share/click")
@tag("Misc")
interface 生成 {
  @post
  @doc("生成")
  生成(
    @body @doc("设备 BUVID") buvid: string,
    @body @doc("客户端版本号") build: int64,
    @body @doc("客户端平台") platform: string,
    @body @doc("分享方式?") share_channel: string,
    @body @doc("分享模式?") share_mode: int64,
    @body @doc("分享 ID") share_id: string,
    @body @doc("对象 ID") oid: int64,
    @body @doc("额外字段?") object_extra_fields: Record<unknown>,
    @body @doc("面板类型?") panel_type: int64,
    @body @doc("分享标题?") share_title: string,
    @body @doc("分享内容?") share_content: string,
    @body @doc("分享来源?") share_origin: string,
    @body @doc("分享模式?") share_pattern: int64,
    @body @doc("分享会话 ID?") share_session_id: string,
    @body @doc("UNIX 秒级时间戳") ts: int64,
    @body @doc("对象 ID (oid)") 类型?: unknown,
    @body @doc("视频 aid") 视频?: unknown,
    @body @doc("动态 id") 动态?: unknown,
    @body @doc("文章 cvid") 专栏?: unknown,
    @body @doc("文集 rlid") 文集?: unknown,
    @body @doc("直播 room_id") 直播?: unknown,
    @body @doc("用户 mid") 用户?: unknown,
    @body @doc("课程 id?") 课程?: unknown,
    @body @doc("番剧 id?") 番剧?: unknown,
    @body @doc("?") 链接?: unknown,
    @body @doc("内容") 字段名?: unknown,
    @body @doc("0") code?: int64,
    @body @doc("0") message?: string,
    @body @doc("1") ttl?: int64,
    @body @doc("信息本体") data?: Record<unknown>,
    @body @doc("内容") 字段名?: unknown,
    @body @doc("短链内容") content?: string,
    @body @doc("0") count?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("短链内容")
  content?: string;

  @doc("0")
  count?: int64;

}
