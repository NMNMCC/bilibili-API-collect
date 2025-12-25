import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Clientinfo;

/**
 * 根据请求IP确定属地
 */
@route("/x/web-interface/zone")
@tag("Clientinfo")
interface 根据请求ip确定属地 {
  @get
  @doc("根据请求IP确定属地")
  根据请求ip确定属地(
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("公网IP地址") addr?: string,
    @query @doc("国家/地区名") country?: string,
    @query @doc("省/州") province?: string,
    @query @doc("城市") city?: string,
    @query @doc("运营商名") isp?: string,
    @query @doc("纬度") latitude?: int64,
    @query @doc("经度") longitude?: int64,
    @query @doc("ip数据库id") zone_id?: int64,
    @query @doc("国家/地区代码") country_code?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("公网IP地址")
  addr?: string;

  @doc("国家/地区名")
  country?: string;

  @doc("省/州")
  province?: string;

  @doc("城市")
  city?: string;

  @doc("运营商名")
  isp?: string;

  @doc("纬度")
  latitude?: int64;

  @doc("经度")
  longitude?: int64;

  @doc("ip数据库id")
  zone_id?: int64;

  @doc("国家/地区代码")
  country_code?: int64;

}

/**
 * 查询任意 IP 地址的归属地
 */
@route("/ip_service/v1/ip_service/get_ip_addr")
@tag("Clientinfo")
interface 查询任意Ip地址的归属地 {
  @get
  @doc("查询任意 IP 地址的归属地")
  查询任意Ip地址的归属地(
    @query @doc("IP地址") ip: string,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("错误信息") msg?: string,
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
