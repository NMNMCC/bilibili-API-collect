import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Newbieexam;

/**
 * 提交答题
 */
@route("/x/answer/v4/base/check")
@tag("Newbieexam")
interface 提交答题 {
  @post
  @doc("提交答题")
  提交答题(
    @body @doc("题目id") question_id: int64,
    @body @doc("选项hash") ans_hash: string,
    @body @doc("CSRF Token（位于cookie）") csrf: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
    @body @doc("信息本体") data?: Record<unknown>,
    @body @doc("选项是否正确") passed?: boolean,
    @body @doc("题目id") question_id: int64,
    @body @doc("选项hash") ans_hash: string,
    @body @doc("CSRF Token（位于cookie）") csrf: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
    @body @doc("信息本体") data?: Record<unknown>,
    @body @doc("选项是否正确") passed?: boolean,
    @body @doc("题目id") question_id: int64,
    @body @doc("选项hash") ans_hash: string,
    @body @doc("CSRF Token（位于cookie）") csrf: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
    @body @doc("信息本体") data?: Record<unknown>,
    @body @doc("true") passed?: boolean,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("选项是否正确")
  passed?: boolean;

  @doc("题目id")
  question_id?: int64;

  @doc("选项hash")
  ans_hash?: string;

  @doc("CSRF Token（位于cookie）")
  csrf?: string;

  @doc("返回值")
  code?: int64;

  @doc("错误信息")
  message?: string;

  @doc("1")
  ttl?: int64;

  @doc("信息本体")
  data?: Record<unknown>;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("选项是否正确")
  passed?: boolean;

  @doc("题目id")
  question_id?: int64;

  @doc("选项hash")
  ans_hash?: string;

  @doc("CSRF Token（位于cookie）")
  csrf?: string;

  @doc("返回值")
  code?: int64;

  @doc("错误信息")
  message?: string;

  @doc("1")
  ttl?: int64;

  @doc("信息本体")
  data?: Record<unknown>;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("true")
  passed?: boolean;

}

/**
 * 获取验证码
 */
@route("/x/answer/v4/captcha")
@tag("Newbieexam")
interface 获取验证码 {
  @get
  @doc("获取验证码")
  获取验证码(
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("验证码类型?") type?: string,
    @query @doc("极验id") gt?: string,
    @query @doc("极验key") challenge?: string,
    @query @doc("(?)") token?: string,
    @query @doc("(?)") url?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("验证码类型?")
  type?: string;

  @doc("极验id")
  gt?: string;

  @doc("极验key")
  challenge?: string;

  @doc("(?)")
  token?: string;

  @doc("(?)")
  url?: string;

}

/**
 * 提交验证码
 */
@route("/x/answer/v4/captcha/check")
@tag("Newbieexam")
interface 提交验证码 {
  @post
  @doc("提交验证码")
  提交验证码(
    @body @doc("自选题分类(旧版)") types: unknown,
    @body @doc("验证码类型") type: string,
    @body @doc("非必要") bilibili_token?: string,
    @body @doc("非必要") bilibili_code?: string,
    @body @doc("极验key") geetest_challenge: string,
    @body @doc("极验结果+\\") geetest_seccode?: string,
    @body @doc("极验结果") geetest_validate: string,
    @body @doc("CSRF Token(位于cookie)") csrf: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
  ): ApiResponse<unknown>;
}

/**
 * 提交自选题分类
 */
@route("/x/answer/v4/pro/type/check")
@tag("Newbieexam")
interface 提交自选题分类 {
  @post
  @doc("提交自选题分类")
  提交自选题分类(
    @body @doc("自选题分类(新版)") types: unknown,
    @body @doc("CSRF Token(位于cookie)") csrf: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
  ): ApiResponse<unknown>;
}

/**
 * 提前交卷
 */
@route("/x/answer/v4/submit")
@tag("Newbieexam")
interface 提前交卷 {
  @post
  @doc("提前交卷")
  提前交卷(
    @body @doc("CSRF Token(位于cookie)") csrf: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
    @body @doc("信息本体") data?: Record<unknown>,
    @body @doc("答题会话id") hid?: int64,
    @body @doc("答题用户mid") mid?: int64,
    @body @doc("得分") score?: int64,
    @body @doc("0") status?: int64,
    @body @doc("0") number?: int64,
    @body @doc("succeed") result?: string,
    @body @doc("result") stage?: string,
    @body @doc("版本") version?: string,
    @body @doc("本次答题开始时间") start_time?: int64,
    @body @doc("0") first_answer?: int64,
    @body @doc("答题版本") edition?: int64,
    @body @doc("1") captcha?: int64,
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

  @doc("0")
  status?: int64;

  @doc("0")
  number?: int64;

  @doc("succeed")
  result?: string;

  @doc("result")
  stage?: string;

  @doc("版本")
  version?: string;

  @doc("本次答题开始时间")
  start_time?: int64;

  @doc("0")
  first_answer?: int64;

  @doc("答题版本")
  edition?: int64;

  @doc("1")
  captcha?: int64;

}
