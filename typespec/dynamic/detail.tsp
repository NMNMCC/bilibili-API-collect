import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Dynamic;

/**
 * 动态详情
 */
@route("/x/polymer/web-dynamic/v1/detail")
@tag("Dynamic")
interface 动态详情 {
  @get
  @doc("动态详情")
  动态详情(
    @query @doc("动态 ID") id: int64,
    @query @doc("-480") timezone_offset: int64,
    @query @doc("平台") platform: string,
    @query @doc("来源") gaia_source: string,
    @query @doc("功能") features: string,
    @query @doc("`333.1368`") web_location: string,
    @query @doc("设备信息?") x_bili_device_req_json: Record<unknown>,
    @query @doc("请求信息?") x_bili_web_req_json: Record<unknown>,
    @query @doc("Wbi 签名") w_rid: string,
    @query @doc("UNIX 秒级时间戳") wts: int64,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("响应码") code?: int64,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("内容") 字段名?: unknown,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
}

/**
 * data.item 对象
 */
@doc("data.item 数据模型")
model Dataitem {
}

/**
 * 动态赞与转发列表
 */
@route("/x/polymer/web-dynamic/v1/detail/reaction")
@tag("Dynamic")
interface 动态赞与转发列表 {
  @get
  @doc("动态赞与转发列表")
  动态赞与转发列表(
    @query @doc("动态 id") id: int64,
    @query @doc("偏移量") offset: Record<unknown>,
    @query @doc("333.1369") web_location: string,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("是否有更多") has_more?: boolean,
    @query @doc("赞与转发列表") items?: unknown[],
    @query @doc("偏移量") offset?: string,
    @query @doc("总数") total?: int64,
    @query @doc("操作类型") action?: string,
    @query @doc("参与数") attend?: int64,
    @query @doc("描述") desc?: string,
    @query @doc("头像 URL") face?: string,
    @query @doc("用户 mid") mid?: int64,
    @query @doc("用户名") name?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("是否有更多")
  has_more?: boolean;

  @doc("赞与转发列表")
  items?: unknown[];

  @doc("偏移量")
  offset?: string;

  @doc("总数")
  total?: int64;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("操作类型")
  action?: string;

  @doc("参与数")
  attend?: int64;

  @doc("描述")
  desc?: string;

  @doc("头像 URL")
  face?: string;

  @doc("用户 mid")
  mid?: int64;

  @doc("用户名")
  name?: string;

}

/**
 * 动态抽奖详情
 */
@route("/lottery_svr/v1/lottery_svr/lottery_notice")
@tag("Dynamic")
interface 动态抽奖详情 {
  @get
  @doc("动态抽奖详情")
  动态抽奖详情(
    @query @doc("动态 id") business_id: int64,
    @query @doc("业务类型?") bussiness_type: int64,
    @query @doc("CSRF Token (即 Cookie 中 bili_jct 字段)") csrf: string,
    @query @doc("333.1330") web_location: string,
    @query @doc("动态 id") dynamic_id: int64,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("-") _?: unknown,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("错误信息") msg?: string,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("-") _?: unknown,
    @query @doc("抽奖 id") lottery_id?: int64,
    @query @doc("发送者 mid") sender_uid?: int64,
    @query @doc("业务类型") business_type?: int64,
    @query @doc("业务 id") business_id?: int64,
    @query @doc("抽奖状态") status?: int64,
    @query @doc("开奖时间") lottery_time?: int64,
    @query @doc("at 人数?") lottery_at_num?: int64,
    @query @doc("转发限制?") lottery_feed_limit?: int64,
    @query @doc("是否需要发布?") need_post?: int64,
    @query @doc("支付状态?") pay_status?: int64,
    @query @doc("一等奖数量") first_prize?: int64,
    @query @doc("二等奖数量") second_prize?: int64,
    @query @doc("三等奖数量") third_prize?: int64,
    @query @doc("发布时间") ts?: int64,
    @query @doc("参与人数") participants?: int64,
    @query @doc("是否有充值权?") has_charge_right?: boolean,
    @query @doc("是否参与过?") participated?: boolean,
    @query @doc("是否关注过") followed?: boolean,
    @query @doc("是否转发过") reposted?: boolean,
    @query @doc("抽奖详情页 URL?") lottery_detail_url?: string,
    @query @doc("一等奖奖品名称") first_prize_cmt?: string,
    @query @doc("三等奖奖品名称") third_prize_cmt?: string,
    @query @doc("一等奖奖品图片 URL") first_prize_pic?: string,
    @query @doc("二等奖奖品图片 URL") second_prize_pic?: string,
    @query @doc("三等奖奖品图片 URL") third_prize_pic?: string,
    @query @doc("？") vip_batch_sign?: string,
    @query @doc("一等奖奖品类型") prize_type_first?: Record<unknown>,
    @query @doc("二等奖奖品类型") prize_type_second?: Record<unknown>,
    @query @doc("三等奖奖品类型") prize_type_third?: Record<unknown>,
    @query @doc("抽奖结果") lottery_result?: Record<unknown>,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("-") _?: unknown,
    @query @doc("奖品类型?") type?: int64,
    @query @doc("奖品价值?") value?: Record<unknown>,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("-") _?: unknown,
    @query @doc("子奖品类型?") stype?: int64,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("-") _?: unknown,
    @query @doc("一等奖结果") first_prize_result?: unknown[],
    @query @doc("二等奖结果") second_prize_result?: unknown[],
    @query @doc("三等奖结果") third_prize_result?: unknown[],
    @query @doc("内容") 项名?: unknown,
    @query @doc("-") _?: unknown,
    @query @doc("中奖者 mid") uid?: int64,
    @query @doc("中奖者名称") name?: string,
    @query @doc("中奖者头像 URL") face?: string,
    @query @doc("奖品金额?") hongbao_money?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("-")
  _?: unknown;

  @doc("抽奖 id")
  lottery_id?: int64;

  @doc("发送者 mid")
  sender_uid?: int64;

  @doc("业务类型")
  business_type?: int64;

  @doc("业务 id")
  business_id?: int64;

  @doc("抽奖状态")
  status?: int64;

  @doc("开奖时间")
  lottery_time?: int64;

  @doc("at 人数?")
  lottery_at_num?: int64;

  @doc("转发限制?")
  lottery_feed_limit?: int64;

  @doc("是否需要发布?")
  need_post?: int64;

  @doc("支付状态?")
  pay_status?: int64;

  @doc("一等奖数量")
  first_prize?: int64;

  @doc("二等奖数量")
  second_prize?: int64;

  @doc("三等奖数量")
  third_prize?: int64;

  @doc("发布时间")
  ts?: int64;

  @doc("参与人数")
  participants?: int64;

  @doc("是否有充值权?")
  has_charge_right?: boolean;

  @doc("是否参与过?")
  participated?: boolean;

  @doc("是否关注过")
  followed?: boolean;

  @doc("是否转发过")
  reposted?: boolean;

  @doc("抽奖详情页 URL?")
  lottery_detail_url?: string;

  @doc("一等奖奖品名称")
  first_prize_cmt?: string;

  @doc("三等奖奖品名称")
  third_prize_cmt?: string;

  @doc("一等奖奖品图片 URL")
  first_prize_pic?: string;

  @doc("二等奖奖品图片 URL")
  second_prize_pic?: string;

  @doc("三等奖奖品图片 URL")
  third_prize_pic?: string;

  @doc("？")
  vip_batch_sign?: string;

  @doc("一等奖奖品类型")
  prize_type_first?: Record<unknown>;

  @doc("二等奖奖品类型")
  prize_type_second?: Record<unknown>;

  @doc("三等奖奖品类型")
  prize_type_third?: Record<unknown>;

  @doc("抽奖结果")
  lottery_result?: Record<unknown>;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("-")
  _?: unknown;

  @doc("奖品类型?")
  type?: int64;

  @doc("奖品价值?")
  value?: Record<unknown>;

}

/**
 * prize_type_first 对象
 */
@doc("prize_type_first 数据模型")
model Prize_type_first {
  @doc("-")
  _?: unknown;

  @doc("子奖品类型?")
  stype?: int64;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("-")
  _?: unknown;

  @doc("一等奖结果")
  first_prize_result?: unknown[];

  @doc("二等奖结果")
  second_prize_result?: unknown[];

  @doc("三等奖结果")
  third_prize_result?: unknown[];

}

/**
 * lottery_result 对象
 */
@doc("lottery_result 数据模型")
model Lottery_result {
  @doc("内容")
  项名?: unknown;

  @doc("-")
  _?: unknown;

  @doc("中奖者 mid")
  uid?: int64;

  @doc("中奖者名称")
  name?: string;

  @doc("中奖者头像 URL")
  face?: string;

  @doc("奖品金额?")
  hongbao_money?: int64;

}

/**
 * lottery_result 对象
 */
@doc("lottery_result 数据模型")
model Lottery_result {
}

/**
 * lottery_result 对象
 */
@doc("lottery_result 数据模型")
model Lottery_result {
}

/**
 * 动态转发列表
 */
@route("/x/polymer/web-dynamic/v1/detail/forward")
@tag("Dynamic")
interface 动态转发列表 {
  @get
  @doc("动态转发列表")
  动态转发列表(
    @query @doc("动态 id") id: int64,
    @query @doc("偏移") offset: string,
    @query @doc("返回值") code?: int64,
    @query @doc("数据本体") data?: Record<unknown>,
    @query @doc("错误信息") message?: string,
    @query @doc("`1`") ttl?: int64,
    @query @doc("是否有更多数据") has_more?: boolean,
    @query @doc("转发列表") items?: unknown,
    @query @doc("下一页偏移") offset?: string,
    @query @doc("总数") total?: int64,
    @query @doc("描述") desc?: Record<unknown>,
    @query @doc("进行转发的动态 id") id_str?: string,
    @query @doc("发布时间") pub_time?: string,
    @query @doc("用户") user?: Record<unknown>,
    @query @doc("富文本节点") rich_text_nodes?: unknown,
    @query @doc("纯文本") text?: string,
    @query @doc("头像 URL") face?: string,
    @query @doc("是否为 NFT 头像") face_nft?: boolean,
    @query @doc("用户 mid (UID)") mid?: int64,
    @query @doc("用户名") name?: string,
    @query @doc("认证信息") official?: Record<unknown>,
    @query @doc("装扮信息") pendant?: Record<unknown>,
    @query @doc("大会员信息") vip?: Record<unknown>,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("是否有更多数据")
  has_more?: boolean;

  @doc("转发列表")
  items?: unknown;

  @doc("下一页偏移")
  offset?: string;

  @doc("总数")
  total?: int64;

}

/**
 * data.items[] 对象
 */
@doc("data.items[] 数据模型")
model Dataitems {
  @doc("描述")
  desc?: Record<unknown>;

  @doc("进行转发的动态 id")
  id_str?: string;

  @doc("发布时间")
  pub_time?: string;

  @doc("用户")
  user?: Record<unknown>;

}

/**
 * data.items[].desc 对象
 */
@doc("data.items[].desc 数据模型")
model Dataitemsdesc {
  @doc("富文本节点")
  rich_text_nodes?: unknown;

  @doc("纯文本")
  text?: string;

}

/**
 * data.items[].user 对象
 */
@doc("data.items[].user 数据模型")
model Dataitemsuser {
  @doc("头像 URL")
  face?: string;

  @doc("是否为 NFT 头像")
  face_nft?: boolean;

  @doc("用户 mid (UID)")
  mid?: int64;

  @doc("用户名")
  name?: string;

  @doc("认证信息")
  official?: Record<unknown>;

  @doc("装扮信息")
  pendant?: Record<unknown>;

  @doc("大会员信息")
  vip?: Record<unknown>;

}

/**
 * data.items[].user.official 对象
 */
@doc("data.items[].user.official 数据模型")
model Dataitemsuserofficial {
}

/**
 * data.items[].user.pendant 对象
 */
@doc("data.items[].user.pendant 数据模型")
model Dataitemsuserpendant {
}

/**
 * data.items[].user.vip 对象
 */
@doc("data.items[].user.vip 数据模型")
model Dataitemsuservip {
}

/**
 * data.items[].user.vip.avatar_icon 对象
 */
@doc("data.items[].user.vip.avatar_icon 数据模型")
model Dataitemsuservipavatar_icon {
}

/**
 * data.items[].user.vip.avatar_icon.icon_resource 对象
 */
@doc("data.items[].user.vip.avatar_icon.icon_resource 数据模型")
model Dataitemsuservipavatar_iconicon_resource {
}

/**
 * data.items[].user.vip.label 对象
 */
@doc("data.items[].user.vip.label 数据模型")
model Dataitemsuserviplabel {
}

/**
 * 获取动态中图片
 */
@route("/x/polymer/web-dynamic/v1/detail/pic")
@tag("Dynamic")
interface 获取动态中图片 {
  @get
  @doc("获取动态中图片")
  获取动态中图片(
    @query @doc("动态 id") id: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("数据本体") data?: unknown,
    @query @doc("错误信息") message?: string,
    @query @doc("`1`") ttl?: int64,
    @query @doc("图片高度") height?: int64,
    @query @doc("图片大小") size?: int64,
    @query @doc("图片 URL") src?: string,
    @query @doc("图片宽度") width?: int64,
  ): ApiResponse<Data>;
}

/**
 * data[] 对象
 */
@doc("data[] 数据模型")
model DataModel {
  @doc("图片高度")
  height?: int64;

  @doc("图片大小")
  size?: int64;

  @doc("图片 URL")
  src?: string;

  @doc("图片宽度")
  width?: int64;

}

/**
 * 获取转发动态信息
 */
@route("/x/polymer/web-dynamic/v1/detail/forward/item")
@tag("Dynamic")
interface 获取转发动态信息 {
  @get
  @doc("获取转发动态信息")
  获取转发动态信息(
    @query @doc("动态 id") id: int64,
    @query @doc("时区偏移") timezone_offset: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("数据本体") data?: Record<unknown>,
    @query @doc("错误信息") message?: string,
    @query @doc("`1`") ttl?: int64,
    @query @doc("动态信息") item?: Record<unknown>,
    @query @doc("动态内容") desc?: Record<unknown>,
    @query @doc("动态 id 字符串") id_str?: string,
    @query @doc("发布时间") pub_time?: string,
    @query @doc("发布用户信息") user?: Record<unknown>,
    @query @doc("富文本节点") rich_text_nodes?: unknown,
    @query @doc("纯文本内容") text?: string,
    @query @doc("头像 URL") face?: string,
    @query @doc("用户 mid (UID)") mid?: int64,
    @query @doc("用户名") name?: string,
    @query @doc("认证信息") official?: Record<unknown>,
    @query @doc("装扮信息") pendant?: Record<unknown>,
    @query @doc("大会员信息") vip?: Record<unknown>,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("动态信息")
  item?: Record<unknown>;

}

/**
 * data.item 对象
 */
@doc("data.item 数据模型")
model Dataitem {
  @doc("动态内容")
  desc?: Record<unknown>;

  @doc("动态 id 字符串")
  id_str?: string;

  @doc("发布时间")
  pub_time?: string;

  @doc("发布用户信息")
  user?: Record<unknown>;

}

/**
 * data.item.desc 对象
 */
@doc("data.item.desc 数据模型")
model Dataitemdesc {
  @doc("富文本节点")
  rich_text_nodes?: unknown;

  @doc("纯文本内容")
  text?: string;

}

/**
 * data.item.user 对象
 */
@doc("data.item.user 数据模型")
model Dataitemuser {
  @doc("头像 URL")
  face?: string;

  @doc("用户 mid (UID)")
  mid?: int64;

  @doc("用户名")
  name?: string;

  @doc("认证信息")
  official?: Record<unknown>;

  @doc("装扮信息")
  pendant?: Record<unknown>;

  @doc("大会员信息")
  vip?: Record<unknown>;

}

/**
 * data.item.user.official 对象
 */
@doc("data.item.user.official 数据模型")
model Dataitemuserofficial {
}

/**
 * data.item.user.pendant 对象
 */
@doc("data.item.user.pendant 数据模型")
model Dataitemuserpendant {
}

/**
 * data.item.user.vip 对象
 */
@doc("data.item.user.vip 数据模型")
model Dataitemuservip {
}

/**
 * data.item.user.vip.avatar_icon 对象
 */
@doc("data.item.user.vip.avatar_icon 数据模型")
model Dataitemuservipavatar_icon {
}

/**
 * data.item.user.vip.avatar_icon.icon_resource 对象
 */
@doc("data.item.user.vip.avatar_icon.icon_resource 数据模型")
model Dataitemuservipavatar_iconicon_resource {
}

/**
 * data.item.user.vip.label 对象
 */
@doc("data.item.user.vip.label 数据模型")
model Dataitemuserviplabel {
}
