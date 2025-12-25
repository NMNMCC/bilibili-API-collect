import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Dynamic;

/**
 * 获取用户空间动态
 */
@route("/x/polymer/web-dynamic/v1/feed/space")
@tag("Dynamic")
interface 获取用户空间动态 {
  @get
  @doc("获取用户空间动态")
  获取用户空间动态(
    @query @doc("分页偏移量") offset: string,
    @query @doc("被查询用户 UID (mid)") host_mid: string,
    @query @doc("时区偏移") timezone_offset: int64,
    @query @doc("平台") platform: string,
    @query @doc("功能") features: string,
    @query @doc("`333.1387`") web_location: string,
    @query @doc("`0`") dm_img_switch: int64,
    @query @doc("`dm_img` 系列风控") dm_img_list: unknown,
    @query @doc("`dm_img` 系列风控") dm_img_str: string,
    @query @doc("`dm_img` 系列风控") dm_cover_img_str: string,
    @query @doc("`dm_img` 系列风控") dm_img_inter: Record<unknown>,
    @query @doc("`{\"platform\":\"web\",\"device\":\"pc\"}`") x_bili_device_req_json: Record<unknown>,
    @query @doc("`{\"spm_id\":\"333.1387\"}`") x_bili_web_req_json: Record<unknown>,
    @query @doc("WBI 签名") w_rid: string,
    @query @doc("UNIX 秒级时间戳") wts: int64,
  ): ApiResponse<unknown>;
}
