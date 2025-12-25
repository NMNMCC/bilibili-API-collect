import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Manga;

/**
 * 获取拥有的漫读券列表
 */
@route("/twirp/user.v1.User/GetCoupons")
@tag("Manga")
interface 获取拥有的漫读券列表 {
  @post
  @doc("获取拥有的漫读券列表")
  获取拥有的漫读券列表(
    @query @doc("APP登录凭证") access_key: string,
    @body @doc("页数") pageNum: int64,
    @body @doc("分页大小") pageSize: int64,
    @body @doc("true") notExpired: boolean,
    @body @doc("1") tabType: int64,
    @body @doc("0") type: int64,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") msg?: string,
    @body @doc("漫读券id") ID?: int64,
    @body @doc("漫读券剩余数") remain_amount?: int64,
    @body @doc("过期时间") expire_time?: int64,
    @body @doc("获取方式") reason?: int64,
    @body @doc("类型") type?: int64,
    @body @doc("获取时间") ctime?: int64,
    @body @doc("漫读券总数") total_amount?: int64,
    @body @doc("(?)") limits?: unknown[],
    @body @doc("7：福利券") type_num?: int64,
    @body @doc("是否即将过期？<br />0：否<br />1：是") will_expire?: int64,
    @body @doc("0") discount?: int64,
    @body @doc("0") discount_limit?: int64,
    @body @doc("0") is_from_card?: int64,
    @body @doc("0001-01-01") valid_time?: string,
    @body @doc("0") discount_base?: int64,
    @body @doc("拥有的漫读券数量") remain_coupon?: int64,
    @body @doc("拥有的通用券数量") remain_silver?: int64,
    @body @doc("拥有的商城优惠券数量") remain_shop_coupon?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("漫读券id")
  ID?: int64;

  @doc("漫读券剩余数")
  remain_amount?: int64;

  @doc("过期时间")
  expire_time?: int64;

  @doc("获取方式")
  reason?: int64;

  @doc("类型")
  type?: int64;

  @doc("获取时间")
  ctime?: int64;

  @doc("漫读券总数")
  total_amount?: int64;

  @doc("(?)")
  limits?: unknown[];

  @doc("7：福利券")
  type_num?: int64;

  @doc("是否即将过期？<br />0：否<br />1：是")
  will_expire?: int64;

  @doc("0")
  discount?: int64;

  @doc("0")
  discount_limit?: int64;

  @doc("0")
  is_from_card?: int64;

  @doc("0001-01-01")
  valid_time?: string;

  @doc("0")
  discount_base?: int64;

}

/**
 * coupon_info 对象
 */
@doc("coupon_info 数据模型")
model Coupon_info {
  @doc("拥有的漫读券数量")
  remain_coupon?: int64;

  @doc("拥有的通用券数量")
  remain_silver?: int64;

  @doc("拥有的商城优惠券数量")
  remain_shop_coupon?: int64;

}

/**
 * 获取已购漫画
 */
@route("/twirp/user.v1.User/GetAutoBuyComics")
@tag("Manga")
interface 获取已购漫画 {
  @post
  @doc("获取已购漫画")
  获取已购漫画(
    @query @doc("设备") device: string,
    @query @doc("平台") platform: string,
    @body @doc("页数") page_num: int64,
    @body @doc("分页大小") page_size: int64,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") msg?: string,
    @body @doc("内部id") id?: int64,
    @body @doc("漫画id") comic_id?: string,
    @body @doc("漫画标题") comic_title?: string,
    @body @doc("横版头图") hcover?: string,
    @body @doc("方形头图") scover?: string,
    @body @doc("竖版封面图") vcover?: string,
    @body @doc("已购章节数") bought_ep_count?: int64,
    @body @doc("漫画状态") comic_status?: int64,
    @body @doc("最后一话") last_ord?: int64,
    @body @doc("获取时间") ctime?: string,
    @body @doc("最后一话的短标题") last_short_title?: string,
    @body @doc("购买类型") bug_type?: int64,
    @body @doc("自动扣费顺序") orders?: Record<unknown>,
    @body @doc("是否开启自动付费") enable_auto_pay?: boolean,
  ): ApiResponse<unknown>;
}
