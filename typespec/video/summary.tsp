import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Video;

/**
 * 获取AI总结内容
 */
@route("/x/web-interface/view/conclusion/get")
@tag("Video")
interface 获取ai总结内容 {
  @get
  @doc("获取AI总结内容")
  获取ai总结内容(
    @query @doc("稿件 avid") aid: int64,
    @query @doc("稿件 bvid") bvid: string,
    @query @doc("视频 cid") cid: int64,
    @query @doc("UP主 mid") up_mid?: int64,
    @query @doc("Wbi 签名") w_rid: string,
    @query @doc("当前时间戳") wts: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("数据本体") data?: Record<unknown>,
    @query @doc("返回值") code?: int64,
    @query @doc("摘要内容") model_result?: Record<unknown>,
    @query @doc("摘要 id") stid?: string,
    @query @doc("(?)") status?: int64,
    @query @doc("点赞数") like_num?: int64,
    @query @doc("点踩数") dislike_num?: int64,
    @query @doc("数据类型") result_type?: int64,
    @query @doc("视频摘要") summary?: string,
    @query @doc("分段提纲") outline?: unknown,
    @query @doc("AI字幕") subtitle?: unknown,
    @query @doc("内容") 项?: unknown,
    @query @doc("总结分段1") field_0?: Record<unknown>,
    @query @doc("总结分段(n+1)") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("分段标题") title?: string,
    @query @doc("分段要点") part_outline?: unknown[],
    @query @doc("分段起始时间") timestamp?: int64,
    @query @doc("内容") 项?: unknown,
    @query @doc("分段要点1") field_0?: Record<unknown>,
    @query @doc("分段要点(n+1)") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("要点起始时间") timestamp?: int64,
    @query @doc("小结内容") content?: string,
    @query @doc("内容") 项?: unknown,
    @query @doc("字幕列表1") field_0?: Record<unknown>,
    @query @doc("字幕分段") part_subtitle?: unknown[],
    @query @doc("字幕识别起始时间") timestamp?: int64,
    @query @doc("字幕标题") title?: string,
    @query @doc("内容") 项?: unknown,
    @query @doc("字幕分段1") field_0?: Record<unknown>,
    @query @doc("字幕分段n") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("字幕内容") content?: string,
    @query @doc("分段开始时间") start_timestamp?: int64,
    @query @doc("分段结束时间") end_timestamp?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("返回值")
  code?: int64;

  @doc("摘要内容")
  model_result?: Record<unknown>;

  @doc("(?)")
  status?: int64;

  @doc("点赞数")
  like_num?: int64;

  @doc("点踩数")
  dislike_num?: int64;

}

/**
 * model_result 对象
 */
@doc("model_result 数据模型")
model Model_result {
  @doc("数据类型")
  result_type?: int64;

  @doc("视频摘要")
  summary?: string;

  @doc("分段提纲")
  outline?: unknown;

  @doc("AI字幕")
  subtitle?: unknown;

}

/**
 * model_result 对象
 */
@doc("model_result 数据模型")
model Model_result {
  @doc("内容")
  项?: unknown;

  @doc("总结分段1")
  field_0?: Record<unknown>;

  @doc("总结分段(n+1)")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("分段标题")
  title?: string;

  @doc("分段要点")
  part_outline?: unknown[];

  @doc("分段起始时间")
  timestamp?: int64;

  @doc("内容")
  项?: unknown;

  @doc("分段要点1")
  field_0?: Record<unknown>;

  @doc("分段要点(n+1)")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("要点起始时间")
  timestamp?: int64;

  @doc("小结内容")
  content?: string;

}

/**
 * model_result 对象
 */
@doc("model_result 数据模型")
model Model_result {
  @doc("内容")
  项?: unknown;

  @doc("字幕列表1")
  field_0?: Record<unknown>;

  @doc("字幕分段")
  part_subtitle?: unknown[];

  @doc("字幕识别起始时间")
  timestamp?: int64;

  @doc("字幕标题")
  title?: string;

  @doc("内容")
  项?: unknown;

  @doc("字幕分段1")
  field_0?: Record<unknown>;

  @doc("字幕分段n")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("字幕内容")
  content?: string;

  @doc("分段开始时间")
  start_timestamp?: int64;

  @doc("分段结束时间")
  end_timestamp?: int64;

}

/**
 * 点赞&点踩摘要
 */
@route("/x/web-interface/view/conclusion/set")
@tag("Video")
interface 点赞点踩摘要 {
  @post
  @doc("点赞&点踩摘要")
  点赞点踩摘要(
    @query @doc("Wbi 签名") w_rid: string,
    @query @doc("当前时间戳") wts: int64,
    @body @doc("稿件 avid") aid: int64,
    @body @doc("稿件 bvid") bvid: string,
    @body @doc("稿件 cid") cid: int64,
    @body @doc("UP主 mid") up_mid: int64,
    @body @doc("摘要 id") stid: int64,
    @body @doc("执行操作") like_state: int64,
    @body @doc("CSRF Token（位于cookie）") csrf: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
  ): ApiResponse<unknown>;
}
