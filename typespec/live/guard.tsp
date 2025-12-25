import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Live;

/**
 * 查询粉丝团成员
 */
@route("/xlive/general-interface/v1/rank/getFansMembersRank")
@tag("Live")
interface 查询粉丝团成员 {
  @get
  @doc("查询粉丝团成员")
  查询粉丝团成员(
    @query @doc("页数") page: int64,
    @query @doc("主播id") ruid: int64,
    @query @doc("每页返回的数量") page_size: int64,
    @query @doc("排序方式") rank_type: int64,
    @query @doc("13位时间戳") ts: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("内容") item?: unknown[],
    @query @doc("粉丝团成员数量") num?: int64,
    @query @doc("排名") user_rank?: int64,
    @query @doc("用户UID") uid?: int64,
    @query @doc("用户名") name?: string,
    @query @doc("用户头像") face?: string,
    @query @doc("亲密度") score?: int64,
    @query @doc("粉丝牌名字") medal_name?: string,
    @query @doc("粉丝牌等级") level?: int64,
    @query @doc("主播UID") target_id?: int64,
    @query @doc("大航海类型，1，2，3分别为总督，提督，舰长") guard_level?: int64,
    @query @doc("粉丝牌渐变起始色") medal_color_start?: int64,
    @query @doc("粉丝牌渐变结束色") medal_color_end?: int64,
    @query @doc("粉丝牌边框颜色") medal_color_border?: int64,
    @query @doc("大航海图标URL") guard_icon?: string,
    @query @doc("粉丝牌，与[此处](/bilibili-API-collect/docs/user/medals)基本一致") uinfo_medal?: Record<unknown>,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("内容")
  item?: unknown[];

  @doc("粉丝团成员数量")
  num?: int64;

}

/**
 * list 对象
 */
@doc("list 数据模型")
model List {
  @doc("排名")
  user_rank?: int64;

  @doc("用户UID")
  uid?: int64;

  @doc("用户名")
  name?: string;

  @doc("用户头像")
  face?: string;

  @doc("亲密度")
  score?: int64;

  @doc("粉丝牌名字")
  medal_name?: string;

  @doc("粉丝牌等级")
  level?: int64;

  @doc("主播UID")
  target_id?: int64;

  @doc("大航海类型，1，2，3分别为总督，提督，舰长")
  guard_level?: int64;

  @doc("粉丝牌渐变起始色")
  medal_color_start?: int64;

  @doc("粉丝牌渐变结束色")
  medal_color_end?: int64;

  @doc("粉丝牌边框颜色")
  medal_color_border?: int64;

  @doc("大航海图标URL")
  guard_icon?: string;

  @doc("粉丝牌，与[此处](/bilibili-API-collect/docs/user/medals)基本一致")
  uinfo_medal?: Record<unknown>;

}
