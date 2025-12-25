import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Customerservice;

/**
 * 心跳
 */
@route("/x/custom/session_svr/v1/heart_beat")
@tag("Customerservice")
interface 心跳 {
  @get
  @doc("心跳")
  心跳(
    @query @doc("0") shop_id: int64,
    @query @doc("0") shop_father_id: int64,
    @query @doc("客户端版本") build: int64,
    @query @doc("客户端类型") mobi_app: string,
    @query @doc("-") _?: unknown,
    @query @doc("返回值") code?: int64,
    @query @doc("`ok`") msg?: string,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
  ): ApiResponse<unknown>;
}

/**
 * 上传文件
 */
@route("/x/custom/msg_svr/v1/upload")
@tag("Customerservice")
interface 上传文件 {
  @post
  @doc("上传文件")
  上传文件(
    @body @doc("-") _?: unknown,
    @body @doc("文件内容") file: unknown,
    @body @doc("文件名") filename: string,
    @body @doc("用户 mid") mid: int64,
    @body @doc("CSRF Token (位于 Cookie 中 bili_jct)") csrf: string,
    @body @doc("-") _?: unknown,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
    @body @doc("上传结果") data?: Record<unknown>,
    @body @doc("-") _?: unknown,
    @body @doc("文件名") key?: string,
    @body @doc("文件 URL") url?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("-")
  _?: unknown;

  @doc("文件名")
  key?: string;

  @doc("文件 URL")
  url?: string;

}
