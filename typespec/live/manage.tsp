import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Live;

/**
 * 开通直播间
 */
@route("/xlive/app-blink/v1/preLive/CreateRoom")
@tag("Live")
interface 开通直播间 {
  @post
  @doc("开通直播间")
  开通直播间(
    @body @doc("客户端？") platform: string,
    @body @doc("未知") visit_id?: string,
    @body @doc("CSRF Token（位于cookie）") csrf: string,
    @body @doc("CSRF Token（位于 cookie）") csrf_token?: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") ttl?: string,
    @body @doc("错误信息") message?: string,
    @body @doc("信息本体") data?: unknown[],
    @body @doc("直播间房间号") roomID?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("直播间房间号")
  roomID?: string;

}

/**
 * 更新直播间信息
 */
@route("/room/v1/Room/update")
@tag("Live")
interface 更新直播间信息 {
  @post
  @doc("更新直播间信息")
  更新直播间信息(
    @body @doc("CSRF Token（位于cookie）") csrf: string,
    @body @doc("CSRF Token（位于 cookie）") csrf_token: string,
    @body @doc("平台标识") platform: string,
    @body @doc("(?)") visit_id: string,
    @body @doc("直播间id") room_id: int64,
    @body @doc("直播间标题") title: string,
    @body @doc("直播分区id（子分区id）") area__id: int64,
    @body @doc("要添加的标签") add__tag: string,
    @body @doc("要删除的标签") del__tag: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") msg?: string,
    @body @doc("错误信息") message?: string,
    @body @doc("信息本体") data?: Record<unknown>,
    @body @doc("信息变动标识") sub_session_key?: string,
    @body @doc("标题审核信息") audit_info?: Record<unknown>,
    @body @doc("标题审核提示") audit_title_reason?: string,
    @body @doc("标题审核状态") audit_title_status?: int64,
    @body @doc("被审核的标题") audit_title?: string,
    @body @doc("`\"\"`") update_title?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("信息变动标识")
  sub_session_key?: string;

  @doc("标题审核信息")
  audit_info?: Record<unknown>;

}

/**
 * audit_info 对象
 */
@doc("audit_info 数据模型")
model Audit_info {
  @doc("标题审核提示")
  audit_title_reason?: string;

  @doc("标题审核状态")
  audit_title_status?: int64;

  @doc("被审核的标题")
  audit_title?: string;

  @doc("`\"\"`")
  update_title?: string;

}

/**
 * 开始直播
 */
@route("/room/v1/Room/startLive")
@tag("Live")
interface 开始直播 {
  @post
  @doc("开始直播")
  开始直播(
    @body @doc("直播间id") room_id: int64,
    @body @doc("直播分区id（子分区 id）") area_v2: int64,
    @body @doc("直播平台") platform: string,
    @body @doc("CSRF Token（位于 cookie）") csrf: string,
    @body @doc("CSRF Token（位于 cookie）") csrf_token: string,
    @body @doc("直播姬版本号") version: string,
    @body @doc("直播姬构建号") build: int64,
    @body @doc("APP密钥") appkey: string,
    @body @doc("APP API签名得到的 sign") sign: string,
    @body @doc("返回值") code?: int64,
    @body @doc("提示信息") msg?: string,
    @body @doc("提示信息") message?: string,
    @body @doc("信息本体") data?: Record<unknown>,
    @body @doc("是否改变状态") change?: int64,
    @body @doc("直播间状态") status?: string,
    @body @doc("0") room_type?: int64,
    @body @doc("RTMP推流地址信息") rtmp?: Record<unknown>,
    @body @doc("推流协议、地址、密钥等信息<br />其中地址、密钥与 `rtmp` 字段的内容是一致的") protocols?: unknown[],
    @body @doc("？？？") try_time?: string,
    @body @doc("标记直播场次的key") live_key?: string,
    @body @doc("信息变动标识") sub_session_key?: string,
    @body @doc("？？？") notice?: Record<unknown>,
    @body @doc("`\"\"`") qr?: string,
    @body @doc("需要人脸识别?") need_face_auth?: boolean,
    @body @doc("？？？") service_source?: string,
    @body @doc("？？？") rtmp__backup?: null,
    @body @doc("主播推流额外信息?") up_stream_extra?: Record<unknown>,
    @body @doc("RTMP推流（发送）地址") addr?: string,
    @body @doc("RTMP推流参数（密钥）") code?: string,
    @body @doc("获取CDN推流ip地址重定向信息的url") new_link?: string,
    @body @doc("推流云服务节点厂商") provider?: string,
    @body @doc("内容") 项?: unknown,
    @body @doc("与 `rtmp` 字段在地址和密钥上相同的推流协议信息") field_0?: Record<unknown>,
    @body @doc("rtmp") protocol?: string,
    @body @doc("RTMP推流（发送）地址") addr?: string,
    @body @doc("RTMP推流参数（密钥）") code?: string,
    @body @doc("获取CDN推流ip地址重定向信息的url") new_link?: string,
    @body @doc("推流云服务节点厂商") provider?: string,
    @body @doc("1") type?: int64,
    @body @doc("0") status?: int64,
    @body @doc("空") title?: string,
    @body @doc("空") msg?: string,
    @body @doc("空") button_text?: string,
    @body @doc("空") button_url?: string,
    @body @doc("主播的互联网服务提供商") isp?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("是否改变状态")
  change?: int64;

  @doc("直播间状态")
  status?: string;

  @doc("0")
  room_type?: int64;

  @doc("RTMP推流地址信息")
  rtmp?: Record<unknown>;

  @doc("？？？")
  try_time?: string;

  @doc("标记直播场次的key")
  live_key?: string;

  @doc("信息变动标识")
  sub_session_key?: string;

  @doc("？？？")
  notice?: Record<unknown>;

  @doc("`\"\"`")
  qr?: string;

  @doc("需要人脸识别?")
  need_face_auth?: boolean;

  @doc("？？？")
  service_source?: string;

  @doc("？？？")
  rtmp__backup?: null;

  @doc("主播推流额外信息?")
  up_stream_extra?: Record<unknown>;

}

/**
 * rtmp 对象
 */
@doc("rtmp 数据模型")
model Rtmp {
  @doc("RTMP推流（发送）地址")
  addr?: string;

  @doc("RTMP推流参数（密钥）")
  code?: string;

  @doc("获取CDN推流ip地址重定向信息的url")
  new_link?: string;

  @doc("推流云服务节点厂商")
  provider?: string;

  @doc("内容")
  项?: unknown;

  @doc("rtmp")
  protocol?: string;

  @doc("RTMP推流（发送）地址")
  addr?: string;

  @doc("RTMP推流参数（密钥）")
  code?: string;

  @doc("获取CDN推流ip地址重定向信息的url")
  new_link?: string;

  @doc("推流云服务节点厂商")
  provider?: string;

}

/**
 * notice 对象
 */
@doc("notice 数据模型")
model Notice {
  @doc("1")
  type?: int64;

  @doc("0")
  status?: int64;

  @doc("空")
  title?: string;

  @doc("空")
  msg?: string;

  @doc("空")
  button_text?: string;

  @doc("空")
  button_url?: string;

}

/**
 * up_stream_extra 对象
 */
@doc("up_stream_extra 数据模型")
model Up_stream_extra {
  @doc("主播的互联网服务提供商")
  isp?: string;

}

/**
 * 关闭直播
 */
@route("/room/v1/Room/stopLive")
@tag("Live")
interface 关闭直播 {
  @post
  @doc("关闭直播")
  关闭直播(
    @body @doc("直播平台") platform: string,
    @body @doc("直播间id") room_id: int64,
    @body @doc("CSRF Token（位于cookie）") csrf: string,
    @body @doc("返回值") code?: int64,
    @body @doc("提示信息") msg?: string,
    @body @doc("提示信息") message?: string,
    @body @doc("信息本体") data?: Record<unknown>,
    @body @doc("是否改变状态") change?: int64,
    @body @doc("直播间状态") status?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("是否改变状态")
  change?: int64;

  @doc("直播间状态")
  status?: string;

}

/**
 * 预更新直播间信息
 */
@route("/xlive/app-blink/v1/preLive/UpdatePreLiveInfo")
@tag("Live")
interface 预更新直播间信息 {
  @get
  @doc("预更新直播间信息")
  预更新直播间信息(
    @body @doc("CSRF Token（位于cookie）") csrf: string,
    @body @doc("CSRF Token（位于cookie）") csrf_token: string,
    @body @doc("平台标识") platform: string,
    @body @doc("平台标识?") mobi_app: string,
    @body @doc("构建标识?") build: int64,
    @body @doc("直播封面链接") cover: string,
    @body @doc("直播间标题") title: string,
    @body @doc("(?)") coverVertical: string,
    @body @doc("(?)") liveDirectionType: int64,
    @body @doc("(?)") visit_id: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("`1`") ttl?: int64,
    @body @doc("内容本体") data?: Record<unknown>,
    @body @doc("审核信息") audit_info?: Record<unknown>,
    @body @doc("被审核的标题") audit_title?: string,
    @body @doc("标题审核状态") audit_title_status?: int64,
    @body @doc("标题审核提示") audit_title_reason?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("审核信息")
  audit_info?: Record<unknown>;

}

/**
 * data.audit_info 对象
 */
@doc("data.audit_info 数据模型")
model Dataaudit_info {
  @doc("被审核的标题")
  audit_title?: string;

  @doc("标题审核状态")
  audit_title_status?: int64;

  @doc("标题审核提示")
  audit_title_reason?: string;

}

/**
 * 更新直播间公告
 */
@route("/xlive/app-blink/v1/index/updateRoomNews")
@tag("Live")
interface 更新直播间公告 {
  @post
  @doc("更新直播间公告")
  更新直播间公告(
    @body @doc("直播间id") room_id: int64,
    @body @doc("用户id") uid: int64,
    @body @doc("公告内容") content: string,
    @body @doc("CSRF Token（位于cookie）") csrf: string,
    @body @doc("CSRF Token（位于 cookie）") csrf_token?: string,
    @body @doc("返回值") code?: int64,
    @body @doc("空") data?: unknown[],
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
  ): ApiResponse<unknown>;
}

/**
 * PC直播姬版本号获取
 */
@route("/xlive/app-blink/v1/liveVersionInfo/getHomePageLiveVersion")
@tag("Live")
interface Pc直播姬版本号获取 {
  @get
  @doc("PC直播姬版本号获取")
  pc直播姬版本号获取(
    @query @doc("APP密钥") appkey: string,
    @query @doc("APP API签名得到的sign") sign: string,
    @query @doc("暂不清楚") system_version: int64,
    @query @doc("10位时间戳") ts: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("内容本体") data?: Record<unknown>,
    @query @doc("直播姬最新版本号") curr_version?: string,
    @query @doc("直播姬构建号") build?: int64,
    @query @doc("更新说明（简要）") instruction?: string,
    @query @doc("文件大小（字节）") file_size?: string,
    @query @doc("安装包文件MD5") file_md5?: string,
    @query @doc("HTML格式的更新内容") content?: string,
    @query @doc("安装包下载链接") download_url?: string,
    @query @doc("增量更新开关?") hdiffpatch_switch?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("直播姬最新版本号")
  curr_version?: string;

  @doc("直播姬构建号")
  build?: int64;

  @doc("更新说明（简要）")
  instruction?: string;

  @doc("文件大小（字节）")
  file_size?: string;

  @doc("安装包文件MD5")
  file_md5?: string;

  @doc("HTML格式的更新内容")
  content?: string;

  @doc("安装包下载链接")
  download_url?: string;

  @doc("增量更新开关?")
  hdiffpatch_switch?: int64;

}
