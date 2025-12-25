import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Cheese;

/**
 * 获取课程基本信息
 */
@route("/pugv/view/web/season")
@tag("Cheese")
interface 获取课程基本信息 {
  @get
  @doc("获取课程基本信息")
  获取课程基本信息(
    @query @doc("课程ssid") season_id: int64,
    @query @doc("课程epid") ep_id: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("课程概述信息") brief?: Record<unknown>,
    @query @doc("优惠信息") coupon?: Record<unknown>,
    @query @doc("课程封面url") cover?: string,
    @query @doc("课程分集信息") episode_page?: Record<unknown>,
    @query @doc("1") episode_sort?: int64,
    @query @doc("课程分集列表") episodes?: unknown[],
    @query @doc("常见问题信息1") faq?: Record<unknown>,
    @query @doc("常见问题信息2") faq1?: Record<unknown>,
    @query @doc("付费信息") payment?: Record<unknown>,
    @query @doc("购买须知信息") purchase_note?: Record<unknown>,
    @query @doc("付费内容协议信息") purchase_protocol?: Record<unknown>,
    @query @doc("底部更新状态文字") release_bottom_info?: string,
    @query @doc("更新状态文字+更新连载状态文字") release_info?: string,
    @query @doc("更新连载状态文字") release_info2?: string,
    @query @doc("更新状态文字") release_status?: string,
    @query @doc("课程ssid") season_id?: int64,
    @query @doc("页面url") share_url?: string,
    @query @doc("bilibili uri链接") short_link?: string,
    @query @doc("播放数信息") stat?: Record<unknown>,
    @query @doc("10") status?: int64,
    @query @doc("课程简介信息") subtitle?: string,
    @query @doc("课程标题") title?: string,
    @query @doc("UP主信息") up_info?: Record<unknown>,
    @query @doc("用户状态信息") user_status?: Record<unknown>,
    @query @doc("空") content?: string,
    @query @doc("简介图片") img?: unknown[],
    @query @doc("课程概述") title?: string,
    @query @doc("2") type?: int64,
    @query @doc("内容") 项?: unknown,
    @query @doc("简介图片1") field_0?: Record<unknown>,
    @query @doc("简介图片（n+1）") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("？？？") aspect_ratio?: int64,
    @query @doc("简介图片url") url?: string,
    @query @doc("折扣乘数") amount?: int64,
    @query @doc("结束时间") expire_time?: string,
    @query @doc("起始时间") start_time?: string,
    @query @doc("？？？") status?: int64,
    @query @doc("优惠标题") title?: string,
    @query @doc("领取token") token?: string,
    @query @doc("false") next?: boolean,
    @query @doc("1") num?: int64,
    @query @doc("总计集数") size?: int64,
    @query @doc("总计集数") total?: int64,
    @query @doc("内容") 项?: unknown,
    @query @doc("课程分集1") field_0?: Record<unknown>,
    @query @doc("课程分集（n+1）") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("课程分集avid") aid?: int64,
    @query @doc("课程分集cid") cid?: int64,
    @query @doc("课程分集时间长度") duration?: int64,
    @query @doc("pugv") from?: string,
    @query @doc("课程分集epid") id?: int64,
    @query @doc("课程分集数") index?: int64,
    @query @doc("1") page?: int64,
    @query @doc("课程分集播放量") play?: int64,
    @query @doc("课程分集发布时间") release_date?: int64,
    @query @doc("分集权限属性") status?: int64,
    @query @doc("课程分集标题") title?: string,
    @query @doc("是否观看该集") watched?: boolean,
    @query @doc("该集观看历史") watchedHistory?: int64,
    @query @doc("常见问题信息") content?: string,
    @query @doc("常见问题页面url") link?: string,
    @query @doc("常见问题") title?: string,
    @query @doc("常见问题列表") items?: unknown[],
    @query @doc("常见问题") title?: string,
    @query @doc("内容") 项?: unknown,
    @query @doc("常见问题1") field_0?: Record<unknown>,
    @query @doc("常见问题（n+1）") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("回答信息") answer?: string,
    @query @doc("问题信息") question?: string,
    @query @doc("付费价格说明") desc?: string,
    @query @doc("折扣说明信息") discount_desc?: string,
    @query @doc("折扣类型前缀") discount_prefix?: string,
    @query @doc("观看所有视频付费说明") pay_shade?: string,
    @query @doc("课程价格") price?: int64,
    @query @doc("课程价格") price_format?: string,
    @query @doc("购买须知信息文字内容") content?: string,
    @query @doc("购买须知页面url") link?: string,
    @query @doc("购买须知") title?: string,
    @query @doc("付费内容协议页面url") link?: string,
    @query @doc("付费内容协议") title?: string,
    @query @doc("播放量") play?: int64,
    @query @doc("播放量文字信息") play_desc?: string,
    @query @doc("UP主头像url") avatar?: string,
    @query @doc("UP主备注") brief?: string,
    @query @doc("UP主粉丝数") follower?: int64,
    @query @doc("是否关注UP主") is_follow?: int64,
    @query @doc("UP主空间url") link?: string,
    @query @doc("UP主uid") mid?: int64,
    @query @doc("???") pendant?: Record<unknown>,
    @query @doc("UP主昵称") uname?: string,
    @query @doc("空") image?: string,
    @query @doc("空") name?: string,
    @query @doc("0") follower?: int64,
    @query @doc("是否收藏") favored?: int64,
    @query @doc("1") favored_count?: int64,
    @query @doc("是否购买") payed?: int64,
    @query @doc("课程进度") progress?: Record<unknown>,
    @query @doc("最后观看的epid") last_ep_id?: int64,
    @query @doc("最后观看的标题") last_ep_index?: string,
    @query @doc("最后观看的时间进度") last_time?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("课程概述信息")
  brief?: Record<unknown>;

  @doc("优惠信息")
  coupon?: Record<unknown>;

  @doc("课程封面url")
  cover?: string;

  @doc("课程分集信息")
  episode_page?: Record<unknown>;

  @doc("1")
  episode_sort?: int64;

  @doc("课程分集列表")
  episodes?: unknown[];

  @doc("常见问题信息1")
  faq?: Record<unknown>;

  @doc("常见问题信息2")
  faq1?: Record<unknown>;

  @doc("付费信息")
  payment?: Record<unknown>;

  @doc("购买须知信息")
  purchase_note?: Record<unknown>;

  @doc("付费内容协议信息")
  purchase_protocol?: Record<unknown>;

  @doc("底部更新状态文字")
  release_bottom_info?: string;

  @doc("更新状态文字+更新连载状态文字")
  release_info?: string;

  @doc("更新连载状态文字")
  release_info2?: string;

  @doc("更新状态文字")
  release_status?: string;

  @doc("课程ssid")
  season_id?: int64;

  @doc("页面url")
  share_url?: string;

  @doc("bilibili uri链接")
  short_link?: string;

  @doc("播放数信息")
  stat?: Record<unknown>;

  @doc("10")
  status?: int64;

  @doc("课程简介信息")
  subtitle?: string;

  @doc("课程标题")
  title?: string;

  @doc("UP主信息")
  up_info?: Record<unknown>;

  @doc("用户状态信息")
  user_status?: Record<unknown>;

}

/**
 * brief 对象
 */
@doc("brief 数据模型")
model Brief {
  @doc("空")
  content?: string;

  @doc("简介图片")
  img?: unknown[];

  @doc("课程概述")
  title?: string;

  @doc("2")
  type?: int64;

  @doc("内容")
  项?: unknown;

  @doc("简介图片1")
  field_0?: Record<unknown>;

  @doc("简介图片（n+1）")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("？？？")
  aspect_ratio?: int64;

  @doc("简介图片url")
  url?: string;

}

/**
 * coupon 对象
 */
@doc("coupon 数据模型")
model Coupon {
  @doc("折扣乘数")
  amount?: int64;

  @doc("结束时间")
  expire_time?: string;

  @doc("起始时间")
  start_time?: string;

  @doc("？？？")
  status?: int64;

  @doc("优惠标题")
  title?: string;

  @doc("领取token")
  token?: string;

}

/**
 * episode_page 对象
 */
@doc("episode_page 数据模型")
model Episode_page {
  @doc("false")
  next?: boolean;

  @doc("1")
  num?: int64;

  @doc("总计集数")
  size?: int64;

  @doc("总计集数")
  total?: int64;

  @doc("内容")
  项?: unknown;

  @doc("课程分集1")
  field_0?: Record<unknown>;

  @doc("课程分集（n+1）")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("课程分集avid")
  aid?: int64;

  @doc("课程分集cid")
  cid?: int64;

  @doc("课程分集时间长度")
  duration?: int64;

  @doc("pugv")
  from?: string;

  @doc("课程分集epid")
  id?: int64;

  @doc("课程分集数")
  index?: int64;

  @doc("1")
  page?: int64;

  @doc("课程分集播放量")
  play?: int64;

  @doc("课程分集发布时间")
  release_date?: int64;

  @doc("分集权限属性")
  status?: int64;

  @doc("课程分集标题")
  title?: string;

  @doc("是否观看该集")
  watched?: boolean;

  @doc("该集观看历史")
  watchedHistory?: int64;

}

/**
 * faq 对象
 */
@doc("faq 数据模型")
model Faq {
  @doc("常见问题信息")
  content?: string;

  @doc("常见问题页面url")
  link?: string;

  @doc("常见问题")
  title?: string;

}

/**
 * faq1 对象
 */
@doc("faq1 数据模型")
model Faq1 {
  @doc("常见问题列表")
  items?: unknown[];

  @doc("常见问题")
  title?: string;

  @doc("内容")
  项?: unknown;

  @doc("常见问题1")
  field_0?: Record<unknown>;

  @doc("常见问题（n+1）")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("回答信息")
  answer?: string;

  @doc("问题信息")
  question?: string;

}

/**
 * payment 对象
 */
@doc("payment 数据模型")
model Payment {
  @doc("付费价格说明")
  desc?: string;

  @doc("折扣说明信息")
  discount_desc?: string;

  @doc("折扣类型前缀")
  discount_prefix?: string;

  @doc("观看所有视频付费说明")
  pay_shade?: string;

  @doc("课程价格")
  price?: int64;

  @doc("课程价格")
  price_format?: string;

}

/**
 * purchase_note 对象
 */
@doc("purchase_note 数据模型")
model Purchase_note {
  @doc("购买须知信息文字内容")
  content?: string;

  @doc("购买须知页面url")
  link?: string;

  @doc("购买须知")
  title?: string;

}

/**
 * purchase_protocol 对象
 */
@doc("purchase_protocol 数据模型")
model Purchase_protocol {
  @doc("付费内容协议页面url")
  link?: string;

  @doc("付费内容协议")
  title?: string;

}

/**
 * stat 对象
 */
@doc("stat 数据模型")
model Stat {
  @doc("播放量")
  play?: int64;

  @doc("播放量文字信息")
  play_desc?: string;

}

/**
 * up_info 对象
 */
@doc("up_info 数据模型")
model Up_info {
  @doc("UP主头像url")
  avatar?: string;

  @doc("UP主备注")
  brief?: string;

  @doc("UP主粉丝数")
  follower?: int64;

  @doc("是否关注UP主")
  is_follow?: int64;

  @doc("UP主空间url")
  link?: string;

  @doc("UP主uid")
  mid?: int64;

  @doc("???")
  pendant?: Record<unknown>;

  @doc("UP主昵称")
  uname?: string;

}

/**
 * pendant 对象
 */
@doc("pendant 数据模型")
model Pendant {
  @doc("空")
  image?: string;

  @doc("空")
  name?: string;

  @doc("0")
  follower?: int64;

}

/**
 * user_status 对象
 */
@doc("user_status 数据模型")
model User_status {
  @doc("是否收藏")
  favored?: int64;

  @doc("1")
  favored_count?: int64;

  @doc("是否购买")
  payed?: int64;

  @doc("课程进度")
  progress?: Record<unknown>;

}

/**
 * progress 对象
 */
@doc("progress 数据模型")
model Progress {
  @doc("最后观看的epid")
  last_ep_id?: int64;

  @doc("最后观看的标题")
  last_ep_index?: string;

  @doc("最后观看的时间进度")
  last_time?: int64;

}

/**
 * 获取课程分集列表
 */
@route("/pugv/view/web/ep/list")
@tag("Cheese")
interface 获取课程分集列表 {
  @get
  @doc("获取课程分集列表")
  获取课程分集列表(
    @query @doc("课程ssid") season_id: int64,
    @query @doc("每页项数") ps: int64,
    @query @doc("页码") pn: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("课程分集列表") items?: unknown[],
    @query @doc("列表分页信息") page?: Record<unknown>,
    @query @doc("内容") 项?: unknown,
    @query @doc("课程分集1") field_0?: Record<unknown>,
    @query @doc("课程分集（n+1）") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("课程分集avid") aid?: int64,
    @query @doc("课程分集cid") cid?: int64,
    @query @doc("课程分集时间长度") duration?: int64,
    @query @doc("pugv") from?: string,
    @query @doc("课程分集epid") id?: int64,
    @query @doc("课程分集数") index?: int64,
    @query @doc("1") page?: int64,
    @query @doc("课程分集播放量") play?: int64,
    @query @doc("课程分集发布时间") release_date?: int64,
    @query @doc("分集权限属性") status?: int64,
    @query @doc("课程分集标题") title?: string,
    @query @doc("是否观看该集") watched?: boolean,
    @query @doc("该集观看历史") watchedHistory?: int64,
    @query @doc("是否存在下一页") next?: boolean,
    @query @doc("当前页码") num?: int64,
    @query @doc("每页项数") size?: int64,
    @query @doc("总价项数") total?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("课程分集列表")
  items?: unknown[];

  @doc("列表分页信息")
  page?: Record<unknown>;

  @doc("内容")
  项?: unknown;

  @doc("课程分集1")
  field_0?: Record<unknown>;

  @doc("课程分集（n+1）")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("课程分集avid")
  aid?: int64;

  @doc("课程分集cid")
  cid?: int64;

  @doc("课程分集时间长度")
  duration?: int64;

  @doc("pugv")
  from?: string;

  @doc("课程分集epid")
  id?: int64;

  @doc("课程分集数")
  index?: int64;

  @doc("1")
  page?: int64;

  @doc("课程分集播放量")
  play?: int64;

  @doc("课程分集发布时间")
  release_date?: int64;

  @doc("分集权限属性")
  status?: int64;

  @doc("课程分集标题")
  title?: string;

  @doc("是否观看该集")
  watched?: boolean;

  @doc("该集观看历史")
  watchedHistory?: int64;

}

/**
 * page 对象
 */
@doc("page 数据模型")
model Page {
  @doc("是否存在下一页")
  next?: boolean;

  @doc("当前页码")
  num?: int64;

  @doc("每页项数")
  size?: int64;

  @doc("总价项数")
  total?: int64;

}
