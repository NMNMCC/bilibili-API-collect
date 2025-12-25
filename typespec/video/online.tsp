import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Video;

/**
 * 获取视频在线人数_web端
 */
@route("/x/player/online/total")
@tag("Video")
interface 获取视频在线人数_web端 {
  @get
  @doc("获取视频在线人数_web端")
  获取视频在线人数_web端(
    @query @doc("稿件avid") aid: int64,
    @query @doc("稿件bvid") bvid: string,
    @query @doc("视频cid") cid: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("所有终端总计人数") total?: string,
    @query @doc("web端实时在线人数") count?: string,
    @query @doc("数据显示控制") show_switch?: Record<unknown>,
    @query @doc("展示所有终端总计人数") total?: boolean,
    @query @doc("展示web端实时在线人数") count?: boolean,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("所有终端总计人数")
  total?: string;

  @doc("web端实时在线人数")
  count?: string;

  @doc("数据显示控制")
  show_switch?: Record<unknown>;

}

/**
 * show_switch 对象
 */
@doc("show_switch 数据模型")
model Show_switch {
  @doc("展示所有终端总计人数")
  total?: boolean;

  @doc("展示web端实时在线人数")
  count?: boolean;

}

/**
 * 获取视频在线人数_APP端
 */
@route("/x/v2/view/video/online")
@tag("Video")
interface 获取视频在线人数_app端 {
  @get
  @doc("获取视频在线人数_APP端")
  获取视频在线人数_app端(
    @query @doc("稿件avid") aid: int64,
    @query @doc("APP密钥") appkey: string,
    @query @doc("视频cid") cid: int64,
    @query @doc("当前时间戳") ts: int64,
    @query @doc("APP签名") sign: string,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("所有终端总计人数") online?: Record<unknown>,
    @query @doc("所有终端总计人数") online?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("所有终端总计人数")
  online?: Record<unknown>;

}

/**
 * show_switch 对象
 */
@doc("show_switch 数据模型")
model Show_switch {
  @doc("所有终端总计人数")
  online?: string;

}
