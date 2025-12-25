import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Misc;

/**
 * 获取当前时间戳
 */
@route("/x/report/click/now")
@tag("Misc")
interface 获取当前时间戳 {
  @get
  @doc("获取当前时间戳")
  获取当前时间戳(
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("当前的时间戳") now?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("当前的时间戳")
  now?: int64;

}

/**
 * 获取适用于 RTC 的时间戳
 */
@route("/xlive/open-interface/v1/rtc/getTimestamp")
@tag("Misc")
interface 获取适用于Rtc的时间戳 {
  @get
  @doc("获取适用于 RTC 的时间戳")
  获取适用于Rtc的时间戳(
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("服务器端UTC时间戳") timestamp?: int64,
    @query @doc("服务器端UTC时间戳 (毫秒)") microtime?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("服务器端UTC时间戳")
  timestamp?: int64;

  @doc("服务器端UTC时间戳 (毫秒)")
  microtime?: int64;

}

/**
 * 获取服务器端UTC时间
 */
@route("/serverdate.js")
@tag("Misc")
interface 获取服务器端utc时间 {
  @get
  @doc("获取服务器端UTC时间")
  获取服务器端utc时间(): ApiResponse<unknown>;
}
