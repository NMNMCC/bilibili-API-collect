import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Comment;

/**
 * 获取评论区明细_翻页加载
 */
@route("/x/v2/reply")
@tag("Comment")
interface 获取评论区明细_翻页加载 {
  @get
  @doc("获取评论区明细_翻页加载")
  获取评论区明细_翻页加载(
    @query @doc("APP 登录 Token") access_key: string,
    @query @doc("评论区类型代码") type: int64,
    @query @doc("目标评论区 id") oid: int64,
    @query @doc("排序方式") sort: int64,
    @query @doc("是否不显示热评") nohot: int64,
    @query @doc("每页项数") ps: int64,
    @query @doc("页码") pn: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("数据本体") data?: unknown,
    @query @doc("页信息") page?: Record<unknown>,
    @query @doc("评论区显示控制") config?: Record<unknown>,
    @query @doc("评论列表") replies?: unknown,
    @query @doc("热评列表") hots?: unknown,
    @query @doc("置顶评论") upper?: Record<unknown>,
    @query @doc("(?)") top?: null,
    @query @doc("评论区公告信息") notice?: unknown,
    @query @doc("投票评论?") vote?: int64,
    @query @doc("(?)") blacklist?: int64,
    @query @doc("(?)") assist?: int64,
    @query @doc("评论区类型id") mode?: int64,
    @query @doc("评论区支持的类型id") support_mode?: unknown[],
    @query @doc("折叠相关信息") folder?: Record<unknown>,
    @query @doc("(?)") lottery_card?: null,
    @query @doc("显示bvid?") show_bvid?: boolean,
    @query @doc("评论区输入属性") control?: Record<unknown>,
    @query @doc("当前页码") num?: int64,
    @query @doc("每页项数") size?: int64,
    @query @doc("根评论条数") count?: int64,
    @query @doc("总计评论条数") acount?: int64,
    @query @doc("是否显示管理置顶") showadmin?: int64,
    @query @doc("(?)") showentry?: int64,
    @query @doc("是否显示楼层号") showfloor?: int64,
    @query @doc("是否显示话题") showtopic?: int64,
    @query @doc("是否显示“UP 觉得很赞”标志") show_up_flag?: boolean,
    @query @doc("是否只读评论区") read_only?: boolean,
    @query @doc("是否显示删除记录") show_del_log?: boolean,
    @query @doc("内容") 项?: unknown,
    @query @doc("评论条目 1") field_0?: Record<unknown>,
    @query @doc("评论条目 (n+1)") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("内容") 项?: unknown,
    @query @doc("热评条目 1") field_0?: Record<unknown>,
    @query @doc("热评条目 (n+1)") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("UP 主 mid") mid?: int64,
    @query @doc("置顶条目") top?: unknown,
    @query @doc("投票评论？") vote?: unknown,
    @query @doc("公告正文") content?: string,
    @query @doc("公告 id") id?: int64,
    @query @doc("公告页面链接 url") link?: string,
    @query @doc("公告标题") title?: string,
    @query @doc("评论区是否存在折叠评论") has_folded?: boolean,
    @query @doc("是否折叠?") is_folded?: boolean,
    @query @doc("相关规则页面 url") rule?: string,
    @query @doc("是否禁止新增评论") input_disable?: boolean,
    @query @doc("评论框文字") root_input_text?: string,
    @query @doc("评论框文字") child_input_text?: string,
    @query @doc("空评论区文字") bg_text?: string,
    @query @doc("评论是否筛选后可见") web_selection?: boolean,
    @query @doc("答题页面链接文字") answer_guide_text?: string,
    @query @doc("答题页面图标 url") answer_guide_icon_url?: string,
    @query @doc("答题页面 ios url") answer_guide_ios_url?: string,
    @query @doc("答题页面安卓 url") answer_guide_android_url?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("页信息")
  page?: Record<unknown>;

  @doc("评论区显示控制")
  config?: Record<unknown>;

  @doc("评论列表")
  replies?: unknown;

  @doc("热评列表")
  hots?: unknown;

  @doc("置顶评论")
  upper?: Record<unknown>;

  @doc("(?)")
  top?: null;

  @doc("评论区公告信息")
  notice?: unknown;

  @doc("投票评论?")
  vote?: int64;

  @doc("(?)")
  blacklist?: int64;

  @doc("(?)")
  assist?: int64;

  @doc("评论区类型id")
  mode?: int64;

  @doc("评论区支持的类型id")
  support_mode?: unknown[];

  @doc("折叠相关信息")
  folder?: Record<unknown>;

  @doc("(?)")
  lottery_card?: null;

  @doc("显示bvid?")
  show_bvid?: boolean;

  @doc("评论区输入属性")
  control?: Record<unknown>;

}

/**
 * page 对象
 */
@doc("page 数据模型")
model Page {
  @doc("当前页码")
  num?: int64;

  @doc("每页项数")
  size?: int64;

  @doc("根评论条数")
  count?: int64;

  @doc("总计评论条数")
  acount?: int64;

}

/**
 * config 对象
 */
@doc("config 数据模型")
model Config {
  @doc("是否显示管理置顶")
  showadmin?: int64;

  @doc("(?)")
  showentry?: int64;

  @doc("是否显示楼层号")
  showfloor?: int64;

  @doc("是否显示话题")
  showtopic?: int64;

  @doc("是否显示“UP 觉得很赞”标志")
  show_up_flag?: boolean;

  @doc("是否只读评论区")
  read_only?: boolean;

  @doc("是否显示删除记录")
  show_del_log?: boolean;

  @doc("内容")
  项?: unknown;

  @doc("评论条目 1")
  field_0?: Record<unknown>;

  @doc("评论条目 (n+1)")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("内容")
  项?: unknown;

  @doc("热评条目 1")
  field_0?: Record<unknown>;

  @doc("热评条目 (n+1)")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

}

/**
 * upper 对象
 */
@doc("upper 数据模型")
model Upper {
  @doc("UP 主 mid")
  mid?: int64;

  @doc("置顶条目")
  top?: unknown;

  @doc("投票评论？")
  vote?: unknown;

}

/**
 * notice 对象
 */
@doc("notice 数据模型")
model Notice {
  @doc("公告正文")
  content?: string;

  @doc("公告 id")
  id?: int64;

  @doc("公告页面链接 url")
  link?: string;

  @doc("公告标题")
  title?: string;

}

/**
 * folder 对象
 */
@doc("folder 数据模型")
model Folder {
  @doc("评论区是否存在折叠评论")
  has_folded?: boolean;

  @doc("是否折叠?")
  is_folded?: boolean;

  @doc("相关规则页面 url")
  rule?: string;

}

/**
 * control 对象
 */
@doc("control 数据模型")
model Control {
  @doc("是否禁止新增评论")
  input_disable?: boolean;

  @doc("评论框文字")
  root_input_text?: string;

  @doc("评论框文字")
  child_input_text?: string;

  @doc("空评论区文字")
  bg_text?: string;

  @doc("评论是否筛选后可见")
  web_selection?: boolean;

  @doc("答题页面链接文字")
  answer_guide_text?: string;

  @doc("答题页面图标 url")
  answer_guide_icon_url?: string;

  @doc("答题页面 ios url")
  answer_guide_ios_url?: string;

  @doc("答题页面安卓 url")
  answer_guide_android_url?: string;

}

/**
 * 获取评论区明细_懒加载
 */
@route("/x/v2/reply/wbi/main")
@tag("Comment")
interface 获取评论区明细_懒加载 {
  @get
  @doc("获取评论区明细_懒加载")
  获取评论区明细_懒加载(
    @query @doc("APP 登录 Token") access_key: string,
    @query @doc("评论区类型代码") type: int64,
    @query @doc("目标评论区 id") oid: int64,
    @query @doc("排序方式") mode: int64,
    @query @doc("翻页") next: int64,
    @query @doc("分页信息") pagination_str: Record<unknown>,
    @query @doc("平台类型") plat: int64,
    @query @doc("空") seek_rpid: string,
    @query @doc("1315875") web_location: string,
    @query @doc("一个套着字符串皮的 JSON Object") offset?: string,
    @query @doc("类型") type?: int64,
    @query @doc("方向") direction?: int64,
    @query @doc("分页数据") data?: Record<unknown>,
    @query @doc("分页数据") Data?: Record<unknown>,
    @query @doc("-") _?: unknown,
    @query @doc("页码 (上次响应 `data.cursor.next` 的值)") pn?: int64,
    @query @doc("-") _?: unknown,
    @query @doc("上次响应 `data.cursor.next` 的值") cursor?: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("数据本体") data?: unknown,
    @query @doc("游标信息") cursor?: Record<unknown>,
    @query @doc("热评列表") hots?: unknown,
    @query @doc("评论区公告信息") notice?: unknown,
    @query @doc("评论列表") replies?: unknown,
    @query @doc("置顶信息") top?: Record<unknown>,
    @query @doc("置顶评论") top_replies?: Record<unknown>,
    @query @doc("抽奖评论") lottery_card?: null,
    @query @doc("评论折叠信息") folder?: Record<unknown>,
    @query @doc("(?)") up_selection?: Record<unknown>,
    @query @doc("广告") cm?: Record<unknown>,
    @query @doc("广告控制") cm_info?: Record<unknown>,
    @query @doc("(?)") effects?: Record<unknown>,
    @query @doc("(?)") assist?: int64,
    @query @doc("(?)") blacklist?: int64,
    @query @doc("(?)") vote?: int64,
    @query @doc("(?)") lottery?: int64,
    @query @doc("评论区显示控制") config?: Record<unknown>,
    @query @doc("UP主信息") upper?: Record<unknown>,
    @query @doc("显示 bvid?") show_bvid?: boolean,
    @query @doc("评论区输入属性") control?: Record<unknown>,
    @query @doc("1") note?: int64,
    @query @doc("全部评论条数") all_count?: int64,
    @query @doc("是否为第一页") is_begin?: boolean,
    @query @doc("上页页码") prev?: int64,
    @query @doc("下页页码") next?: int64,
    @query @doc("是否为最后页") is_end?: boolean,
    @query @doc("排序方式") mode?: int64,
    @query @doc("支持的排序方式") support_mode?: unknown[],
    @query @doc("评论区类型名") name?: string,
    @query @doc("用于下一次请求的偏移信息") pagination_reply?: string,
    @query @doc("空") session_id?: string,
    @query @doc("用于下一次请求的偏移信息") next_offset?: string,
    @query @doc("用于本次请求的偏移信息") prev_offset?: string,
    @query @doc("是否显示管理置顶") showadmin?: int64,
    @query @doc("？") showentry?: int64,
    @query @doc("是否显示楼层号") showfloor?: int64,
    @query @doc("是否显示话题") showtopic?: int64,
    @query @doc("是否显示“UP 觉得很赞”标志") show_up_flag?: boolean,
    @query @doc("是否只读评论区") read_only?: boolean,
    @query @doc("是否显示删除记录") show_del_log?: boolean,
    @query @doc("内容") 项?: unknown,
    @query @doc("热评条目 1") field_0?: Record<unknown>,
    @query @doc("热评条目 (n+1)") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("内容") 项?: unknown,
    @query @doc("评论条目 1") field_0?: Record<unknown>,
    @query @doc("评论条目 (n+1)") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("管理员置顶条目") admin?: unknown,
    @query @doc("UP 主置顶条目") upper?: unknown,
    @query @doc("投票置顶条目") vote?: unknown,
    @query @doc("UP 主 mid") mid?: int64,
    @query @doc("公告正文") content?: string,
    @query @doc("公告 id") id?: int64,
    @query @doc("公告页面链接 url") link?: string,
    @query @doc("公告标题") title?: string,
    @query @doc("评论区是否存在折叠评论") has_folded?: boolean,
    @query @doc("是否折叠?") is_folded?: boolean,
    @query @doc("相关规则页面 url") rule?: string,
    @query @doc("(?)") input_disable?: boolean,
    @query @doc("评论框文字") root_input_text?: string,
    @query @doc("评论框文字") child_input_text?: string,
    @query @doc("空评论区文字") bg_text?: string,
    @query @doc("评论是否筛选后可见") web_selection?: boolean,
    @query @doc("答题页面链接文字") answer_guide_text?: string,
    @query @doc("答题页面图标 url") answer_guide_icon_url?: string,
    @query @doc("答题页面 ios url") answer_guide_ios_url?: string,
    @query @doc("答题页面安卓 url") answer_guide_android_url?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("游标信息")
  cursor?: Record<unknown>;

  @doc("热评列表")
  hots?: unknown;

  @doc("评论区公告信息")
  notice?: unknown;

  @doc("评论列表")
  replies?: unknown;

  @doc("置顶信息")
  top?: Record<unknown>;

  @doc("置顶评论")
  top_replies?: Record<unknown>;

  @doc("抽奖评论")
  lottery_card?: null;

  @doc("评论折叠信息")
  folder?: Record<unknown>;

  @doc("(?)")
  up_selection?: Record<unknown>;

  @doc("广告")
  cm?: Record<unknown>;

  @doc("广告控制")
  cm_info?: Record<unknown>;

  @doc("(?)")
  effects?: Record<unknown>;

  @doc("(?)")
  assist?: int64;

  @doc("(?)")
  blacklist?: int64;

  @doc("(?)")
  vote?: int64;

  @doc("(?)")
  lottery?: int64;

  @doc("评论区显示控制")
  config?: Record<unknown>;

  @doc("UP主信息")
  upper?: Record<unknown>;

  @doc("显示 bvid?")
  show_bvid?: boolean;

  @doc("评论区输入属性")
  control?: Record<unknown>;

  @doc("1")
  note?: int64;

}

/**
 * cursor 对象
 */
@doc("cursor 数据模型")
model Cursor {
  @doc("全部评论条数")
  all_count?: int64;

  @doc("是否为第一页")
  is_begin?: boolean;

  @doc("上页页码")
  prev?: int64;

  @doc("下页页码")
  next?: int64;

  @doc("是否为最后页")
  is_end?: boolean;

  @doc("排序方式")
  mode?: int64;

  @doc("支持的排序方式")
  support_mode?: unknown[];

  @doc("评论区类型名")
  name?: string;

  @doc("用于下一次请求的偏移信息")
  pagination_reply?: string;

  @doc("空")
  session_id?: string;

}

/**
 * pagination_reply 对象
 */
@doc("pagination_reply 数据模型")
model Pagination_reply {
  @doc("用于下一次请求的偏移信息")
  next_offset?: string;

  @doc("用于本次请求的偏移信息")
  prev_offset?: string;

}

/**
 * config 对象
 */
@doc("config 数据模型")
model Config {
  @doc("是否显示管理置顶")
  showadmin?: int64;

  @doc("？")
  showentry?: int64;

  @doc("是否显示楼层号")
  showfloor?: int64;

  @doc("是否显示话题")
  showtopic?: int64;

  @doc("是否显示“UP 觉得很赞”标志")
  show_up_flag?: boolean;

  @doc("是否只读评论区")
  read_only?: boolean;

  @doc("是否显示删除记录")
  show_del_log?: boolean;

  @doc("内容")
  项?: unknown;

  @doc("热评条目 1")
  field_0?: Record<unknown>;

  @doc("热评条目 (n+1)")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("内容")
  项?: unknown;

  @doc("评论条目 1")
  field_0?: Record<unknown>;

  @doc("评论条目 (n+1)")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

}

/**
 * top 对象
 */
@doc("top 数据模型")
model Top {
  @doc("管理员置顶条目")
  admin?: unknown;

  @doc("UP 主置顶条目")
  upper?: unknown;

  @doc("投票置顶条目")
  vote?: unknown;

}

/**
 * upper 对象
 */
@doc("upper 数据模型")
model Upper {
  @doc("UP 主 mid")
  mid?: int64;

}

/**
 * notice 对象
 */
@doc("notice 数据模型")
model Notice {
  @doc("公告正文")
  content?: string;

  @doc("公告 id")
  id?: int64;

  @doc("公告页面链接 url")
  link?: string;

  @doc("公告标题")
  title?: string;

}

/**
 * folder 对象
 */
@doc("folder 数据模型")
model Folder {
  @doc("评论区是否存在折叠评论")
  has_folded?: boolean;

  @doc("是否折叠?")
  is_folded?: boolean;

  @doc("相关规则页面 url")
  rule?: string;

}

/**
 * control 对象
 */
@doc("control 数据模型")
model Control {
  @doc("(?)")
  input_disable?: boolean;

  @doc("评论框文字")
  root_input_text?: string;

  @doc("评论框文字")
  child_input_text?: string;

  @doc("空评论区文字")
  bg_text?: string;

  @doc("评论是否筛选后可见")
  web_selection?: boolean;

  @doc("答题页面链接文字")
  answer_guide_text?: string;

  @doc("答题页面图标 url")
  answer_guide_icon_url?: string;

  @doc("答题页面 ios url")
  answer_guide_ios_url?: string;

  @doc("答题页面安卓 url")
  answer_guide_android_url?: string;

}

/**
 * 获取指定评论的回复
 */
@route("/x/v2/reply/reply")
@tag("Comment")
interface 获取指定评论的回复 {
  @get
  @doc("获取指定评论的回复")
  获取指定评论的回复(
    @query @doc("APP登录 Token") access_key: string,
    @query @doc("评论区类型代码") type: int64,
    @query @doc("目标评论区 id") oid: int64,
    @query @doc("根回复 rpid") root: int64,
    @query @doc("每页项数") ps: int64,
    @query @doc("页码") pn: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("数据本体") data?: unknown,
    @query @doc("评论区显示控制") config?: Record<unknown>,
    @query @doc("评论区输入属性") control?: Record<unknown>,
    @query @doc("页面信息") page?: Record<unknown>,
    @query @doc("评论对话树列表") replies?: unknown[],
    @query @doc("根评论信息") root?: Record<unknown>,
    @query @doc("显示 bvid?") show_bvid?: boolean,
    @query @doc("(?)") show_text?: string,
    @query @doc("(?)") show_type?: int64,
    @query @doc("UP主 mid") upper?: Record<unknown>,
    @query @doc("是否显示管理置顶") showadmin?: int64,
    @query @doc("？") showentry?: int64,
    @query @doc("是否显示楼层号") showfloor?: int64,
    @query @doc("是否显示话题") showtopic?: int64,
    @query @doc("是否显示“UP觉得很赞”标志") show_up_flag?: boolean,
    @query @doc("是否只读评论区") read_only?: boolean,
    @query @doc("是否显示删除记录") show_del_log?: boolean,
    @query @doc("(?)") input_disable?: boolean,
    @query @doc("评论框文字") root_input_text?: string,
    @query @doc("评论框文字") child_input_text?: string,
    @query @doc("空评论区文字") bg_text?: string,
    @query @doc("评论是否筛选后可见") web_selection?: boolean,
    @query @doc("答题页面链接文字") answer_guide_text?: string,
    @query @doc("答题页面图标 url") answer_guide_icon_url?: string,
    @query @doc("答题页面 ios url") answer_guide_ios_url?: string,
    @query @doc("答题页面安卓 url") answer_guide_android_url?: string,
    @query @doc("二级评论数") count?: int64,
    @query @doc("当前页码") num?: int64,
    @query @doc("每页项数") size?: int64,
    @query @doc("内容") 项?: unknown,
    @query @doc("对话评论条目 1") field_0?: Record<unknown>,
    @query @doc("对话评论条目 (n+1)") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("UP 主 mid") mid?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("评论区显示控制")
  config?: Record<unknown>;

  @doc("评论区输入属性")
  control?: Record<unknown>;

  @doc("页面信息")
  page?: Record<unknown>;

  @doc("评论对话树列表")
  replies?: unknown[];

  @doc("根评论信息")
  root?: Record<unknown>;

  @doc("显示 bvid?")
  show_bvid?: boolean;

  @doc("(?)")
  show_text?: string;

  @doc("(?)")
  show_type?: int64;

  @doc("UP主 mid")
  upper?: Record<unknown>;

}

/**
 * config 对象
 */
@doc("config 数据模型")
model Config {
  @doc("是否显示管理置顶")
  showadmin?: int64;

  @doc("？")
  showentry?: int64;

  @doc("是否显示楼层号")
  showfloor?: int64;

  @doc("是否显示话题")
  showtopic?: int64;

  @doc("是否显示“UP觉得很赞”标志")
  show_up_flag?: boolean;

  @doc("是否只读评论区")
  read_only?: boolean;

  @doc("是否显示删除记录")
  show_del_log?: boolean;

}

/**
 * control 对象
 */
@doc("control 数据模型")
model Control {
  @doc("(?)")
  input_disable?: boolean;

  @doc("评论框文字")
  root_input_text?: string;

  @doc("评论框文字")
  child_input_text?: string;

  @doc("空评论区文字")
  bg_text?: string;

  @doc("评论是否筛选后可见")
  web_selection?: boolean;

  @doc("答题页面链接文字")
  answer_guide_text?: string;

  @doc("答题页面图标 url")
  answer_guide_icon_url?: string;

  @doc("答题页面 ios url")
  answer_guide_ios_url?: string;

  @doc("答题页面安卓 url")
  answer_guide_android_url?: string;

}

/**
 * page 对象
 */
@doc("page 数据模型")
model Page {
  @doc("二级评论数")
  count?: int64;

  @doc("当前页码")
  num?: int64;

  @doc("每页项数")
  size?: int64;

  @doc("内容")
  项?: unknown;

  @doc("对话评论条目 1")
  field_0?: Record<unknown>;

  @doc("对话评论条目 (n+1)")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

}

/**
 * upper 对象
 */
@doc("upper 数据模型")
model Upper {
  @doc("UP 主 mid")
  mid?: int64;

}

/**
 * 获取指定评论对话树
 */
@route("/x/v2/reply/dialog/cursor")
@tag("Comment")
interface 获取指定评论对话树 {
  @get
  @doc("获取指定评论对话树")
  获取指定评论对话树(
    @query @doc("APP登录 Token") access_key: string,
    @query @doc("评论区类型代码") type: int64,
    @query @doc("目标评论区 id") oid: int64,
    @query @doc("根回复 rpid") root: int64,
    @query @doc("对话树根 rpid") dialog: int64,
    @query @doc("每页最大项数") size: int64,
    @query @doc("(?)") min_floor: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("数据本体") data?: unknown,
    @query @doc("页楼层信息") cursor?: Record<unknown>,
    @query @doc("对话楼层信息") dialog?: Record<unknown>,
    @query @doc("评论对话树列表") replies?: unknown[],
    @query @doc("(?)") assist?: int64,
    @query @doc("(?)") blacklist?: int64,
    @query @doc("(?)") vote?: int64,
    @query @doc("(?)") lottery?: int64,
    @query @doc("评论区显示控制") config?: Record<unknown>,
    @query @doc("UP主 mid") upper?: Record<unknown>,
    @query @doc("显示 bvid?") show_bvid?: boolean,
    @query @doc("评论区输入属性") control?: Record<unknown>,
    @query @doc("(?)") note?: int64,
    @query @doc("本页最低对话楼层") min_floor?: int64,
    @query @doc("本页最高对话楼层") max_floor?: int64,
    @query @doc("本页项数") size?: int64,
    @query @doc("二级评论最低对话楼层") min_floor?: int64,
    @query @doc("二级评论最高对话楼层") max_floor?: int64,
    @query @doc("内容") 项?: unknown,
    @query @doc("对话评论条目 1") field_0?: Record<unknown>,
    @query @doc("对话评论条目 (n+1)") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("是否显示管理置顶") showadmin?: int64,
    @query @doc("？") showentry?: int64,
    @query @doc("是否显示楼层号") showfloor?: int64,
    @query @doc("是否显示话题") showtopic?: int64,
    @query @doc("是否显示“UP 觉得很赞”标志") show_up_flag?: boolean,
    @query @doc("是否只读评论区") read_only?: boolean,
    @query @doc("是否显示删除记录") show_del_log?: boolean,
    @query @doc("UP 主 mid") mid?: int64,
    @query @doc("(?)") input_disable?: boolean,
    @query @doc("评论框文字") root_input_text?: string,
    @query @doc("评论框文字") child_input_text?: string,
    @query @doc("空评论区文字") bg_text?: string,
    @query @doc("评论是否筛选后可见") web_selection?: boolean,
    @query @doc("答题页面链接文字") answer_guide_text?: string,
    @query @doc("答题页面图标 url") answer_guide_icon_url?: string,
    @query @doc("答题页面 ios url") answer_guide_ios_url?: string,
    @query @doc("答题页面安卓 url") answer_guide_android_url?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("页楼层信息")
  cursor?: Record<unknown>;

  @doc("对话楼层信息")
  dialog?: Record<unknown>;

  @doc("评论对话树列表")
  replies?: unknown[];

  @doc("(?)")
  assist?: int64;

  @doc("(?)")
  blacklist?: int64;

  @doc("(?)")
  vote?: int64;

  @doc("(?)")
  lottery?: int64;

  @doc("评论区显示控制")
  config?: Record<unknown>;

  @doc("UP主 mid")
  upper?: Record<unknown>;

  @doc("显示 bvid?")
  show_bvid?: boolean;

  @doc("评论区输入属性")
  control?: Record<unknown>;

  @doc("(?)")
  note?: int64;

}

/**
 * cursor 对象
 */
@doc("cursor 数据模型")
model Cursor {
  @doc("本页最低对话楼层")
  min_floor?: int64;

  @doc("本页最高对话楼层")
  max_floor?: int64;

  @doc("本页项数")
  size?: int64;

}

/**
 * dialog 对象
 */
@doc("dialog 数据模型")
model Dialog {
  @doc("二级评论最低对话楼层")
  min_floor?: int64;

  @doc("二级评论最高对话楼层")
  max_floor?: int64;

  @doc("内容")
  项?: unknown;

  @doc("对话评论条目 1")
  field_0?: Record<unknown>;

  @doc("对话评论条目 (n+1)")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

}

/**
 * config 对象
 */
@doc("config 数据模型")
model Config {
  @doc("是否显示管理置顶")
  showadmin?: int64;

  @doc("？")
  showentry?: int64;

  @doc("是否显示楼层号")
  showfloor?: int64;

  @doc("是否显示话题")
  showtopic?: int64;

  @doc("是否显示“UP 觉得很赞”标志")
  show_up_flag?: boolean;

  @doc("是否只读评论区")
  read_only?: boolean;

  @doc("是否显示删除记录")
  show_del_log?: boolean;

}

/**
 * upper 对象
 */
@doc("upper 数据模型")
model Upper {
  @doc("UP 主 mid")
  mid?: int64;

}

/**
 * control 对象
 */
@doc("control 数据模型")
model Control {
  @doc("(?)")
  input_disable?: boolean;

  @doc("评论框文字")
  root_input_text?: string;

  @doc("评论框文字")
  child_input_text?: string;

  @doc("空评论区文字")
  bg_text?: string;

  @doc("评论是否筛选后可见")
  web_selection?: boolean;

  @doc("答题页面链接文字")
  answer_guide_text?: string;

  @doc("答题页面图标 url")
  answer_guide_icon_url?: string;

  @doc("答题页面 ios url")
  answer_guide_ios_url?: string;

  @doc("答题页面安卓 url")
  answer_guide_android_url?: string;

}

/**
 * 获取评论区热评
 */
@route("/x/v2/reply/hot")
@tag("Comment")
interface 获取评论区热评 {
  @get
  @doc("获取评论区热评")
  获取评论区热评(
    @query @doc("APP登录 Token") access_key: string,
    @query @doc("评论区类型代码") type: int64,
    @query @doc("目标评论区 id") oid: int64,
    @query @doc("根回复 rpid") root: int64,
    @query @doc("每页项数") ps: int64,
    @query @doc("页码") pn: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("数据本体") data?: unknown,
    @query @doc("页面信息") page?: Record<unknown>,
    @query @doc("热评列表") replies?: Record<unknown>,
    @query @doc("总评论数") acount?: int64,
    @query @doc("热评数") count?: int64,
    @query @doc("当前页码") num?: int64,
    @query @doc("每页项数") size?: int64,
    @query @doc("内容") 项?: unknown,
    @query @doc("热评条目 1") field_0?: Record<unknown>,
    @query @doc("热评条目 (n+1)") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("页面信息")
  page?: Record<unknown>;

  @doc("热评列表")
  replies?: Record<unknown>;

}

/**
 * page 对象
 */
@doc("page 数据模型")
model Page {
  @doc("总评论数")
  acount?: int64;

  @doc("热评数")
  count?: int64;

  @doc("当前页码")
  num?: int64;

  @doc("每页项数")
  size?: int64;

  @doc("内容")
  项?: unknown;

  @doc("热评条目 1")
  field_0?: Record<unknown>;

  @doc("热评条目 (n+1)")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

}

/**
 * 获取指定评论信息
 */
@route("/x/v2/reply/info")
@tag("Comment")
interface 获取指定评论信息 {
  @get
  @doc("获取指定评论信息")
  获取指定评论信息(
    @query @doc("评论区类型代码") type: int64,
    @query @doc("目标评论区 id") oid: int64,
    @query @doc("目标评论 rpid") rpid: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("评论条目") data?: unknown,
  ): ApiResponse<unknown>;
}

/**
 * 获取评论区评论总数
 */
@route("/x/v2/reply/count")
@tag("Comment")
interface 获取评论区评论总数 {
  @get
  @doc("获取评论区评论总数")
  获取评论区评论总数(
    @query @doc("评论区类型代码") type: int64,
    @query @doc("目标评论区 id") oid: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("数据本体") data?: unknown,
    @query @doc("评论条数") count?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("评论条数")
  count?: int64;

}
