import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Manga;

/**
 * 获取当前持有点数
 */
@route("/twirp/pointshop.v1.Pointshop/GetUserPoint")
@tag("Manga")
interface 获取当前持有点数 {
  @post
  @doc("获取当前持有点数")
  获取当前持有点数(
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") msg?: string,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("点数") point?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("点数")
  point?: string;

}

/**
 * 获取兑换奖品列表
 */
@route("/twirp/pointshop.v1.Pointshop/ListProduct")
@tag("Manga")
interface 获取兑换奖品列表 {
  @post
  @doc("获取兑换奖品列表")
  获取兑换奖品列表(
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") msg?: string,
    @query @doc("奖品列表") data?: unknown[],
    @query @doc("内容") 项?: unknown,
    @query @doc("奖品1") field_0?: Record<unknown>,
    @query @doc("奖品(n+1)") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("物品id") id?: int64,
    @query @doc("物品类型") type?: int64,
    @query @doc("物品名") title?: string,
    @query @doc("显示的图像") image?: string,
    @query @doc("库存总量") amount?: int64,
    @query @doc("兑换所需点数（原价）") cost?: int64,
    @query @doc("兑换所需点数（现价）") real_cost?: int64,
    @query @doc("库存剩余数") remain_amount?: int64,
    @query @doc("相关漫画id") comic_id?: int64,
    @query @doc("限定使用范围（漫画）") limits?: unknown[],
    @query @doc("(?)") discount?: int64,
    @query @doc("物品类型") product_type?: int64,
    @query @doc("(?)") pendant_url?: string,
    @query @doc("(?)") pendant_expire?: int64,
    @query @doc("兑换次数限制") exchange_limit?: int64,
    @query @doc("(?)") address_deadline?: string,
    @query @doc("(?)") act_type?: int64,
    @query @doc("是否兑换过该物品") has_exchanged?: boolean,
    @query @doc("兑换后使用截止时间") main_coupon_deadline?: string,
    @query @doc("兑换后使用截止时间") deadline?: string,
    @query @doc("(?)") point?: string,
  ): ApiResponse<unknown>;
}

/**
 * 兑换物品
 */
@route("/twirp/pointshop.v1.Pointshop/Exchange")
@tag("Manga")
interface 兑换物品 {
  @post
  @doc("兑换物品")
  兑换物品(
    @body @doc("物品id") product_id: string,
    @body @doc("兑换个数") product_num: int64,
    @body @doc("物品所需点数") point: int64,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
  ): ApiResponse<unknown>;
}

/**
 * 获取兑换历史记录
 */
@route("/twirp/activity.v1.Activity/GetPrizeList")
@tag("Manga")
interface 获取兑换历史记录 {
  @post
  @doc("获取兑换历史记录")
  获取兑换历史记录(
    @body @doc("固定值：90018") act_id: int64,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") msg?: string,
    @body @doc("信息本体") data?: Record<unknown>,
    @body @doc("兑换记录") prizes?: Record<unknown>,
    @body @doc("(?)") addr?: Record<unknown>,
    @body @doc("兑换id?") user_prize_id?: string,
    @body @doc("兑换的物品id") prize_id?: int64,
    @body @doc("兑换时间") ctime?: string,
    @body @doc("(?)") addr?: null,
    @body @doc("过期时间") deadline?: string,
    @body @doc("类型") type?: int64,
    @body @doc("物品名") name?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("兑换记录")
  prizes?: Record<unknown>;

  @doc("(?)")
  addr?: Record<unknown>;

}

/**
 * prizes 对象
 */
@doc("prizes 数据模型")
model Prizes {
  @doc("兑换id?")
  user_prize_id?: string;

  @doc("兑换的物品id")
  prize_id?: int64;

  @doc("兑换时间")
  ctime?: string;

  @doc("(?)")
  addr?: null;

  @doc("过期时间")
  deadline?: string;

  @doc("类型")
  type?: int64;

  @doc("物品名")
  name?: string;

}

/**
 * 获取玩法说明
 */
@route("/twirp/pointshop.v1.Pointshop/GetExchangeRule")
@tag("Manga")
interface 获取玩法说明 {
  @post
  @doc("获取玩法说明")
  获取玩法说明(
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") msg?: string,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("玩法说明") rule?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("玩法说明")
  rule?: string;

}
