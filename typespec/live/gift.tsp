import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Live;

/**
 * 获取盲盒概率
 */
@route("/xlive/general-interface/v1/blindFirstWin/getInfo")
@tag("Live")
interface 获取盲盒概率 {
  @get
  @doc("获取盲盒概率")
  获取盲盒概率(
    @query @doc("盲盒对应的礼物id") gift_id?: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("描述") note_text?: string,
    @query @doc("盲盒价格") blind_price?: int64,
    @query @doc("盲盒名字") blind_gift_name?: string,
    @query @doc("盲盒价格") gifts?: unknown[],
    @query @doc("爆出的礼物id") gift_id?: int64,
    @query @doc("爆出的礼物价格") price?: int64,
    @query @doc("礼物名字") gift_name?: string,
    @query @doc("礼物图片") gift_img?: string,
    @query @doc("概率") chance?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("描述")
  note_text?: string;

  @doc("盲盒价格")
  blind_price?: int64;

  @doc("盲盒名字")
  blind_gift_name?: string;

  @doc("盲盒价格")
  gifts?: unknown[];

}

/**
 * gifts数组 对象
 */
@doc("gifts数组 数据模型")
model Gifts数组 {
  @doc("爆出的礼物id")
  gift_id?: int64;

  @doc("爆出的礼物价格")
  price?: int64;

  @doc("礼物名字")
  gift_name?: string;

  @doc("礼物图片")
  gift_img?: string;

  @doc("概率")
  chance?: string;

}
