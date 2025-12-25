import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Blackroom.Jury;

/**
 * 获取单个案件信息
 */
@route("/x/credit/v2/jury/case/info")
@tag("Blackroom.Jury")
interface 获取单个案件信息 {
  @get
  @doc("获取单个案件信息")
  获取单个案件信息(
    @query @doc("APP登录Token") access_key: string,
    @query @doc("案件id") case_id: string,
    @query @doc("返回值") code?: int64,
    @query @doc("信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("数据本体") data?: Record<unknown>,
    @query @doc("案件id") case_id?: string,
    @query @doc("任务类型") case_type?: int64,
    @query @doc("`1`") jury_state?: int64,
    @query @doc("是否投票") participate?: int64,
    @query @doc("投票选项") vote_items?: Record<unknown>,
    @query @doc("默认投票选项") default_vote?: int64,
    @query @doc("裁决状态（新版）") status?: int64,
    @query @doc("案件关联视频，播放进度条起始坐标") origin_start?: int64,
    @query @doc("视频av号") avid?: int64,
    @query @doc("弹幕 dmid") cid?: int64,
    @query @doc("`-1`") vote_cd?: int64,
    @query @doc("众议结论") result?: int64,
    @query @doc("众议结论文本") result_text?: string,
    @query @doc("视频标题") title?: string,
    @query @doc("案件信息") case_info?: Record<unknown>,
    @query @doc("我的观点") my_point?: Record<unknown>,
    @query @doc("投票信息") vote_info?: Record<unknown>,
    @query @doc("单条评论信息") comment?: Record<unknown>,
    @query @doc("弹幕截图") danmu_img?: string,
    @query @doc("若干条评论") comments?: Record<unknown>,
    @query @doc("单条弹幕信息") single_danmu?: string,
    @query @doc("用户uid") mid?: int64,
    @query @doc("用户名") uname?: string,
    @query @doc("用户头像") face?: string,
    @query @doc("评论内容") content?: string,
    @query @doc("子评论（对该评论的回复）") child_comments?: Record<unknown>,
    @query @doc("弹幕dmid") id_str?: string,
    @query @doc("弹幕内容") content?: string,
    @query @doc("尚不明确") progress?: int64,
    @query @doc("观点编号") opid?: int64,
    @query @doc("风纪委员用户ID") mid?: int64,
    @query @doc("风纪委员用户名") uname?: string,
    @query @doc("头像URL") face?: string,
    @query @doc("投票选项") vote?: int64,
    @query @doc("*现在系统已不再展示其他风纪委所投的票*") vote_text?: unknown,
    @query @doc("观点内容") content?: string,
    @query @doc("0") anonymous?: int64,
    @query @doc("被点赞数量") like?: int64,
    @query @doc("被点踩数量") hate?: int64,
    @query @doc("点赞（踩）状态") like_status?: int64,
    @query @doc("投票时间") vote_time?: int64,
    @query @doc("是否观看此类视频") insiders?: int64,
    @query @doc("总投票数") all_count?: int64,
    @query @doc("观点分布") counts?: unknown[],
    @query @doc("行为分布") insiders_counts?: unknown[],
    @query @doc("APP登录Token") access_key: string,
    @query @doc("案件id") cid: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("数据本体") data?: Record<unknown>,
    @query @doc("案件id") id?: int64,
    @query @doc("被举报用户mid") mid?: int64,
    @query @doc("裁决状态") status?: int64,
    @query @doc("封禁时间文字") statusTitle?: string,
    @query @doc("来源类型") originType?: int64,
    @query @doc("原因类型") reasonType?: int64,
    @query @doc("被举报的原文") originContent?: string,
    @query @doc("处理结果") punishResult?: int64,
    @query @doc("处罚原因") punishTitle?: string,
    @query @doc("裁决类型") judgeType?: int64,
    @query @doc("来源url") originUrl?: string,
    @query @doc("封禁时间") blockedDays?: int64,
    @query @doc("？？？") putTotal?: int64,
    @query @doc("投票不违规人数") voteRule?: int64,
    @query @doc("投票建议封禁人数") voteBreak?: int64,
    @query @doc("投票建议删除人数") voteDelete?: int64,
    @query @doc("裁决起始时间") startTime?: int64,
    @query @doc("裁决截止时间") endTime?: int64,
    @query @doc("举报创建时间") ctime?: int64,
    @query @doc("开始拉取时间") mtime?: int64,
    @query @doc("来源标题") originTitle?: string,
    @query @doc("违规关系标识字") relationId?: string,
    @query @doc("被举报用户头像url") face?: string,
    @query @doc("被举报用户昵称") uname?: string,
    @query @doc("我的投票") vote?: int64,
    @query @doc("众裁类型") case_type?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("案件id")
  case_id?: string;

  @doc("任务类型")
  case_type?: int64;

  @doc("`1`")
  jury_state?: int64;

  @doc("是否投票")
  participate?: int64;

  @doc("投票选项")
  vote_items?: Record<unknown>;

  @doc("默认投票选项")
  default_vote?: int64;

  @doc("裁决状态（新版）")
  status?: int64;

  @doc("案件关联视频，播放进度条起始坐标")
  origin_start?: int64;

  @doc("视频av号")
  avid?: int64;

  @doc("弹幕 dmid")
  cid?: int64;

  @doc("`-1`")
  vote_cd?: int64;

  @doc("众议结论")
  result?: int64;

  @doc("众议结论文本")
  result_text?: string;

  @doc("视频标题")
  title?: string;

  @doc("案件信息")
  case_info?: Record<unknown>;

  @doc("投票信息")
  vote_info?: Record<unknown>;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("单条评论信息")
  comment?: Record<unknown>;

  @doc("弹幕截图")
  danmu_img?: string;

  @doc("若干条评论")
  comments?: Record<unknown>;

  @doc("单条弹幕信息")
  single_danmu?: string;

  @doc("用户uid")
  mid?: int64;

  @doc("用户名")
  uname?: string;

  @doc("用户头像")
  face?: string;

  @doc("评论内容")
  content?: string;

  @doc("弹幕dmid")
  id_str?: string;

  @doc("弹幕内容")
  content?: string;

  @doc("尚不明确")
  progress?: int64;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("观点编号")
  opid?: int64;

  @doc("风纪委员用户ID")
  mid?: int64;

  @doc("风纪委员用户名")
  uname?: string;

  @doc("头像URL")
  face?: string;

  @doc("投票选项")
  vote?: int64;

  @doc("*现在系统已不再展示其他风纪委所投的票*")
  vote_text?: unknown;

  @doc("观点内容")
  content?: string;

  @doc("0")
  anonymous?: int64;

  @doc("被点赞数量")
  like?: int64;

  @doc("被点踩数量")
  hate?: int64;

  @doc("点赞（踩）状态")
  like_status?: int64;

  @doc("投票时间")
  vote_time?: int64;

  @doc("是否观看此类视频")
  insiders?: int64;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("总投票数")
  all_count?: int64;

  @doc("观点分布")
  counts?: unknown[];

  @doc("行为分布")
  insiders_counts?: unknown[];

  @doc("APP登录Token")
  access_key?: string;

  @doc("案件id")
  cid?: int64;

  @doc("返回值")
  code?: int64;

  @doc("信息")
  message?: string;

  @doc("1")
  ttl?: int64;

  @doc("数据本体")
  data?: Record<unknown>;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("案件id")
  id?: int64;

  @doc("被举报用户mid")
  mid?: int64;

  @doc("裁决状态")
  status?: int64;

  @doc("封禁时间文字")
  statusTitle?: string;

  @doc("来源类型")
  originType?: int64;

  @doc("原因类型")
  reasonType?: int64;

  @doc("被举报的原文")
  originContent?: string;

  @doc("处理结果")
  punishResult?: int64;

  @doc("处罚原因")
  punishTitle?: string;

  @doc("裁决类型")
  judgeType?: int64;

  @doc("来源url")
  originUrl?: string;

  @doc("封禁时间")
  blockedDays?: int64;

  @doc("？？？")
  putTotal?: int64;

  @doc("投票不违规人数")
  voteRule?: int64;

  @doc("投票建议封禁人数")
  voteBreak?: int64;

  @doc("投票建议删除人数")
  voteDelete?: int64;

  @doc("裁决起始时间")
  startTime?: int64;

  @doc("裁决截止时间")
  endTime?: int64;

  @doc("举报创建时间")
  ctime?: int64;

  @doc("开始拉取时间")
  mtime?: int64;

  @doc("来源标题")
  originTitle?: string;

  @doc("违规关系标识字")
  relationId?: string;

  @doc("被举报用户头像url")
  face?: string;

  @doc("被举报用户昵称")
  uname?: string;

  @doc("我的投票")
  vote?: int64;

  @doc("众裁类型")
  case_type?: int64;

}

/**
 * 查询案件众裁信息
 */
@route("/x/credit/jury/caseInfo")
@tag("Blackroom.Jury")
interface 查询案件众裁信息 {
  @get
  @doc("查询案件众裁信息")
  查询案件众裁信息(
    @query @doc("案件id") cid: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("数据本体") data?: unknown,
    @query @doc("案件id") id?: int64,
    @query @doc("被举报用户mid") mid?: int64,
    @query @doc("裁决状态") status?: int64,
    @query @doc("来源类型") originType?: int64,
    @query @doc("原因类型") reasonType?: int64,
    @query @doc("被举报的原文") originContent?: string,
    @query @doc("处理结果") punishResult?: int64,
    @query @doc("裁决类型") judgeType?: int64,
    @query @doc("来源url") originUrl?: string,
    @query @doc("封禁时间") blockedDays?: int64,
    @query @doc("？？？") putTotal?: int64,
    @query @doc("投票不违规人数") voteRule?: int64,
    @query @doc("投票建议封禁人数") voteBreak?: int64,
    @query @doc("投票建议删除人数") voteDelete?: int64,
    @query @doc("裁决起始时间") startTime?: int64,
    @query @doc("裁决截止时间") endTime?: int64,
    @query @doc("举报创建时间") ctime?: int64,
    @query @doc("开始拉取时间") mtime?: int64,
    @query @doc("来源标题") originTitle?: string,
    @query @doc("违规关系标识字") relationId?: string,
    @query @doc("被举报用户头像url") face?: string,
    @query @doc("被举报用户昵称") uname?: string,
    @query @doc("0") vote?: int64,
    @query @doc("众裁类型") case_type?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("案件id")
  id?: int64;

  @doc("被举报用户mid")
  mid?: int64;

  @doc("裁决状态")
  status?: int64;

  @doc("来源类型")
  originType?: int64;

  @doc("原因类型")
  reasonType?: int64;

  @doc("被举报的原文")
  originContent?: string;

  @doc("处理结果")
  punishResult?: int64;

  @doc("裁决类型")
  judgeType?: int64;

  @doc("来源url")
  originUrl?: string;

  @doc("封禁时间")
  blockedDays?: int64;

  @doc("？？？")
  putTotal?: int64;

  @doc("投票不违规人数")
  voteRule?: int64;

  @doc("投票建议封禁人数")
  voteBreak?: int64;

  @doc("投票建议删除人数")
  voteDelete?: int64;

  @doc("裁决起始时间")
  startTime?: int64;

  @doc("裁决截止时间")
  endTime?: int64;

  @doc("举报创建时间")
  ctime?: int64;

  @doc("开始拉取时间")
  mtime?: int64;

  @doc("来源标题")
  originTitle?: string;

  @doc("违规关系标识字")
  relationId?: string;

  @doc("被举报用户头像url")
  face?: string;

  @doc("被举报用户昵称")
  uname?: string;

  @doc("0")
  vote?: int64;

  @doc("众裁类型")
  case_type?: int64;

}

/**
 * 查询我的众裁记录
 */
@route("/x/credit/v2/jury/case/list")
@tag("Blackroom.Jury")
interface 查询我的众裁记录 {
  @get
  @doc("查询我的众裁记录")
  查询我的众裁记录(
    @query @doc("页码") pn: int64,
    @query @doc("每页显示数量") ps: int64,
    @query @doc("必要") cookie?: string,
    @query @doc("返回值") code?: int64,
    @query @doc("信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("数据本体") data?: Record<unknown>,
    @query @doc("仲裁案例数") data_total?: int64,
    @query @doc("仲裁记录列表") data_list?: unknown[],
    @query @doc("内容") 项?: unknown,
    @query @doc("仲裁记录1") field_0?: Record<unknown>,
    @query @doc("仲裁记录（n+1）") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("案件id") case_id?: string,
    @query @doc("案件类型") case_type?: int64,
    @query @doc("裁决状态") status?: int64,
    @query @doc("投票选项") vote?: int64,
    @query @doc("投票选项文本") vote_text?: string,
    @query @doc("投票时间") vote_time?: int64,
  ): ApiResponse<unknown>;
}

/**
 * 查询案件众裁信息(旧 api)
 */
@route("/x/credit/jury/caseList")
@tag("Blackroom.Jury")
interface 查询案件众裁信息旧Api {
  @get
  @doc("查询案件众裁信息(旧 api)")
  查询案件众裁信息旧Api(
    @query @doc("APP登录Token") access_key: string,
    @query @doc("页码") pn: int64,
    @query @doc("每页显示数量") ps: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("仲裁记录列表") data?: unknown[],
    @query @doc("内容") 项?: unknown,
    @query @doc("仲裁记录1") field_0?: Record<unknown>,
    @query @doc("仲裁记录（n+1）") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("案件id") id?: int64,
    @query @doc("被举报用户mid") mid?: int64,
    @query @doc("裁决状态") status?: int64,
    @query @doc("来源类型") originType?: int64,
    @query @doc("原因类型") reasonType?: int64,
    @query @doc("被举报的原文") originContent?: string,
    @query @doc("处理结果") punishResult?: int64,
    @query @doc("处罚原因") punishTitle?: string,
    @query @doc("裁决类型") judgeType?: int64,
    @query @doc("来源url") originUrl?: string,
    @query @doc("封禁时间") blockedDays?: int64,
    @query @doc("？？？") putTotal?: int64,
    @query @doc("投票不违规人数") voteRule?: int64,
    @query @doc("投票建议封禁人数") voteBreak?: int64,
    @query @doc("投票建议删除人数") voteDelete?: int64,
    @query @doc("裁决起始时间") startTime?: int64,
    @query @doc("裁决截止时间") endTime?: int64,
    @query @doc("举报创建时间") ctime?: int64,
    @query @doc("开始拉取时间") mtime?: int64,
    @query @doc("来源标题") originTitle?: string,
    @query @doc("违规关系标识字") relationId?: string,
    @query @doc("被举报用户头像url") face?: string,
    @query @doc("被举报用户昵称") uname?: string,
    @query @doc("我的投票") vote?: int64,
    @query @doc("我的裁决时间") voteTime?: int64,
    @query @doc("众裁类型") case_type?: int64,
  ): ApiResponse<unknown>;
}

/**
 * 获取众议观点
 */
@route("/x/credit/v2/jury/case/opinion")
@tag("Blackroom.Jury")
interface 获取众议观点 {
  @get
  @doc("获取众议观点")
  获取众议观点(
    @query @doc("Cookie") Cookie: string,
    @query @doc("仲裁案件id") case_id?: string,
    @query @doc("显示第x页（default = 1）") pn?: int64,
    @query @doc("每页显示y条观点（Max = 20）（default = 10）") ps?: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("数据本体") data?: Record<unknown>,
    @query @doc("当前案件众议观点总数") total?: int64,
    @query @doc("无数据时是一个空数组：“[]”") list?: unknown[],
    @query @doc("案件id") cid: int64,
    @query @doc("每页项数") ps: int64,
    @query @doc("页码") pn: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("数据本体") data?: Record<unknown>,
    @query @doc("观点总数") count?: int64,
    @query @doc("观点列表") opinion?: unknown,
    @query @doc("内容") 项?: unknown,
    @query @doc("观点1") field_0?: Record<unknown>,
    @query @doc("观点（n+1）") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("用户mid") mid?: int64,
    @query @doc("用户头像") face?: string,
    @query @doc("用户昵称") name?: string,
    @query @doc("观点id") opid?: int64,
    @query @doc("投票选择") vote?: int64,
    @query @doc("观点内容") content?: string,
    @query @doc("是否匿名") attr?: int64,
    @query @doc("喜欢人数") hate?: int64,
    @query @doc("不喜欢人数") like?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("当前案件众议观点总数")
  total?: int64;

  @doc("无数据时是一个空数组：“[]”")
  list?: unknown[];

}

/**
 * data.list 对象
 */
@doc("data.list 数据模型")
model Datalist {
  @doc("案件id")
  cid?: int64;

  @doc("每页项数")
  ps?: int64;

  @doc("页码")
  pn?: int64;

  @doc("返回值")
  code?: int64;

  @doc("信息")
  message?: string;

  @doc("1")
  ttl?: int64;

  @doc("数据本体")
  data?: Record<unknown>;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("观点总数")
  count?: int64;

  @doc("观点列表")
  opinion?: unknown;

  @doc("内容")
  项?: unknown;

  @doc("观点1")
  field_0?: Record<unknown>;

  @doc("观点（n+1）")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("用户mid")
  mid?: int64;

  @doc("用户头像")
  face?: string;

  @doc("用户昵称")
  name?: string;

  @doc("观点id")
  opid?: int64;

  @doc("投票选择")
  vote?: int64;

  @doc("观点内容")
  content?: string;

  @doc("是否匿名")
  attr?: int64;

  @doc("喜欢人数")
  hate?: int64;

  @doc("不喜欢人数")
  like?: int64;

}
