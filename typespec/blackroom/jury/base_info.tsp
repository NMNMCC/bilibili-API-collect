import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Blackroom.Jury;

/**
 * 基本数据
 */
@route("/x/credit/v2/jury/jury")
@tag("Blackroom.Jury")
interface 基本数据 {
  @get
  @doc("基本数据")
  基本数据(
    @query @doc("APP 登录 Token") access_key: string,
    @query @doc("返回值") code?: int64,
    @query @doc("信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("数据本体") data?: Record<unknown>,
    @query @doc("true") allow_apply?: boolean,
    @query @doc("任期审核状态") apply_status?: int64,
    @query @doc("总众裁数") case_total?: int64,
    @query @doc("空") err_msg?: string,
    @query @doc("用户头像 url") face?: string,
    @query @doc("当前资格状态") status?: int64,
    @query @doc("任期结束时间") term_end?: int64,
    @query @doc("用户昵称") uname?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("true")
  allow_apply?: boolean;

  @doc("任期审核状态")
  apply_status?: int64;

  @doc("总众裁数")
  case_total?: int64;

  @doc("空")
  err_msg?: string;

  @doc("用户头像 url")
  face?: string;

  @doc("当前资格状态")
  status?: int64;

  @doc("任期结束时间")
  term_end?: int64;

  @doc("用户昵称")
  uname?: string;

}

/**
 * 基本数据(旧API)
 */
@route("/x/credit/jury/jury")
@tag("Blackroom.Jury")
interface 基本数据旧api {
  @get
  @doc("基本数据(旧API)")
  基本数据旧api(
    @query @doc("总众裁数") caseTotal?: int64,
    @query @doc("用户头像 url") face?: string,
    @query @doc("当前资格剩余天数") restDays?: int64,
    @query @doc("当前裁决正确率百分比") rightRadio?: int64,
    @query @doc("当前状态") status?: int64,
    @query @doc("用户昵称") uname?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("总众裁数")
  caseTotal?: int64;

  @doc("用户头像 url")
  face?: string;

  @doc("当前资格剩余天数")
  restDays?: int64;

  @doc("当前裁决正确率百分比")
  rightRadio?: int64;

  @doc("当前状态")
  status?: int64;

  @doc("用户昵称")
  uname?: string;

}

/**
 * 统计信息(旧API)
 */
@route("/x/credit/jury/kpi")
@tag("Blackroom.Jury")
interface 统计信息旧api {
  @get
  @doc("统计信息(旧API)")
  统计信息旧api(
    @query @doc("APP登录Token") access_key: string,
    @query @doc("返回值") code?: int64,
    @query @doc("信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("数据本体") data?: unknown[],
    @query @doc("内容") 项?: unknown,
    @query @doc("第1个月统计") field_0?: Record<unknown>,
    @query @doc("第（n+1）个月统计") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("0") id?: int64,
    @query @doc("用户id") mid?: int64,
    @query @doc("风纪委员编号") number?: int64,
    @query @doc("数据生成时间（也是任期结束时间）") day?: int64,
    @query @doc("任期完成度") rate?: int64,
    @query @doc("尚不明确") rank?: int64,
    @query @doc("尚不明确") rankper?: int64,
    @query @doc("尚不明确") rankTotal?: int64,
    @query @doc("32767") point?: int64,
    @query @doc("活跃天数") activeDays?: int64,
    @query @doc("投票总数") voteTotal?: int64,
    @query @doc("投中率") voteRadio?: int64,
    @query @doc("尚不明确") blockedTotal?: int64,
    @query @doc("任期开始时间") termStart?: int64,
    @query @doc("任期结束时间（数据生成时间一致）") termEnd?: int64,
    @query @doc("观点获赞") opinion_likes?: int64,
  ): ApiResponse<unknown>;
}

/**
 * 检查申请风纪委员会资格
 */
@route("/x/credit/v2/jury/requirement")
@tag("Blackroom.Jury")
interface 检查申请风纪委员会资格 {
  @get
  @doc("检查申请风纪委员会资格")
  检查申请风纪委员会资格(
    @query @doc("APP登录Token") access_key: string,
    @query @doc("返回值") code?: int64,
    @query @doc("信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("数据本体") data?: Record<unknown>,
    @query @doc("是否被封禁") blocked?: boolean,
    @query @doc("是否实名认证") cert?: boolean,
    @query @doc("等级是否>=4") level?: boolean,
    @query @doc("是否90天内无违规") rule?: boolean,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("是否被封禁")
  blocked?: boolean;

  @doc("是否实名认证")
  cert?: boolean;

  @doc("是否90天内无违规")
  rule?: boolean;

}
