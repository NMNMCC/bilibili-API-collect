import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Garb;

/**
 * 获取主题色基本信息1
 */
@route("/api/query.skin.list.do")
@tag("Garb")
interface 获取主题色基本信息1 {
  @get
  @doc("获取主题色基本信息1")
  获取主题色基本信息1(
    @query @doc("APP登录Token") access_key: string,
    @query @doc("APP密钥") appkey: string,
    @query @doc("版本") build: int64,
    @query @doc("APP签名") sign: string,
    @query @doc("当前时间戳") ts?: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("主题颜色列表") data?: unknown[],
    @query @doc("内容") 项?: unknown,
    @query @doc("主题颜色1") field_0?: Record<unknown>,
    @query @doc("主题颜色(n+1)") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("颜色id") id?: int64,
    @query @doc("颜色名称") name?: string,
    @query @doc("是否免费") is_free?: boolean,
    @query @doc("价格") price?: int64,
    @query @doc("是否已购买") is_bought?: boolean,
    @query @doc("状态") status?: int64,
    @query @doc("购买时间") buy_time?: int64,
    @query @doc("到期时间") due_time?: int64,
    @query @doc("颜色类型名称") color_name?: string,
    @query @doc("是否已到期") is_overdue?: boolean,
  ): ApiResponse<unknown>;
}

/**
 * 获取主题色基本信息2
 */
@route("/x/garb/skin/color/list")
@tag("Garb")
interface 获取主题色基本信息2 {
  @get
  @doc("获取主题色基本信息2")
  获取主题色基本信息2(
    @query @doc("平台标识") mobi_app: string,
    @query @doc("版本") build: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("主题颜色列表") data?: unknown[],
    @query @doc("内容") 项?: unknown,
    @query @doc("主题颜色1") field_0?: Record<unknown>,
    @query @doc("主题颜色(n+1)") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("颜色id") id?: int64,
    @query @doc("颜色名称") name?: string,
    @query @doc("是否免费") is_free?: boolean,
    @query @doc("价格") price?: int64,
    @query @doc("是否已购买") is_bought?: boolean,
    @query @doc("状态") status?: int64,
    @query @doc("购买时间") buy_time?: int64,
    @query @doc("到期时间") due_time?: int64,
    @query @doc("颜色类型名称") color_name?: string,
    @query @doc("是否已到期") is_overdue?: boolean,
  ): ApiResponse<unknown>;
}
