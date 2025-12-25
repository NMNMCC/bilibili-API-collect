import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Vip;

/**
 * 卡券状态查询
 */
@route("/x/vip/privilege/my")
@tag("Vip")
interface 卡券状态查询 {
  @get
  @doc("卡券状态查询")
  卡券状态查询(
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("卡券信息列表") list?: unknown[],
    @query @doc("(?)") is_short_vip?: boolean,
    @query @doc("(?)") is_freight_open?: boolean,
    @query @doc("当前等级") level?: int64,
    @query @doc("当前拥有经验值") cur_exp?: int64,
    @query @doc("升级所需经验值") next_exp?: int64,
    @query @doc("是否为大会员") is_vip?: boolean,
    @query @doc("是否为硬核会员") is_senior_member?: int64,
    @query @doc("(?)") format060102?: int64,
    @query @doc("大会员是否过期") is_overdue_vip?: boolean,
    @query @doc("会员状态") vip_status?: int64,
    @query @doc("会员类型") vip_type?: int64,
    @query @doc("大会员当前阶段过期时间") keeptime_end?: int64,
    @query @doc("大会员过期时间") vip_due_date?: int64,
    @query @doc("是否为年度及以上大会员") vip_is_annual?: boolean,
    @query @doc("是否为月大会员") vip_is_month?: boolean,
    @query @doc("是否为大会员新用户") vip_is_new_user?: boolean,
    @query @doc("绑定的手机号") bind_phone?: string,
    @query @doc("绑定的淘宝账号") taobao_account?: unknown,
    @query @doc("内容") 索引?: unknown,
    @query @doc("B币兑换状态") field_0?: Record<unknown>,
    @query @doc("会员购优惠券兑换状态") field_1?: Record<unknown>,
    @query @doc("漫画福利券兑换状态") field_2?: Record<unknown>,
    @query @doc("会员购包邮券兑换状态") field_3?: Record<unknown>,
    @query @doc("漫画商城优惠券兑换状态") field_4?: Record<unknown>,
    @query @doc("装扮体验卡兑换状态") field_5?: Record<unknown>,
    @query @doc("课堂优惠券兑换状态") field_6?: Record<unknown>,
    @query @doc("（~~王者荣耀~~）游戏礼盒兑换状态") field_7?: Record<unknown>,
    @query @doc("每日 10 经验领取状态") field_8?: Record<unknown>,
    @query @doc("卡券类型") type?: int64,
    @query @doc("兑换状态") state?: int64,
    @query @doc("本轮卡券过期时间戳") expire_time?: int64,
    @query @doc("当前用户的大会员状态") vip_type?: int64,
    @query @doc("距下一轮兑换剩余天数") next_receive_days?: int64,
    @query @doc("下一轮兑换开始时间戳") period_end_unix?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("卡券信息列表")
  list?: unknown[];

  @doc("(?)")
  is_short_vip?: boolean;

  @doc("(?)")
  is_freight_open?: boolean;

  @doc("当前等级")
  level?: int64;

  @doc("当前拥有经验值")
  cur_exp?: int64;

  @doc("升级所需经验值")
  next_exp?: int64;

  @doc("是否为大会员")
  is_vip?: boolean;

  @doc("是否为硬核会员")
  is_senior_member?: int64;

  @doc("(?)")
  format060102?: int64;

  @doc("大会员是否过期")
  is_overdue_vip?: boolean;

  @doc("会员状态")
  vip_status?: int64;

  @doc("会员类型")
  vip_type?: int64;

  @doc("大会员当前阶段过期时间")
  keeptime_end?: int64;

  @doc("大会员过期时间")
  vip_due_date?: int64;

  @doc("是否为年度及以上大会员")
  vip_is_annual?: boolean;

  @doc("是否为月大会员")
  vip_is_month?: boolean;

  @doc("是否为大会员新用户")
  vip_is_new_user?: boolean;

  @doc("绑定的手机号")
  bind_phone?: string;

  @doc("绑定的淘宝账号")
  taobao_account?: unknown;

  @doc("内容")
  索引?: unknown;

  @doc("B币兑换状态")
  field_0?: Record<unknown>;

  @doc("会员购优惠券兑换状态")
  field_1?: Record<unknown>;

  @doc("漫画福利券兑换状态")
  field_2?: Record<unknown>;

  @doc("会员购包邮券兑换状态")
  field_3?: Record<unknown>;

  @doc("漫画商城优惠券兑换状态")
  field_4?: Record<unknown>;

  @doc("装扮体验卡兑换状态")
  field_5?: Record<unknown>;

  @doc("课堂优惠券兑换状态")
  field_6?: Record<unknown>;

  @doc("（~~王者荣耀~~）游戏礼盒兑换状态")
  field_7?: Record<unknown>;

  @doc("每日 10 经验领取状态")
  field_8?: Record<unknown>;

  @doc("卡券类型")
  type?: int64;

  @doc("兑换状态")
  state?: int64;

  @doc("本轮卡券过期时间戳")
  expire_time?: int64;

  @doc("当前用户的大会员状态")
  vip_type?: int64;

  @doc("距下一轮兑换剩余天数")
  next_receive_days?: int64;

  @doc("下一轮兑换开始时间戳")
  period_end_unix?: int64;

}
