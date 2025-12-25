import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Live;

/**
 * 获取所有礼物列表
 */
@route("/gift/v1/master/getGiftTypes")
@tag("Live")
interface 获取所有礼物列表 {
  @get
  @doc("获取所有礼物列表")
  获取所有礼物列表(
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") msg?: string,
    @query @doc("错误信息") message?: string,
    @query @doc("礼物列表") data?: unknown[],
    @query @doc("礼物 id") gift_id?: int64,
    @query @doc("礼物名称") gift_name?: string,
    @query @doc("瓜子数量") price?: int64,
  ): ApiResponse<unknown>;
}

/**
 * 获取流水
 */
@route("/xlive/revenue/v1/giftStream/getReceivedGiftStreamNextList")
@tag("Live")
interface 获取流水 {
  @get
  @doc("获取流水")
  获取流水(
    @query @doc("一页有多少条目") limit: int64,
    @query @doc("礼物类型") coin_type: int64,
    @query @doc("流水的日期") begin_time: unknown,
    @query @doc("筛选的用户名") uname: string,
    @query @doc("上一页页末的礼物列表 id") last_id: int64,
    @query @doc("筛选的礼物 id") gift_id?: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") msg?: string,
    @query @doc("错误信息") message?: string,
    @query @doc("流水") data?: Record<unknown>,
    @query @doc("是否由下一页") has_more?: int64,
    @query @doc("总的金仓鼠收益") total_hamster?: int64,
    @query @doc("礼物列表") list?: unknown[],
    @query @doc("送礼用户的 uid") uid?: int64,
    @query @doc("用户名") uname?: string,
    @query @doc("送礼时间") time?: unknown,
    @query @doc("礼物 id") gift_id?: int64,
    @query @doc("礼物名字") gift_name?: string,
    @query @doc("礼物图片链接") gift_img?: string,
    @query @doc("礼物数量") gift_num?: int64,
    @query @doc("金仓鼠数量") hamster?: int64,
    @query @doc("礼物价值（金瓜子）") gold?: int64,
    @query @doc("礼物价值（银瓜子）") silver?: int64,
    @query @doc("由 iOS 端送出的礼物所收到的金仓鼠") ios_hamster?: int64,
    @query @doc("一般情况下收到的金仓鼠") normal_hamster?: int64,
    @query @doc("由 iOS 端送出的礼物所收到的金瓜子数量") ios_gold?: int64,
    @query @doc("一般情况下收到的金瓜子数量") normal_gold?: int64,
    @query @doc("是否混合") is_hybrid?: boolean,
    @query @doc("此项 id") id?: int64,
    @query @doc("是否开放平台") is_open_platfrom?: int64,
    @query @doc("开放平台比率 (?)") open_platfrom_rate?: int64,
    @query @doc("作用不明 ，一般为 `\"主播\"`") receive_title?: string,
    @query @doc("送礼房间id") room_id?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("是否由下一页")
  has_more?: int64;

  @doc("总的金仓鼠收益")
  total_hamster?: int64;

  @doc("礼物列表")
  list?: unknown[];

  @doc("送礼用户的 uid")
  uid?: int64;

  @doc("用户名")
  uname?: string;

  @doc("送礼时间")
  time?: unknown;

  @doc("礼物 id")
  gift_id?: int64;

  @doc("礼物名字")
  gift_name?: string;

  @doc("礼物图片链接")
  gift_img?: string;

  @doc("礼物数量")
  gift_num?: int64;

  @doc("金仓鼠数量")
  hamster?: int64;

  @doc("礼物价值（金瓜子）")
  gold?: int64;

  @doc("礼物价值（银瓜子）")
  silver?: int64;

  @doc("由 iOS 端送出的礼物所收到的金仓鼠")
  ios_hamster?: int64;

  @doc("一般情况下收到的金仓鼠")
  normal_hamster?: int64;

  @doc("由 iOS 端送出的礼物所收到的金瓜子数量")
  ios_gold?: int64;

  @doc("一般情况下收到的金瓜子数量")
  normal_gold?: int64;

  @doc("是否混合")
  is_hybrid?: boolean;

  @doc("此项 id")
  id?: int64;

  @doc("是否开放平台")
  is_open_platfrom?: int64;

  @doc("开放平台比率 (?)")
  open_platfrom_rate?: int64;

  @doc("作用不明 ，一般为 `\"主播\"`")
  receive_title?: string;

  @doc("送礼房间id")
  room_id?: int64;

}
