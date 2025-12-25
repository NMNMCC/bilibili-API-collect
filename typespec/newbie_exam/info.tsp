import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Newbieexam;

/**
 * 查询答题状态
 */
@route("/x/answer/v4/status")
@tag("Newbieexam")
interface 查询答题状态 {
  @get
  @doc("查询答题状态")
  查询答题状态(
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("答题会话id") hid?: int64,
    @query @doc("答题用户mid") mid?: int64,
    @query @doc("当前得分") score?: int64,
    @query @doc("答题状态") status?: int64,
    @query @doc("当前题号") number?: int64,
    @query @doc("是否通过答题") result?: string,
    @query @doc("当前答题阶段") stage?: string,
    @query @doc("答题版本") version?: string,
    @query @doc("本次答题开始时间") start_time?: int64,
    @query @doc("（?）") first_answer?: int64,
    @query @doc("当前答题进度") progress?: string,
    @query @doc("提示文案") text?: string,
    @query @doc("答题页面url") url?: string,
    @query @doc("是否为第一次答题") in_reg_audit?: boolean,
    @query @doc("答题版本") edition?: int64,
    @query @doc("(?)") rewards?: null,
    @query @doc("是否已经提交验证码") captcha?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("答题会话id")
  hid?: int64;

  @doc("答题用户mid")
  mid?: int64;

  @doc("当前得分")
  score?: int64;

  @doc("答题状态")
  status?: int64;

  @doc("当前题号")
  number?: int64;

  @doc("是否通过答题")
  result?: string;

  @doc("当前答题阶段")
  stage?: string;

  @doc("答题版本")
  version?: string;

  @doc("本次答题开始时间")
  start_time?: int64;

  @doc("（?）")
  first_answer?: int64;

  @doc("当前答题进度")
  progress?: string;

  @doc("提示文案")
  text?: string;

  @doc("答题页面url")
  url?: string;

  @doc("是否为第一次答题")
  in_reg_audit?: boolean;

  @doc("答题版本")
  edition?: int64;

  @doc("(?)")
  rewards?: null;

  @doc("是否已经提交验证码")
  captcha?: int64;

}

/**
 * 查询自选题分类
 */
@route("/x/answer/v4/pro/type")
@tag("Newbieexam")
interface 查询自选题分类 {
  @get
  @doc("查询自选题分类")
  查询自选题分类(
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("父分类列表") data?: unknown[],
    @query @doc("内容") 项?: unknown,
    @query @doc("父分类1") field_0?: Record<unknown>,
    @query @doc("父分类(n+1)") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("父分类id") id?: int64,
    @query @doc("父分类名") name?: string,
    @query @doc("子分类列表") fields?: unknown[],
    @query @doc("内容") 项?: unknown,
    @query @doc("子分类1") field_0?: Record<unknown>,
    @query @doc("子分类(n+1)") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("子分类id") id?: int64,
    @query @doc("子分类名") name?: string,
  ): ApiResponse<unknown>;
}

/**
 * 查询答题结果
 */
@route("/x/answer/v4/result")
@tag("Newbieexam")
interface 查询答题结果 {
  @get
  @doc("查询答题结果")
  查询答题结果(
    @query @doc("答题会话id") hid: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("答题会话id") hid?: int64,
    @query @doc("答题用户mid") mid?: int64,
    @query @doc("得分") score?: int64,
    @query @doc("用户等级") level?: int64,
    @query @doc("用户昵称") uname?: string,
    @query @doc("用户头像url") face?: string,
    @query @doc("答题结果") status?: string,
    @query @doc("已选择的自选题列表") question_types?: unknown[],
    @query @doc("自选题分类得分情况") power?: unknown[],
    @query @doc("开始答题时间") start_time?: int64,
    @query @doc("分数超过平均用户的百分比") score_rate?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("答题会话id")
  hid?: int64;

  @doc("答题用户mid")
  mid?: int64;

  @doc("得分")
  score?: int64;

  @doc("用户等级")
  level?: int64;

  @doc("用户昵称")
  uname?: string;

  @doc("用户头像url")
  face?: string;

  @doc("答题结果")
  status?: string;

  @doc("已选择的自选题列表")
  question_types?: unknown[];

  @doc("自选题分类得分情况")
  power?: unknown[];

  @doc("开始答题时间")
  start_time?: int64;

  @doc("分数超过平均用户的百分比")
  score_rate?: int64;

}
