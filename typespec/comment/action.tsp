import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Comment;

/**
 * 发表评论
 */
@route("/x/v2/reply/add")
@tag("Comment")
interface 发表评论 {
  @post
  @doc("发表评论")
  发表评论(
    @body @doc("APP登录Token") access_key: string,
    @body @doc("评论区类型代码") type: int64,
    @body @doc("目标评论区id") oid: int64,
    @body @doc("根评论rpid") root: int64,
    @body @doc("父评论rpid") parent: int64,
    @body @doc("发送评论内容") message: string,
    @body @doc("发送平台标识") plat: int64,
    @body @doc("CSRF Token（位于cookie）") csrf: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
    @body @doc("数据本体") data?: Record<unknown>,
    @body @doc("0") success_action?: int64,
    @body @doc("状态文字") success_toast?: string,
    @body @doc("false") need_captcha?: boolean,
    @body @doc("空") url?: string,
    @body @doc("评论rpid") rpid?: int64,
    @body @doc("评论rpid") rpid_str?: string,
    @body @doc("回复对方rpid") dialog?: int64,
    @body @doc("回复对方rpid") dialog_str?: string,
    @body @doc("根评论rpid") root?: int64,
    @body @doc("根评论rpid") root_str?: string,
    @body @doc("回复父评论rpid") parent?: int64,
    @body @doc("回复父评论rpid") parent_str?: string,
    @body @doc("表情转义符信息") emote?: Record<unknown>,
    @body @doc("[对象定义见表](readme.md#评论条目对象)") reply?: unknown,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("0")
  success_action?: int64;

  @doc("状态文字")
  success_toast?: string;

  @doc("false")
  need_captcha?: boolean;

  @doc("空")
  url?: string;

  @doc("评论rpid")
  rpid?: int64;

  @doc("评论rpid")
  rpid_str?: string;

  @doc("回复对方rpid")
  dialog?: int64;

  @doc("回复对方rpid")
  dialog_str?: string;

  @doc("根评论rpid")
  root?: int64;

  @doc("根评论rpid")
  root_str?: string;

  @doc("回复父评论rpid")
  parent?: int64;

  @doc("回复父评论rpid")
  parent_str?: string;

  @doc("表情转义符信息")
  emote?: Record<unknown>;

  @doc("[对象定义见表](readme.md#评论条目对象)")
  reply?: unknown;

}

/**
 * 点赞评论
 */
@route("/x/v2/reply/action")
@tag("Comment")
interface 点赞评论 {
  @post
  @doc("点赞评论")
  点赞评论(
    @body @doc("APP登录Token") access_key: string,
    @body @doc("评论区类型代码") type: int64,
    @body @doc("目标评论区id") oid: int64,
    @body @doc("目标评论rpid") rpid: int64,
    @body @doc("操作代码") action: int64,
    @body @doc("CSRF Token（位于cookie）") csrf: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
  ): ApiResponse<unknown>;
}

/**
 * 点踩评论
 */
@route("/x/v2/reply/hate")
@tag("Comment")
interface 点踩评论 {
  @post
  @doc("点踩评论")
  点踩评论(
    @body @doc("APP登录Token") access_key: string,
    @body @doc("评论区类型代码") type: int64,
    @body @doc("目标评论区id") oid: int64,
    @body @doc("目标评论rpid") rpid: int64,
    @body @doc("操作代码") action: int64,
    @body @doc("CSRF Token（位于cookie）") csrf: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
  ): ApiResponse<unknown>;
}

/**
 * 删除评论
 */
@route("/x/v2/reply/del")
@tag("Comment")
interface 删除评论 {
  @post
  @doc("删除评论")
  删除评论(
    @body @doc("APP登录Token") access_key: string,
    @body @doc("评论区类型代码") type: int64,
    @body @doc("目标评论区id") oid: int64,
    @body @doc("目标评论rpid") rpid: int64,
    @body @doc("CSRF Token（位于cookie）") csrf: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
  ): ApiResponse<unknown>;
}

/**
 * 置顶评论
 */
@route("/x/v2/reply/top")
@tag("Comment")
interface 置顶评论 {
  @post
  @doc("置顶评论")
  置顶评论(
    @body @doc("APP登录Token") access_key: string,
    @body @doc("评论区类型代码") type: int64,
    @body @doc("目标评论区id") oid: int64,
    @body @doc("目标评论rpid") rpid: int64,
    @body @doc("操作代码") action: int64,
    @body @doc("CSRF Token（位于cookie）") csrf: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
  ): ApiResponse<unknown>;
}

/**
 * 举报评论
 */
@route("/x/v2/reply/report")
@tag("Comment")
interface 举报评论 {
  @post
  @doc("举报评论")
  举报评论(
    @body @doc("APP登录Token") access_key: string,
    @body @doc("评论区类型代码") type: int64,
    @body @doc("目标评论区id") oid: int64,
    @body @doc("目标评论rpid") rpid: int64,
    @body @doc("举报类型") reason: int64,
    @body @doc("其他举报备注") content: string,
    @body @doc("CSRF Token（位于cookie）") csrf: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
  ): ApiResponse<unknown>;
}
