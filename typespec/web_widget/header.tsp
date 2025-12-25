import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Webwidget;

/**
 * 获取首页头图
 */
@route("/x/web-show/page/header")
@tag("Webwidget")
interface 获取首页头图 {
  @get
  @doc("获取首页头图")
  获取首页头图(
    @query @doc("资源 ID?") resource_id: int64,
    @query @doc("--") __?: unknown,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: string,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("--") __?: unknown,
    @query @doc("空") name?: string,
    @query @doc("静态头图 URL") pic?: string,
    @query @doc("bilibili logo URL") litpic?: string,
    @query @doc("空") url?: string,
    @query @doc("是否分层") is_split_layer?: string,
    @query @doc("分层信息") split_layer?: string,
    @query @doc("--") __?: unknown,
    @query @doc("版本号") version?: string,
    @query @doc("层信息") layers?: unknown[],
    @query @doc("内容") 项?: unknown,
    @query @doc("--") __?: unknown,
    @query @doc("第 1 个层信息") field_0?: Record<unknown>,
    @query @doc("第 3 个层信息") field_2?: Record<unknown>,
    @query @doc("第 2 个层信息") field_1?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("第 (n+1) 个层信息") n?: Record<unknown>,
    @query @doc("--") __?: unknown,
    @query @doc("图层资源") resources?: Record<unknown>,
    @query @doc("缩放信息") scale?: Record<unknown>,
    @query @doc("路径?") rotate?: Record<unknown>,
    @query @doc("偏移信息") translate?: Record<unknown>,
    @query @doc("模糊信息?") blur?: Record<unknown>,
    @query @doc("不透明度?") opacity?: Record<unknown>,
    @query @doc("层 ID") id?: int64,
    @query @doc("层名称") name?: string,
    @query @doc("--") __?: unknown,
    @query @doc("图层 URL") src?: string,
    @query @doc("0") id?: int64,
    @query @doc("--") __?: unknown,
    @query @doc("初始缩放值?") initial?: int64,
    @query @doc("缩放偏移值?") offset?: int64,
    @query @doc("--") __?: unknown,
    @query @doc("偏移值?") offset?: unknown[],
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("--")
  __?: unknown;

  @doc("空")
  name?: string;

  @doc("静态头图 URL")
  pic?: string;

  @doc("bilibili logo URL")
  litpic?: string;

  @doc("空")
  url?: string;

  @doc("是否分层")
  is_split_layer?: string;

  @doc("分层信息")
  split_layer?: string;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("--")
  __?: unknown;

  @doc("版本号")
  version?: string;

  @doc("层信息")
  layers?: unknown[];

  @doc("内容")
  项?: unknown;

  @doc("--")
  __?: unknown;

  @doc("第 1 个层信息")
  field_0?: Record<unknown>;

  @doc("第 3 个层信息")
  field_2?: Record<unknown>;

  @doc("第 2 个层信息")
  field_1?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("第 (n+1) 个层信息")
  n?: Record<unknown>;

  @doc("--")
  __?: unknown;

  @doc("图层资源")
  resources?: Record<unknown>;

  @doc("缩放信息")
  scale?: Record<unknown>;

  @doc("路径?")
  rotate?: Record<unknown>;

  @doc("偏移信息")
  translate?: Record<unknown>;

  @doc("模糊信息?")
  blur?: Record<unknown>;

  @doc("不透明度?")
  opacity?: Record<unknown>;

  @doc("层 ID")
  id?: int64;

  @doc("层名称")
  name?: string;

}

/**
 * resources 对象
 */
@doc("resources 数据模型")
model Resources {
  @doc("--")
  __?: unknown;

  @doc("图层 URL")
  src?: string;

  @doc("0")
  id?: int64;

}

/**
 * scale 对象
 */
@doc("scale 数据模型")
model Scale {
  @doc("--")
  __?: unknown;

  @doc("初始缩放值?")
  initial?: int64;

  @doc("缩放偏移值?")
  offset?: int64;

}

/**
 * translate 对象
 */
@doc("translate 数据模型")
model Translate {
  @doc("--")
  __?: unknown;

  @doc("偏移值?")
  offset?: unknown[];

}
