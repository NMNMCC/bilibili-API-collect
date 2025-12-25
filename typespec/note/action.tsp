import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Note;

/**
 * 保存视频笔记
 */
@route("/x/note/add")
@tag("Note")
interface 保存视频笔记 {
  @post
  @doc("保存视频笔记")
  保存视频笔记(
    @body @doc("目标id") oid: int64,
    @body @doc("目标id类型") oid_type: int64,
    @body @doc("笔记id") note_id: int64,
    @body @doc("笔记标题") title: string,
    @body @doc("笔记预览文本") summary: string,
    @body @doc("笔记正文json序列") content: string,
    @body @doc("笔记跳转标签列表") tags: string,
    @body @doc("1") cls: int64,
    @body @doc("提交类型") from: string,
    @body @doc("正文字数") cont_len: int64,
    @body @doc("平台") platform: string,
    @body @doc("是否公开笔记") publish: int64,
    @body @doc("是否添加到评论区") auto_comment: int64,
    @body @doc("CSRF Token（位于cookie）") csrf: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
    @body @doc("数据本体") data?: Record<unknown>,
    @body @doc("笔记id") note_id?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("笔记id")
  note_id?: int64;

}

/**
 * 删除视频笔记
 */
@route("/x/note/del")
@tag("Note")
interface 删除视频笔记 {
  @post
  @doc("删除视频笔记")
  删除视频笔记(
    @body @doc("目标稿件avid") oid: int64,
    @body @doc("笔记id") note_id: int64,
    @body @doc("CSRF Token（位于cookie）") csrf: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
  ): ApiResponse<unknown>;
}
