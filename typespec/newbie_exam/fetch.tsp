import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Newbieexam;

/**
 * 拉取基础题
 */
@route("/x/answer/v4/base")
@tag("Newbieexam")
interface 拉取基础题 {
  @get
  @doc("拉取基础题")
  拉取基础题(
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("题目内容") question?: Record<unknown>,
    @query @doc("问题id") id?: int64,
    @query @doc("当前题号") number?: int64,
    @query @doc("问题部分总高度") q_height?: int64,
    @query @doc("问题部分Y裁剪起始") q_coord_y?: int64,
    @query @doc("题图url") image?: string,
    @query @doc("问题来源页面url") from?: string,
    @query @doc("选项列表") options?: unknown[],
    @query @doc("题目父类型id") type_id?: int64,
    @query @doc("分院小电视提示文案") type_name?: string,
    @query @doc("分院小电视图标url") type_image?: string,
    @query @doc("内容") 项?: unknown,
    @query @doc("选项A") field_0?: Record<unknown>,
    @query @doc("选项B") field_1?: Record<unknown>,
    @query @doc("选项C") field_2?: Record<unknown>,
    @query @doc("选项D") field_3?: Record<unknown>,
    @query @doc("选项序号") number?: int64,
    @query @doc("选项部分总高度") high?: int64,
    @query @doc("选项部分Y裁剪起始") coord_y?: int64,
    @query @doc("选项hash") hash?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("题目内容")
  question?: Record<unknown>;

}

/**
 * question 对象
 */
@doc("question 数据模型")
model Question {
  @doc("问题id")
  id?: int64;

  @doc("当前题号")
  number?: int64;

  @doc("问题部分总高度")
  q_height?: int64;

  @doc("问题部分Y裁剪起始")
  q_coord_y?: int64;

  @doc("题图url")
  image?: string;

  @doc("问题来源页面url")
  from?: string;

  @doc("选项列表")
  options?: unknown[];

  @doc("题目父类型id")
  type_id?: int64;

  @doc("分院小电视提示文案")
  type_name?: string;

  @doc("分院小电视图标url")
  type_image?: string;

  @doc("内容")
  项?: unknown;

  @doc("选项A")
  field_0?: Record<unknown>;

  @doc("选项B")
  field_1?: Record<unknown>;

  @doc("选项C")
  field_2?: Record<unknown>;

  @doc("选项D")
  field_3?: Record<unknown>;

  @doc("选项序号")
  number?: int64;

  @doc("选项部分总高度")
  high?: int64;

  @doc("选项部分Y裁剪起始")
  coord_y?: int64;

  @doc("选项hash")
  hash?: string;

}

/**
 * 拉取附加题
 */
@route("/x/answer/v4/extra")
@tag("Newbieexam")
interface 拉取附加题 {
  @get
  @doc("拉取附加题")
  拉取附加题(
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
  ): ApiResponse<Data>;
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
 * 拉取自选题
 */
@route("/x/answer/v4/pro")
@tag("Newbieexam")
interface 拉取自选题 {
  @get
  @doc("拉取自选题")
  拉取自选题(
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
  ): ApiResponse<Data>;
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
