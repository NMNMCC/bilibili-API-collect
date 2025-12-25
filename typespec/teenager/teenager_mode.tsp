import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Teenager;

/**
 * 开启/关闭
 */
@route("/x/v2/account/teenagers/update")
@tag("Teenager")
interface 开启关闭 {
  @post
  @doc("开启/关闭")
  开启关闭(
    @body @doc("APP密钥") appkey: string,
    @body @doc("当前时间戳") ts: int64,
    @body @doc("APP签名") sign: string,
    @body @doc("APP登录Token") access_key: string,
    @body @doc("设备 Model") device_model: string,
    @body @doc("APP下载渠道") channel: string,
    @body @doc("APP 包类型") mobi_app: string,
    @body @doc("平台类型") platform: string,
    @body @doc("语言") c_locale: string,
    @body @doc("语言") s_locale: string,
    @body @doc("?") statistics: string,
    @body @doc("密码") pwd: int64,
    @body @doc("开启/关闭模式") teenagers_mode: int64,
    @body @doc("当前模式状态") teenagers_status: int64,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
  ): ApiResponse<unknown>;
}
