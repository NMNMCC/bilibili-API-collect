import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Live;

/**
 * 获取指定直播间的红包信息
 */
@route("/xlive/lottery-interface/v1/lottery/getLotteryInfoWeb")
@tag("Live")
interface 获取指定直播间的红包信息 {
  @get
  @doc("获取指定直播间的红包信息")
  获取指定直播间的红包信息(
    @query @doc("直播间id") roomid: string,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("TimeToLive") ttl?: int64,
    @query @doc("返回数据") data?: Record<unknown>,
    @query @doc("内容") 项?: unknown,
    @query @doc("人气红包信息") popularity_red_pocket?: unknown[],
    @query @doc("……") __?: unknown,
    @query @doc("红包id") lot_id?: int64,
    @query @doc("红包发送者uid") sender_uid?: int64,
    @query @doc("红包发送者昵称") sender_name?: string,
    @query @doc("红包发送者头像") sender_face?: string,
    @query @doc("参与条件?") join_requirement?: int64,
    @query @doc("参与红包时自动发送的弹幕内容") danmu?: string,
    @query @doc("红包内容") awards?: unknown[],
    @query @doc("未知") lot_status?: int64,
    @query @doc("红包界面") h5_url?: string,
    @query @doc("用户是否已参与") user_status?: int64,
    @query @doc("未知") lot_config_id?: int64,
    @query @doc("红包总计价格") total_price?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("内容")
  项?: unknown;

  @doc("人气红包信息")
  popularity_red_pocket?: unknown[];

  @doc("……")
  __?: unknown;

  @doc("红包id")
  lot_id?: int64;

  @doc("红包发送者uid")
  sender_uid?: int64;

  @doc("红包发送者昵称")
  sender_name?: string;

  @doc("红包发送者头像")
  sender_face?: string;

  @doc("参与条件?")
  join_requirement?: int64;

  @doc("参与红包时自动发送的弹幕内容")
  danmu?: string;

  @doc("红包内容")
  awards?: unknown[];

  @doc("未知")
  lot_status?: int64;

  @doc("红包界面")
  h5_url?: string;

  @doc("用户是否已参与")
  user_status?: int64;

  @doc("未知")
  lot_config_id?: int64;

  @doc("红包总计价格")
  total_price?: int64;

}
