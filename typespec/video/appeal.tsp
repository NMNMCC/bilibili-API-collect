import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Video;

/**
 * 获取投诉类型
 */
@route("/x/web-interface/archive/appeal/tags")
@tag("Video")
interface 获取投诉类型 {
  @get
  @doc("获取投诉类型")
  获取投诉类型(
    @query @doc("成功为0") code?: int64,
    @query @doc("成功为0") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("内容") 项?: unknown,
    @query @doc("类型条目 1") field_0?: Record<unknown>,
    @query @doc("类型条目 (n+1)") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("内容") 项?: unknown,
    @query @doc("类型tid") tid?: int64,
    @query @doc("意义不明") business?: int64,
    @query @doc("权重") weight?: int64,
    @query @doc("意义不明") round?: int64,
    @query @doc("意义不明") state?: int64,
    @query @doc("类型名称") name?: string,
    @query @doc("类型备注") remark?: string,
    @query @doc("意义不明") ctime?: string,
    @query @doc("意义不明") mtime?: string,
    @query @doc("详细信息填写提示") controls?: unknown,
    @query @doc("内容") 项?: unknown,
    @query @doc("同上") tid?: int64,
    @query @doc("意义不明") bid?: int64,
    @query @doc("提示名称") name?: string,
    @query @doc("提示标题") title?: string,
    @query @doc("需要填入的类型") component?: string,
    @query @doc("文本框占位符") placeholder?: string,
    @query @doc("是否为必填") required?: int64,
  ): ApiResponse<unknown>;
}

/**
 * 投诉稿件
 */
@route("/x/web-interface/appeal/v2/submit")
@tag("Video")
interface 投诉稿件 {
  @post
  @doc("投诉稿件")
  投诉稿件(
    @body @doc("csrf token(位于cookie bili_jct)") csrf: string,
    @body @doc("稿件aid") aid: int64,
    @body @doc("投诉理由tid") tid: int64,
    @body @doc("投诉理由详细描述") desc: string,
    @body @doc("附件（多个附件用逗号隔开") attach: string,
    @body @doc("风控代码") buid: string,
    @body @doc("风控代码") Buid: string,
    @body @doc("返回码") code?: int64,
    @body @doc("成功为0") message?: string,
  ): ApiResponse<unknown>;
}
