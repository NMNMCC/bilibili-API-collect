import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Live;

/**
 * 获取当前用户对应直播间可发弹幕配置
 */
@route("/xlive/web-room/v1/dM/GetDMConfigByGroup")
@tag("Live")
interface 获取当前用户对应直播间可发弹幕配置 {
  @get
  @doc("获取当前用户对应直播间可发弹幕配置")
  获取当前用户对应直播间可发弹幕配置(
    @query @doc("直播间id") room_id: int64,
    @query @doc("(?)") web_location: string,
    @query @doc("wbi签名") w_rid: string,
    @query @doc("秒时间戳") wts: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("错误信息") message?: string,
    @query @doc("信息") msg?: string,
    @query @doc("`1`") ttl?: int64,
    @query @doc("弹幕颜色组") group?: unknown[],
    @query @doc("弹幕显示模式") mode?: unknown[],
    @query @doc("显示名称") name?: string,
    @query @doc("用于排序") sort?: int64,
    @query @doc("该组颜色列表") color?: unknown[],
    @query @doc("颜色名") name?: string,
    @query @doc("十进制颜色值") color?: string,
    @query @doc("十六进制颜色值") color__hex?: string,
    @query @doc("可用状态") status?: int64,
    @query @doc("(?)") weight?: int64,
    @query @doc("颜色id?") color__id?: int64,
    @query @doc("(?)") origin?: int64,
    @query @doc("模式名称") name?: string,
    @query @doc("模式值") mode?: int64,
    @query @doc("模式类型") type?: string,
    @query @doc("可用状态") status?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("弹幕颜色组")
  group?: unknown[];

  @doc("弹幕显示模式")
  mode?: unknown[];

  @doc("显示名称")
  name?: string;

  @doc("用于排序")
  sort?: int64;

  @doc("该组颜色列表")
  color?: unknown[];

  @doc("颜色名")
  name?: string;

  @doc("十进制颜色值")
  color?: string;

  @doc("十六进制颜色值")
  color__hex?: string;

  @doc("可用状态")
  status?: int64;

  @doc("(?)")
  weight?: int64;

  @doc("颜色id?")
  color__id?: int64;

  @doc("(?)")
  origin?: int64;

  @doc("模式名称")
  name?: string;

  @doc("模式值")
  mode?: int64;

  @doc("模式类型")
  type?: string;

  @doc("可用状态")
  status?: int64;

}

/**
 * 设置弹幕样式
 */
@route("/xlive/web-room/v1/dM/AjaxSetConfig")
@tag("Live")
interface 设置弹幕样式 {
  @post
  @doc("设置弹幕样式")
  设置弹幕样式(
    @body @doc("CSRF Token（位于cookie）") csrf: string,
    @body @doc("同csrf") csrf__token: string,
    @body @doc("直播间id") room__id: int64,
    @body @doc("颜色值") color: string,
    @body @doc("弹幕模式") mode: int64,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("`1`") ttl?: int64,
    @body @doc("信息本体") data?: Record<unknown>,
    @body @doc("同code") status?: int64,
    @body @doc("提示信息") msg?: string,
    @body @doc("直播间id") roomid?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("同code")
  status?: int64;

  @doc("提示信息")
  msg?: string;

  @doc("直播间id")
  roomid?: int64;

}

/**
 * 发送直播弹幕
 */
@route("/msg/send")
@tag("Live")
interface 发送直播弹幕 {
  @post
  @doc("发送直播弹幕")
  发送直播弹幕(
    @query @doc("wbi签名") w_rid: string,
    @query @doc("Unix 秒时间戳") wts: int64,
    @body @doc("CSRF Token（位于cookie）") csrf: string,
    @body @doc("直播间id") roomid: int64,
    @body @doc("弹幕内容") msg: string,
    @body @doc("当前 Unix 秒时间戳") rnd: int64,
    @body @doc("字体大小") fontsize: int64,
    @body @doc("十进制颜色值") color: int64,
    @body @doc("展示模式") mode: int64,
    @body @doc("(?)") bubble: int64,
    @body @doc("(?)") room__type: int64,
    @body @doc("(?)") jumpfrom: int64,
    @body @doc("要“@”的用户mid") reply__mid: int64,
    @body @doc("(?)") reply__attr: int64,
    @body @doc("要“@”的用户名称") reply__uname: string,
    @body @doc("要回复的弹幕id") replay__dmid: string,
    @body @doc("(?)") statistics: string,
    @body @doc("同csrf") csrf_token: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("同`message`") msg?: string,
    @body @doc("信息本体") data?: Record<unknown>,
    @body @doc("`1`") ttl?: int64,
    @body @doc("弹幕信息") mode_info?: Record<unknown>,
    @body @doc("v2弹幕") dm_v2?: null,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("弹幕信息")
  mode_info?: Record<unknown>;

  @doc("v2弹幕")
  dm_v2?: null;

}

/**
 * data.mode_info 对象
 */
@doc("data.mode_info 数据模型")
model Datamode_info {
}

/**
 * info[0][15] 对象
 */
@doc("info[0][15] 数据模型")
model Info015 {
}
