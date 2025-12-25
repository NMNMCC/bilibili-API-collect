import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Video;

/**
 * 获取视频快照（web端）
 */
@route("/x/player/videoshot")
@tag("Video")
interface 获取视频快照web端 {
  @get
  @doc("获取视频快照（web端）")
  获取视频快照web端(
    @query @doc("稿件avid") aid: int64,
    @query @doc("稿件bvid") bvid: string,
    @query @doc("分P cid") cid: int64,
    @query @doc("json数组截取时间表") index: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("bin格式截取时间表url") pvdata?: string,
    @query @doc("每行图片数") img_x_len?: int64,
    @query @doc("每列图片数") img_y_len?: int64,
    @query @doc("每张图片长") img_x_size?: int64,
    @query @doc("每张图片宽") img_y_size?: int64,
    @query @doc("图片拼版") image?: unknown[],
    @query @doc("json数组格式截取时间表") index?: unknown[],
    @query @doc("内容") 项?: unknown,
    @query @doc("图片拼版1 url") field_0?: string,
    @query @doc("图片拼版(n+1) url") n?: string,
    @query @doc("……") __?: string,
    @query @doc("内容") 项?: unknown,
    @query @doc("恒为0") field_0?: int64,
    @query @doc("图片1 截取时间") field_1?: int64,
    @query @doc("图片n  截取时间") n?: int64,
    @query @doc("……") __?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("bin格式截取时间表url")
  pvdata?: string;

  @doc("每行图片数")
  img_x_len?: int64;

  @doc("每列图片数")
  img_y_len?: int64;

  @doc("每张图片长")
  img_x_size?: int64;

  @doc("每张图片宽")
  img_y_size?: int64;

  @doc("图片拼版")
  image?: unknown[];

  @doc("json数组格式截取时间表")
  index?: unknown[];

  @doc("内容")
  项?: unknown;

  @doc("图片拼版1 url")
  field_0?: string;

  @doc("图片拼版(n+1) url")
  n?: string;

  @doc("……")
  __?: string;

  @doc("内容")
  项?: unknown;

  @doc("恒为0")
  field_0?: int64;

  @doc("图片1 截取时间")
  field_1?: int64;

  @doc("图片n  截取时间")
  n?: int64;

  @doc("……")
  __?: int64;

}

/**
 * 获取视频快照（APP端）
 */
@route("/x/v2/view/video/shot")
@tag("Video")
interface 获取视频快照app端 {
  @get
  @doc("获取视频快照（APP端）")
  获取视频快照app端(
    @query @doc("稿件avid") aid: int64,
    @query @doc("APP密钥") appkey: string,
    @query @doc("分P cid") cid: int64,
    @query @doc("当前时间戳") ts: int64,
    @query @doc("APP签名") sign: string,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("bin格式截取时间表url") pvdata?: string,
    @query @doc("每行图片数") img_x_len?: int64,
    @query @doc("每列图片数") img_y_len?: int64,
    @query @doc("每张图片长") img_x_size?: int64,
    @query @doc("每张图片宽") img_y_size?: int64,
    @query @doc("图片拼版") image?: unknown[],
    @query @doc("内容") 项?: unknown,
    @query @doc("图片拼版1 url") field_0?: string,
    @query @doc("图片拼版(n+1) url") n?: string,
    @query @doc("……") __?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("bin格式截取时间表url")
  pvdata?: string;

  @doc("每行图片数")
  img_x_len?: int64;

  @doc("每列图片数")
  img_y_len?: int64;

  @doc("每张图片长")
  img_x_size?: int64;

  @doc("每张图片宽")
  img_y_size?: int64;

  @doc("图片拼版")
  image?: unknown[];

  @doc("内容")
  项?: unknown;

  @doc("图片拼版1 url")
  field_0?: string;

  @doc("图片拼版(n+1) url")
  n?: string;

  @doc("……")
  __?: string;

}

/**
 * 获取视频快照（web端）（用于封面预览）
 */
@route("/pvideo")
@tag("Video")
interface 获取视频快照web端用于封面预览 {
  @get
  @doc("获取视频快照（web端）（用于封面预览）")
  获取视频快照web端用于封面预览(
    @query @doc("稿件avid") aid: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("bin格式截取时间表url") pvdata?: string,
    @query @doc("每行图片数") img_x_len?: int64,
    @query @doc("每列图片数") img_y_len?: int64,
    @query @doc("每张图片长") img_x_size?: int64,
    @query @doc("每张图片宽") img_y_size?: int64,
    @query @doc("图片拼版") image?: unknown[],
    @query @doc("json数组格式截取时间表") index?: unknown[],
    @query @doc("内容") 项?: unknown,
    @query @doc("图片拼版1 url") field_0?: string,
    @query @doc("图片拼版(n+1) url") n?: string,
    @query @doc("……") __?: string,
    @query @doc("内容") 项?: unknown,
    @query @doc("恒为0") field_0?: int64,
    @query @doc("图片1 截取时间") field_1?: int64,
    @query @doc("图片n  截取时间") n?: int64,
    @query @doc("……") __?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("bin格式截取时间表url")
  pvdata?: string;

  @doc("每行图片数")
  img_x_len?: int64;

  @doc("每列图片数")
  img_y_len?: int64;

  @doc("每张图片长")
  img_x_size?: int64;

  @doc("每张图片宽")
  img_y_size?: int64;

  @doc("图片拼版")
  image?: unknown[];

  @doc("json数组格式截取时间表")
  index?: unknown[];

  @doc("内容")
  项?: unknown;

  @doc("图片拼版1 url")
  field_0?: string;

  @doc("图片拼版(n+1) url")
  n?: string;

  @doc("……")
  __?: string;

  @doc("内容")
  项?: unknown;

  @doc("恒为0")
  field_0?: int64;

  @doc("图片1 截取时间")
  field_1?: int64;

  @doc("图片n  截取时间")
  n?: int64;

  @doc("……")
  __?: int64;

}
