import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Misc;

/**
 * 仅获取 buvid3
 */
@route("/x/web-frontend/getbuvid")
@tag("Misc")
interface 仅获取Buvid3 {
  @get
  @doc("仅获取 buvid3")
  仅获取Buvid3(
    @query @doc("返回值") code?: int64,
    @query @doc("数据本体") data?: Record<unknown>,
    @query @doc("buvid3") buvid?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("buvid3")
  buvid?: string;

}

/**
 * 接口获取 buvid3 / buvid4
 */
@route("/x/frontend/finger/spi")
@tag("Misc")
interface 接口获取Buvid3Buvid4 {
  @get
  @doc("接口获取 buvid3 / buvid4")
  接口获取Buvid3Buvid4(
    @query @doc("返回值") code?: int64,
    @query @doc("信息") message?: string,
    @query @doc("数据本体") data?: Record<unknown>,
    @query @doc("buvid3") b_3?: string,
    @query @doc("buvid4") b_4?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("buvid3")
  b_3?: string;

  @doc("buvid4")
  b_4?: string;

}
