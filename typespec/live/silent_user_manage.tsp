import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Live;

/**
 * 禁言观众
 */
@route("/xlive/web-ucenter/v1/banned/AddSilentUser")
@tag("Live")
interface 禁言观众 {
  @post
  @doc("禁言观众")
  禁言观众(
    @body @doc("直播间Id") room_id: string,
    @body @doc("要禁言的uid") tuid: string,
    @body @doc("要禁言的弹幕内容") msg: string,
    @body @doc("web") mobile_app: string,
    @body @doc("禁言时长") hour: int64,
    @body @doc("CSRF Token") csrf_token: string,
    @body @doc("CSRF Token") csrf: string,
    @body @doc("不明") visit_id: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: string,
    @body @doc("信息本体") data?: Record<unknown>,
  ): ApiResponse<unknown>;
}

/**
 * 查询直播间禁言列表
 */
@route("/xlive/web-ucenter/v1/banned/GetSilentUserList")
@tag("Live")
interface 查询直播间禁言列表 {
  @post
  @doc("查询直播间禁言列表")
  查询直播间禁言列表(
    @body @doc("直播间Id") room_id: string,
    @body @doc("列表页码") ps: string,
    @body @doc("CSRF Token") csrf_token: string,
    @body @doc("CSRF Token") csrf: string,
    @body @doc("不明") visit_id: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: string,
    @body @doc("信息本体") data?: Record<unknown>,
    @body @doc("禁言列表") data?: unknown[],
    @body @doc("禁言观众数量") total?: int32,
    @body @doc("页码总数量") total_page?: int32,
    @body @doc("禁言者uid") tuid?: int64,
    @body @doc("禁言者昵称") tname?: string,
    @body @doc("发起者uid") uid?: int64,
    @body @doc("发起者昵称") name?: string,
    @body @doc("禁言时间") ctime?: string,
    @body @doc("禁言记录Id") id?: int64,
    @body @doc("不明") is_anchor?: int64,
    @body @doc("禁言者头像") face?: string,
    @body @doc("发起者权限") admin_level?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("禁言列表")
  data?: unknown[];

  @doc("禁言观众数量")
  total?: int32;

  @doc("页码总数量")
  total_page?: int32;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("禁言者uid")
  tuid?: int64;

  @doc("禁言者昵称")
  tname?: string;

  @doc("发起者uid")
  uid?: int64;

  @doc("发起者昵称")
  name?: string;

  @doc("禁言时间")
  ctime?: string;

  @doc("禁言记录Id")
  id?: int64;

  @doc("不明")
  is_anchor?: int64;

  @doc("禁言者头像")
  face?: string;

  @doc("发起者权限")
  admin_level?: int64;

}

/**
 * 解除禁言
 */
@route("/banned_service/v1/Silent/del_room_block_user")
@tag("Live")
interface 解除禁言 {
  @post
  @doc("解除禁言")
  解除禁言(
    @body @doc("直播间Id") roomid: string,
    @body @doc("禁言记录Id") id: string,
    @body @doc("CSRF Token") csrf_token: string,
    @body @doc("CSRF Token") csrf: string,
    @body @doc("不明") visit_id: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: string,
    @body @doc("信息本体") data?: Record<unknown>,
  ): ApiResponse<unknown>;
}
