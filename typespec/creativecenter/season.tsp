import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Creativecenter;

/**
 * 获取合集列表
 */
@route("/x2/creative/web/seasons")
@tag("Creativecenter")
interface 获取合集列表 {
  @get
  @doc("获取合集列表")
  获取合集列表(
    @query @doc("页码") pn: int64,
    @query @doc("每页数量") ps: int64,
    @query @doc("排序方式") order: string,
    @query @doc("排序方式") sort: string,
    @query @doc("1") draft: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("合集列表") seasons?: unknown[],
    @query @doc("内容 `title` `url` 均为空") tip?: Record<unknown>,
    @query @doc("合集总数") total?: int64,
    @query @doc("1") play_type?: int64,
    @query @doc("合集信息") season?: Record<unknown>,
    @query @doc("审核信息?") checkin?: Record<unknown>,
    @query @doc("合集统计信息") seasonStat?: Record<unknown>,
    @query @doc("小节列表") sections?: Record<unknown>,
    @query @doc("合集视频列表") part_episodes?: unknown[],
    @query @doc("合集 ID") id?: int64,
    @query @doc("合集标题") title?: string,
    @query @doc("合集描述") desc?: string,
    @query @doc("合集封面 URL") cover?: string,
    @query @doc("是否已完结?") isEnd?: int64,
    @query @doc("合集作者 ID") mid?: int64,
    @query @doc("是否为活动合集?") isAct?: int64,
    @query @doc("是否付费?") is_pay?: int64,
    @query @doc("合集状态?") state?: int64,
    @query @doc("合集分段状态?") partState?: int64,
    @query @doc("合集签名状态?") signState?: int64,
    @query @doc("合集拒绝原因?") rejectReason?: string,
    @query @doc("创建时间") ctime?: int64,
    @query @doc("修改时间") mtime?: int64,
    @query @doc("是否设小节") no_section?: int64,
    @query @doc("合集是否禁止?") forbid?: int64,
    @query @doc("空") protocol_id?: string,
    @query @doc("0") ep_num?: int64,
    @query @doc("合集价格?") season_price?: int64,
    @query @doc("是否公开?") is_opened?: int64,
    @query @doc("是否充电付费?") has_charging_pay?: int64,
    @query @doc("状态?") status?: int64,
    @query @doc("状态原因?") status_reason?: string,
    @query @doc("合集审核状态?") season_status?: int64,
    @query @doc("播放量") view?: int64,
    @query @doc("弹幕数") danmaku?: int64,
    @query @doc("评论数") reply?: int64,
    @query @doc("收藏数") fav?: int64,
    @query @doc("硬币数") coin?: int64,
    @query @doc("分享数") share?: int64,
    @query @doc("当前排名?") nowRank?: int64,
    @query @doc("历史最高排名?") hisRank?: int64,
    @query @doc("点赞数") like?: int64,
    @query @doc("订阅数") subscription?: int64,
    @query @doc("0") vt?: int64,
    @query @doc("小节列表") sections?: unknown[],
    @query @doc("小节 ID") id?: int64,
    @query @doc("1") type?: int64,
    @query @doc("合集 ID") seasonId?: int64,
    @query @doc("小节标题") title?: string,
    @query @doc("排序") order?: int64,
    @query @doc("状态?") state?: int64,
    @query @doc("合集分段状态?") partState?: int64,
    @query @doc("拒绝原因?") rejectReason?: string,
    @query @doc("创建时间") ctime?: int64,
    @query @doc("修改时间") mtime?: int64,
    @query @doc("视频数量") epCount?: int64,
    @query @doc("封面 URL") cover?: string,
    @query @doc("是否充电付费?") has_charging_pay?: int64,
    @query @doc("合集内视频 ID") id?: int64,
    @query @doc("视频标题") title?: string,
    @query @doc("视频 aid") aid?: int64,
    @query @doc("视频 bvid") bvid?: string,
    @query @doc("视频 cid") cid?: int64,
    @query @doc("合集 ID") seasonId?: int64,
    @query @doc("小节 ID") sectionId?: int64,
    @query @doc("排序编号") order?: int64,
    @query @doc("空") videoTitle?: string,
    @query @doc("空") archiveTitle?: string,
    @query @doc("0") archiveState?: int64,
    @query @doc("拒绝理由?") rejectReason?: string,
    @query @doc("0") state?: int64,
    @query @doc("封面 URL") cover?: string,
    @query @doc("是否免费?") is_free?: int64,
    @query @doc("false") aid_owner?: boolean,
    @query @doc("充电付费?") charging_pay?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("合集列表")
  seasons?: unknown[];

  @doc("内容 `title` `url` 均为空")
  tip?: Record<unknown>;

  @doc("合集总数")
  total?: int64;

  @doc("1")
  play_type?: int64;

  @doc("合集信息")
  season?: Record<unknown>;

  @doc("审核信息?")
  checkin?: Record<unknown>;

  @doc("合集统计信息")
  seasonStat?: Record<unknown>;

  @doc("小节列表")
  sections?: Record<unknown>;

  @doc("合集视频列表")
  part_episodes?: unknown[];

}

/**
 * season 对象
 */
@doc("season 数据模型")
model Season {
  @doc("合集 ID")
  id?: int64;

  @doc("合集标题")
  title?: string;

  @doc("合集描述")
  desc?: string;

  @doc("合集封面 URL")
  cover?: string;

  @doc("是否已完结?")
  isEnd?: int64;

  @doc("合集作者 ID")
  mid?: int64;

  @doc("是否为活动合集?")
  isAct?: int64;

  @doc("是否付费?")
  is_pay?: int64;

  @doc("合集状态?")
  state?: int64;

  @doc("合集分段状态?")
  partState?: int64;

  @doc("合集签名状态?")
  signState?: int64;

  @doc("合集拒绝原因?")
  rejectReason?: string;

  @doc("创建时间")
  ctime?: int64;

  @doc("修改时间")
  mtime?: int64;

  @doc("是否设小节")
  no_section?: int64;

  @doc("合集是否禁止?")
  forbid?: int64;

  @doc("空")
  protocol_id?: string;

  @doc("0")
  ep_num?: int64;

  @doc("合集价格?")
  season_price?: int64;

  @doc("是否公开?")
  is_opened?: int64;

  @doc("是否充电付费?")
  has_charging_pay?: int64;

}

/**
 * checkin 对象
 */
@doc("checkin 数据模型")
model Checkin {
  @doc("状态?")
  status?: int64;

  @doc("状态原因?")
  status_reason?: string;

  @doc("合集审核状态?")
  season_status?: int64;

}

/**
 * seasonStat 对象
 */
@doc("seasonStat 数据模型")
model Seasonstat {
  @doc("播放量")
  view?: int64;

  @doc("弹幕数")
  danmaku?: int64;

  @doc("评论数")
  reply?: int64;

  @doc("收藏数")
  fav?: int64;

  @doc("硬币数")
  coin?: int64;

  @doc("分享数")
  share?: int64;

  @doc("当前排名?")
  nowRank?: int64;

  @doc("历史最高排名?")
  hisRank?: int64;

  @doc("点赞数")
  like?: int64;

  @doc("订阅数")
  subscription?: int64;

  @doc("0")
  vt?: int64;

}

/**
 * sections 对象
 */
@doc("sections 数据模型")
model Sections {
  @doc("小节列表")
  sections?: unknown[];

  @doc("小节 ID")
  id?: int64;

  @doc("1")
  type?: int64;

  @doc("合集 ID")
  seasonId?: int64;

  @doc("小节标题")
  title?: string;

  @doc("排序")
  order?: int64;

  @doc("状态?")
  state?: int64;

  @doc("合集分段状态?")
  partState?: int64;

  @doc("拒绝原因?")
  rejectReason?: string;

  @doc("创建时间")
  ctime?: int64;

  @doc("修改时间")
  mtime?: int64;

  @doc("视频数量")
  epCount?: int64;

  @doc("封面 URL")
  cover?: string;

  @doc("是否充电付费?")
  has_charging_pay?: int64;

  @doc("合集内视频 ID")
  id?: int64;

  @doc("视频标题")
  title?: string;

  @doc("视频 aid")
  aid?: int64;

  @doc("视频 bvid")
  bvid?: string;

  @doc("视频 cid")
  cid?: int64;

  @doc("合集 ID")
  seasonId?: int64;

  @doc("小节 ID")
  sectionId?: int64;

  @doc("排序编号")
  order?: int64;

  @doc("空")
  videoTitle?: string;

  @doc("空")
  archiveTitle?: string;

  @doc("0")
  archiveState?: int64;

  @doc("拒绝理由?")
  rejectReason?: string;

  @doc("0")
  state?: int64;

  @doc("封面 URL")
  cover?: string;

  @doc("是否免费?")
  is_free?: int64;

  @doc("false")
  aid_owner?: boolean;

  @doc("充电付费?")
  charging_pay?: int64;

}

/**
 * 添加视频到合集
 */
@route("/x2/creative/web/season/section/episodes/add")
@tag("Creativecenter")
interface 添加视频到合集 {
  @post
  @doc("添加视频到合集")
  添加视频到合集(
    @query @doc("CSRF Token (即 Cookies 中 bili_jct )") csrf: string,
    @body @doc("视频列表") episode: unknown[],
    @body @doc("合集小节 ID") section_id: int64,
    @body @doc("视频 aid") aid: int64,
    @body @doc("稿件 cid") cid: int64,
    @body @doc("合集内单集标题") title: string,
    @body @doc("0") charging_pay: int64,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
  ): ApiResponse<unknown>;
}

/**
 * 编辑合集小节
 */
@route("/x2/creative/web/season/section/edit")
@tag("Creativecenter")
interface 编辑合集小节 {
  @post
  @doc("编辑合集小节")
  编辑合集小节(
    @query @doc("CSRF Token (即 Cookies 中 bili_jct)") csrf: string,
    @body @doc("小节信息") section: Record<unknown>,
    @body @doc("排序列表") sorts: unknown[],
    @body @doc("小节 ID") id: int64,
    @body @doc("合集 ID") seasonId: int64,
    @body @doc("小节标题") title: string,
    @body @doc("1") type: int64,
    @body @doc("合集内视频 ID") id: int64,
    @body @doc("排序位置") order: int64,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
  ): ApiResponse<Section>;
}

/**
 * section 对象
 */
@doc("section 数据模型")
model Section {
  @doc("小节 ID")
  id?: int64;

  @doc("合集 ID")
  seasonId?: int64;

  @doc("小节标题")
  title?: string;

  @doc("1")
  type?: int64;

  @doc("合集内视频 ID")
  id?: int64;

  @doc("排序位置")
  order?: int64;

  @doc("返回值")
  code?: int64;

  @doc("错误信息")
  message?: string;

  @doc("1")
  ttl?: int64;

}

/**
 * 编辑合集信息
 */
@route("/x2/creative/web/season/edit")
@tag("Creativecenter")
interface 编辑合集信息 {
  @post
  @doc("编辑合集信息")
  编辑合集信息(
    @query @doc("CSRF Token (即 Cookies 中 bili_jct)") csrf: string,
    @body @doc("合集信息") season: Record<unknown>,
    @body @doc("排序列表") sorts: unknown[],
    @body @doc("合集 ID") id: int64,
    @body @doc("合集标题") title: string,
    @body @doc("封面图") cover: string,
    @body @doc("合集简介") desc: string,
    @body @doc("0") season_price: int64,
    @body @doc("是否完结") isEnd: int64,
    @body @doc("小节 ID") id: int64,
    @body @doc("排序位置") sort: int64,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
  ): ApiResponse<Season>;
}

/**
 * season 对象
 */
@doc("season 数据模型")
model Season {
  @doc("合集 ID")
  id?: int64;

  @doc("合集标题")
  title?: string;

  @doc("封面图")
  cover?: string;

  @doc("合集简介")
  desc?: string;

  @doc("0")
  season_price?: int64;

  @doc("是否完结")
  isEnd?: int64;

  @doc("小节 ID")
  id?: int64;

  @doc("排序位置")
  sort?: int64;

  @doc("返回值")
  code?: int64;

  @doc("错误信息")
  message?: string;

  @doc("1")
  ttl?: int64;

}

/**
 * 删除合集
 */
@route("/x2/creative/web/season/del")
@tag("Creativecenter")
interface 删除合集 {
  @post
  @doc("删除合集")
  删除合集(
    @body @doc("合集 ID") id: int64,
    @body @doc("CSRF Token (即 Cookie 中 bili_jct)") csrf: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
  ): ApiResponse<unknown>;
}

/**
 * 获取合集小节中的视频
 */
@route("/x2/creative/web/season/section")
@tag("Creativecenter")
interface 获取合集小节中的视频 {
  @get
  @doc("获取合集小节中的视频")
  获取合集小节中的视频(
    @query @doc("合集 ID") id: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("小节信息") section?: Record<unknown>,
    @query @doc("小节中的视频") episodes?: unknown[],
    @query @doc("小节 ID") id?: int64,
    @query @doc("小节类型") type?: int64,
    @query @doc("合集 ID") seasonId?: int64,
    @query @doc("小结标题") title?: string,
    @query @doc("排序编号?") order?: string,
    @query @doc("是否已完结?") isEnd?: int64,
    @query @doc("合集状态?") state?: int64,
    @query @doc("合集分段状态?") partState?: int64,
    @query @doc("合集拒绝原因?") rejectReason?: string,
    @query @doc("创建时间") ctime?: int64,
    @query @doc("修改时间") mtime?: int64,
    @query @doc("小节视频总数") epCount?: int64,
    @query @doc("合集封面") cover?: int64,
    @query @doc("是否公开?") show?: int64,
    @query @doc("是否充电付费?") has_charging_pay?: int64,
    @query @doc("是否 PUGV 付费?") has_pugv_pay?: int64,
    @query @doc("合集内视频 ID") id?: int64,
    @query @doc("视频标题") title?: string,
    @query @doc("视频 aid") aid?: int64,
    @query @doc("视频 bvid") bvid?: string,
    @query @doc("视频 cid") cid?: int64,
    @query @doc("合集 ID") seasonId?: int64,
    @query @doc("小节 ID") sectionId?: int64,
    @query @doc("排序编号") order?: int64,
    @query @doc("视频标题") videoTitle?: string,
    @query @doc("看起来也是标题") archiveTitle?: string,
    @query @doc("0") archiveState?: int64,
    @query @doc("拒绝理由?") rejectReason?: string,
    @query @doc("0") state?: int64,
    @query @doc("封面 URL") cover?: string,
    @query @doc("是否免费?") is_free?: int64,
    @query @doc("是否视频所有者") aid_owner?: boolean,
    @query @doc("充电付费?") charging_pay?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("小节信息")
  section?: Record<unknown>;

  @doc("小节中的视频")
  episodes?: unknown[];

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("小节 ID")
  id?: int64;

  @doc("小节类型")
  type?: int64;

  @doc("合集 ID")
  seasonId?: int64;

  @doc("小结标题")
  title?: string;

  @doc("排序编号?")
  order?: string;

  @doc("是否已完结?")
  isEnd?: int64;

  @doc("合集状态?")
  state?: int64;

  @doc("合集分段状态?")
  partState?: int64;

  @doc("合集拒绝原因?")
  rejectReason?: string;

  @doc("创建时间")
  ctime?: int64;

  @doc("修改时间")
  mtime?: int64;

  @doc("小节视频总数")
  epCount?: int64;

  @doc("合集封面")
  cover?: int64;

  @doc("是否公开?")
  show?: int64;

  @doc("是否充电付费?")
  has_charging_pay?: int64;

  @doc("是否 PUGV 付费?")
  has_pugv_pay?: int64;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("合集内视频 ID")
  id?: int64;

  @doc("视频标题")
  title?: string;

  @doc("视频 aid")
  aid?: int64;

  @doc("视频 bvid")
  bvid?: string;

  @doc("视频 cid")
  cid?: int64;

  @doc("合集 ID")
  seasonId?: int64;

  @doc("小节 ID")
  sectionId?: int64;

  @doc("排序编号")
  order?: int64;

  @doc("视频标题")
  videoTitle?: string;

  @doc("看起来也是标题")
  archiveTitle?: string;

  @doc("0")
  archiveState?: int64;

  @doc("拒绝理由?")
  rejectReason?: string;

  @doc("0")
  state?: int64;

  @doc("封面 URL")
  cover?: string;

  @doc("是否免费?")
  is_free?: int64;

  @doc("是否视频所有者")
  aid_owner?: boolean;

  @doc("充电付费?")
  charging_pay?: int64;

}

/**
 * 编辑投稿视频合集
 */
@route("/x2/creative/web/season/switch")
@tag("Creativecenter")
interface 编辑投稿视频合集 {
  @post
  @doc("编辑投稿视频合集")
  编辑投稿视频合集(
    @query @doc("当前时间") t: int64,
    @query @doc("CSRF Token (位于 Cookie 中 bili_jct)") csrf: string,
    @body @doc("视频 ID") aid: int64,
    @body @doc("null") season_id?: int64,
    @body @doc("null") section_id?: int64,
    @body @doc("视频标题") title: string,
    @body @doc("CSRF Token (位于 Cookie 中 bili_jct)") csrf: string,
    @body @doc("null") season_id?: int64,
    @body @doc("null") section_id?: int64,
    @body @doc("标题") title?: string,
    @body @doc("aid") aid?: int64,
    @body @doc("CSRF Token (位于 Cookie 中 bili_jct)") csrf?: int64,
  ): ApiResponse<unknown>;
}

/**
 * aid反查合集id
 */
@route("/x2/creative/web/season/aid")
@tag("Creativecenter")
interface Aid反查合集id {
  @get
  @doc("aid反查合集id")
  aid反查合集id(
    @query @doc("视频 aid") id: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("合集信息") season?: Record<unknown>,
    @query @doc("合集 ID") id?: int64,
    @query @doc("合集标题") title?: string,
    @query @doc("合集封面 URL") cover?: string,
    @query @doc("合集描述") desc?: string,
    @query @doc("是否已完结") isEnd?: int64,
    @query @doc("合集作者 ID") mid?: int64,
    @query @doc("是否为活动合集") isAct?: int64,
    @query @doc("是否付费") is_pay?: int64,
    @query @doc("合集状态") state?: int64,
    @query @doc("合集分段状态") partState?: int64,
    @query @doc("合集签名状态") signState?: int64,
    @query @doc("合集拒绝原因") rejectReason?: string,
    @query @doc("创建时间") ctime?: int64,
    @query @doc("修改时间") mtime?: int64,
    @query @doc("是否设小节") no_section?: int64,
    @query @doc("合集是否禁止") forbid?: int64,
    @query @doc("协议 ID") protocol_id?: string,
    @query @doc("视频数量") ep_num?: int64,
    @query @doc("合集价格") season_price?: int64,
    @query @doc("是否公开") is_opened?: int64,
    @query @doc("是否充电付费") has_charging_pay?: int64,
    @query @doc("是否 PUGV 付费") has_pugv_pay?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("合集信息")
  season?: Record<unknown>;

}

/**
 * season 对象
 */
@doc("season 数据模型")
model Season {
  @doc("合集 ID")
  id?: int64;

  @doc("合集标题")
  title?: string;

  @doc("合集封面 URL")
  cover?: string;

  @doc("合集描述")
  desc?: string;

  @doc("是否已完结")
  isEnd?: int64;

  @doc("合集作者 ID")
  mid?: int64;

  @doc("是否为活动合集")
  isAct?: int64;

  @doc("是否付费")
  is_pay?: int64;

  @doc("合集状态")
  state?: int64;

  @doc("合集分段状态")
  partState?: int64;

  @doc("合集签名状态")
  signState?: int64;

  @doc("合集拒绝原因")
  rejectReason?: string;

  @doc("创建时间")
  ctime?: int64;

  @doc("修改时间")
  mtime?: int64;

  @doc("是否设小节")
  no_section?: int64;

  @doc("合集是否禁止")
  forbid?: int64;

  @doc("协议 ID")
  protocol_id?: string;

  @doc("视频数量")
  ep_num?: int64;

  @doc("合集价格")
  season_price?: int64;

  @doc("是否公开")
  is_opened?: int64;

  @doc("是否充电付费")
  has_charging_pay?: int64;

  @doc("是否 PUGV 付费")
  has_pugv_pay?: int64;

}
