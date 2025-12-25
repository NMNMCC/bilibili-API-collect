import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Bangumi;

/**
 * 追番
 */
@route("/pgc/web/follow/add")
@tag("Bangumi")
interface 追番 {
  @post
  @doc("追番")
  追番(
    @query @doc("剧集ssid") season_id: string,
    @query @doc("csrf token(位于cookies中的bili_jct)") csrf: string,
    @query @doc("返回值") code?: int64,
    @query @doc("信息") message?: string,
    @query @doc("见下表") result?: Record<unknown>,
    @query @doc("0") fmid?: int64,
    @query @doc("false") relation?: boolean,
    @query @doc("2") status?: int64,
    @query @doc("自己追的番就要好好看完哟^o^") toast?: string,
  ): ApiResponse<Result>;
}

/**
 * result 对象
 */
@doc("result 数据模型")
model Result {
  @doc("0")
  fmid?: int64;

  @doc("false")
  relation?: boolean;

  @doc("2")
  status?: int64;

  @doc("自己追的番就要好好看完哟^o^")
  toast?: string;

}

/**
 * 取消追番
 */
@route("/pgc/web/follow/del")
@tag("Bangumi")
interface 取消追番 {
  @post
  @doc("取消追番")
  取消追番(
    @query @doc("剧集ssid") season_id: string,
    @query @doc("csrf token(位于cookies中的bili_jct)") csrf: string,
    @query @doc("返回值") code?: int64,
    @query @doc("信息") message?: string,
    @query @doc("见下表") result?: Record<unknown>,
    @query @doc("0") fmid?: int64,
    @query @doc("true") relation?: boolean,
    @query @doc("0") status?: int64,
    @query @doc("已取消追番") toast?: string,
  ): ApiResponse<Result>;
}

/**
 * result 对象
 */
@doc("result 数据模型")
model Result {
  @doc("0")
  fmid?: int64;

  @doc("true")
  relation?: boolean;

  @doc("0")
  status?: int64;

  @doc("已取消追番")
  toast?: string;

}
