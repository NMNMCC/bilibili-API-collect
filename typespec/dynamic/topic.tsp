import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Dynamic;

/**
 * 获取话题下动态列表
 */
@route("/x/polymer/web-dynamic/v1/feed/topic")
@tag("Dynamic")
interface 获取话题下动态列表 {
  @get
  @doc("获取话题下动态列表")
  获取话题下动态列表(
    @query @doc("话题 ID") topic_id: int64,
    @query @doc("排序方式") sort_by: int64,
    @query @doc("偏移量") offset: string,
    @query @doc("每页数量") page_size: int64,
    @query @doc("来源") source: string,
    @query @doc("功能模块") features: string,
    @query @doc("`333.1036`") web_location: string,
    @query @doc("返回值") code?: int64,
    @query @doc("数据本体") data?: Record<unknown>,
    @query @doc("错误信息") message?: string,
    @query @doc("`1`") ttl?: int64,
    @query @doc("相关话题?") related_topics?: Record<unknown>,
    @query @doc("话题卡片列表") topic_card_list?: Record<unknown>,
    @query @doc("是否有更多") has_more?: boolean,
    @query @doc("动态列表") items?: unknown,
    @query @doc("偏移量") offset?: string,
    @query @doc("排序方式配置") topic_sort_by_conf?: Record<unknown>,
    @query @doc("动态") dynamic_card_item?: Record<unknown>,
    @query @doc("话题类型?") topic_type?: string,
    @query @doc("全部排序方式") all_sort_by?: unknown,
    @query @doc("默认排序方式") default_sort_by?: int64,
    @query @doc("展示的排序方式") show_sort_by?: int64,
    @query @doc("排序方式") sort_by?: int64,
    @query @doc("排序名称") sort_name?: string,
  ): ApiResponse<Datatopic_card_listtopic_sort_by_conf>;
}

/**
 * data.topic_card_list.topic_sort_by_conf 对象
 */
@doc("data.topic_card_list.topic_sort_by_conf 数据模型")
model Datatopic_card_listtopic_sort_by_conf {
  @doc("偏移量")
  offset?: string;

  @doc("每页数量")
  page_size?: int64;

  @doc("来源")
  source?: string;

  @doc("功能模块")
  features?: string;

  @doc("`333.1036`")
  web_location?: string;

  @doc("返回值")
  code?: int64;

  @doc("数据本体")
  data?: Record<unknown>;

  @doc("错误信息")
  message?: string;

  @doc("`1`")
  ttl?: int64;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("相关话题?")
  related_topics?: Record<unknown>;

  @doc("话题卡片列表")
  topic_card_list?: Record<unknown>;

}

/**
 * data.topic_card_list 对象
 */
@doc("data.topic_card_list 数据模型")
model Datatopic_card_list {
  @doc("是否有更多")
  has_more?: boolean;

  @doc("动态列表")
  items?: unknown;

  @doc("偏移量")
  offset?: string;

  @doc("排序方式配置")
  topic_sort_by_conf?: Record<unknown>;

}

/**
 * data.topic_card_list.items[] 对象
 */
@doc("data.topic_card_list.items[] 数据模型")
model Datatopic_card_listitems {
}

/**
 * data.items[] 对象
 */
@doc("data.items[] 数据模型")
model Dataitems {
  @doc("话题类型?")
  topic_type?: string;

}

/**
 * data.topic_card_list.topic_sort_by_conf 对象
 */
@doc("data.topic_card_list.topic_sort_by_conf 数据模型")
model Datatopic_card_listtopic_sort_by_conf {
  @doc("全部排序方式")
  all_sort_by?: unknown;

  @doc("默认排序方式")
  default_sort_by?: int64;

  @doc("展示的排序方式")
  show_sort_by?: int64;

}

/**
 * data.topic_card_list.topic_sort_by_conf.all_sort_by[] 对象
 */
@doc("data.topic_card_list.topic_sort_by_conf.all_sort_by[] 数据模型")
model Datatopic_card_listtopic_sort_by_confall_sort_by {
  @doc("排序方式")
  sort_by?: int64;

  @doc("排序名称")
  sort_name?: string;

}

/**
 * 搜索发布话题
 */
@route("/x/topic/pub/search")
@tag("Dynamic")
interface 搜索发布话题 {
  @get
  @doc("搜索发布话题")
  搜索发布话题(
    @query @doc("关键词") keywords: string,
    @query @doc("空") content: string,
    @query @doc("上传 id?") upload_id: string,
    @query @doc("页大小") page_size: int32,
    @query @doc("1") page_num: int32,
    @query @doc("偏移") offset: int32,
    @query @doc("333.1365") web_location: string,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("新建话题?") new_topic?: Record<unknown>,
    @query @doc("false") has_create_jurisdiction?: boolean,
    @query @doc("话题列表") topic_items?: unknown[],
    @query @doc("请求 id") request_id?: string,
    @query @doc("页信息") page_info?: Record<unknown>,
    @query @doc("请求参数中的 `keywords`") name?: string,
    @query @doc("话题 id") id?: int64,
    @query @doc("话题名") name?: string,
    @query @doc("浏览数") view?: int64,
    @query @doc("讨论数") discuss?: int64,
    @query @doc("状态描述") stat_desc?: string,
    @query @doc("话题描述") description?: string,
    @query @doc("false") show_interact_data?: boolean,
    @query @doc("下次请求可用的偏移") offset?: int64,
    @query @doc("是否有更多数据") has_more?: boolean,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("新建话题?")
  new_topic?: Record<unknown>;

  @doc("false")
  has_create_jurisdiction?: boolean;

  @doc("话题列表")
  topic_items?: unknown[];

  @doc("请求 id")
  request_id?: string;

  @doc("页信息")
  page_info?: Record<unknown>;

}

/**
 * new_topic 对象
 */
@doc("new_topic 数据模型")
model New_topic {
  @doc("请求参数中的 `keywords`")
  name?: string;

  @doc("话题 id")
  id?: int64;

  @doc("话题名")
  name?: string;

  @doc("浏览数")
  view?: int64;

  @doc("讨论数")
  discuss?: int64;

  @doc("状态描述")
  stat_desc?: string;

  @doc("话题描述")
  description?: string;

  @doc("false")
  show_interact_data?: boolean;

}

/**
 * page_info 对象
 */
@doc("page_info 数据模型")
model Page_info {
  @doc("下次请求可用的偏移")
  offset?: int64;

}

/**
 * 推荐搜索话题?
 */
@route("/x/topic/pub/rcmd/search")
@tag("Dynamic")
interface 推荐搜索话题 {
  @get
  @doc("推荐搜索话题?")
  推荐搜索话题(
    @query @doc("空") keywords: string,
    @query @doc("上传 id?") upload_id: string,
    @query @doc("333.1365") web_location: string,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("数据本体") data?: string,
    @query @doc("空?") topic_items?: unknown,
    @query @doc("请求 id") request_id?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("空?")
  topic_items?: unknown;

  @doc("请求 id")
  request_id?: string;

}

/**
 * 推荐话题
 */
@route("/x/topic/web/dynamic/rcmd")
@tag("Dynamic")
interface 推荐话题 {
  @get
  @doc("推荐话题")
  推荐话题(
    @query @doc("来源") source: string,
    @query @doc("获取数量") page_size: int64,
    @query @doc("`333.1365`") web_location: string,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("`1`") ttl?: int64,
    @query @doc("数据本体") data?: string,
    @query @doc("话题列表") topic_items?: unknown,
    @query @doc("讨论数") discuss?: int64,
    @query @doc("动态数") dynamics?: int64,
    @query @doc("话题 id") id?: int64,
    @query @doc("跳转 URL") jump_url?: string,
    @query @doc("话题名") name?: string,
    @query @doc("是否显示互动数据?") show_interact_data?: boolean,
    @query @doc("浏览数") view?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("话题列表")
  topic_items?: unknown;

}

/**
 * data.topic_items[] 对象
 */
@doc("data.topic_items[] 数据模型")
model Datatopic_items {
  @doc("讨论数")
  discuss?: int64;

  @doc("动态数")
  dynamics?: int64;

  @doc("话题 id")
  id?: int64;

  @doc("跳转 URL")
  jump_url?: string;

  @doc("话题名")
  name?: string;

  @doc("是否显示互动数据?")
  show_interact_data?: boolean;

  @doc("浏览数")
  view?: int64;

}

/**
 * 检查话题是否存在
 */
@route("/x/topic/pub/is_existed")
@tag("Dynamic")
interface 检查话题是否存在 {
  @get
  @doc("检查话题是否存在")
  检查话题是否存在(
    @query @doc("话题名") topic: string,
    @query @doc("返回值") code?: int64,
    @query @doc("数据本体") data?: Record<unknown>,
    @query @doc("错误信息") message?: string,
    @query @doc("`1`") ttl?: int64,
    @query @doc("是否已经存在") already_existed?: boolean,
    @query @doc("类似话题") synonym_topic?: Record<unknown>,
    @query @doc("话题列表") topic_items?: unknown,
    @query @doc("话题描述") description?: string,
    @query @doc("讨论数") discuss?: int64,
    @query @doc("动态数") dynamics?: int64,
    @query @doc("话题 id") id?: int64,
    @query @doc("跳转 URL") jump_url?: string,
    @query @doc("话题名") name?: string,
    @query @doc("显示互动数据?") show_interact_data?: boolean,
    @query @doc("浏览数") view?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("是否已经存在")
  already_existed?: boolean;

  @doc("类似话题")
  synonym_topic?: Record<unknown>;

}

/**
 * data.synonym_topic 对象
 */
@doc("data.synonym_topic 数据模型")
model Datasynonym_topic {
  @doc("话题列表")
  topic_items?: unknown;

}

/**
 * data.synonym_topic.topic_items[] 对象
 */
@doc("data.synonym_topic.topic_items[] 数据模型")
model Datasynonym_topictopic_items {
  @doc("话题描述")
  description?: string;

  @doc("讨论数")
  discuss?: int64;

  @doc("动态数")
  dynamics?: int64;

  @doc("话题 id")
  id?: int64;

  @doc("跳转 URL")
  jump_url?: string;

  @doc("话题名")
  name?: string;

  @doc("显示互动数据?")
  show_interact_data?: boolean;

  @doc("浏览数")
  view?: int64;

}

/**
 * 获取指定话题详细信息
 */
@route("/x/topic/web/details/top")
@tag("Dynamic")
interface 获取指定话题详细信息 {
  @get
  @doc("获取指定话题详细信息")
  获取指定话题详细信息(
    @query @doc("话题 id") topic_id: int64,
    @query @doc("来源") source: string,
    @query @doc("`333.1036`") web_location: string,
    @query @doc("返回值") code?: int64,
    @query @doc("数据本体") data?: Record<unknown>,
    @query @doc("错误信息") message?: string,
    @query @doc("`1`") ttl?: int64,
    @query @doc("点击区域卡片?") click_area_card?: Record<unknown>,
    @query @doc("功能卡片") functional_card?: Record<unknown>,
    @query @doc("话题详情") top_details?: Record<unknown>,
    @query @doc("引流卡片") traffic_card?: Record<unknown>,
    @query @doc("奖励点") benefit_point?: string,
    @query @doc("卡片描述") card_desc?: string,
    @query @doc("图标 URL") icon_url?: string,
    @query @doc("跳转标题") jump_title?: string,
    @query @doc("跳转 URL") jump_url?: string,
    @query @doc("名称") name?: string,
    @query @doc("是否关闭发布层入口?") close_pub_layer_entry?: boolean,
    @query @doc("是否有创建权限?") has_create_jurisdiction?: boolean,
    @query @doc("操作内容?") operation_content?: Record<unknown>,
    @query @doc("话题创建者") topic_creator?: Record<unknown>,
    @query @doc("话题详情") topic_item?: Record<unknown>,
    @query @doc("话题字体颜色?") word_color?: int64,
    @query @doc("头像 URL") face?: string,
    @query @doc("昵称") name?: string,
    @query @doc("mid (UID)") uid?: int64,
    @query @doc("背景色") back_color?: string,
    @query @doc("创建时间") ctime?: int64,
    @query @doc("话题描述") description?: string,
    @query @doc("讨论数") discuss?: int64,
    @query @doc("动态数") dynamics?: int64,
    @query @doc("收藏数") fav?: int64,
    @query @doc("话题 id") id?: int64,
    @query @doc("跳转 URL") jump_url?: string,
    @query @doc("点赞数") like?: int64,
    @query @doc("话题名") name?: string,
    @query @doc("分享数") share?: int64,
    @query @doc("分享图片 URL") share_pic?: string,
    @query @doc("分享的 URL") share_url?: string,
    @query @doc("显示互动数据?") show_interact_data?: boolean,
    @query @doc("浏览数") view?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("点击区域卡片?")
  click_area_card?: Record<unknown>;

  @doc("功能卡片")
  functional_card?: Record<unknown>;

  @doc("话题详情")
  top_details?: Record<unknown>;

}

/**
 * data.click_area_card 对象
 */
@doc("data.click_area_card 数据模型")
model Dataclick_area_card {
}

/**
 * data.functional_card 对象
 */
@doc("data.functional_card 数据模型")
model Datafunctional_card {
  @doc("引流卡片")
  traffic_card?: Record<unknown>;

}

/**
 * data.functional_card.traffic_card 对象
 */
@doc("data.functional_card.traffic_card 数据模型")
model Datafunctional_cardtraffic_card {
  @doc("奖励点")
  benefit_point?: string;

  @doc("卡片描述")
  card_desc?: string;

  @doc("图标 URL")
  icon_url?: string;

  @doc("跳转标题")
  jump_title?: string;

  @doc("跳转 URL")
  jump_url?: string;

  @doc("名称")
  name?: string;

}

/**
 * data.top_details 对象
 */
@doc("data.top_details 数据模型")
model Datatop_details {
  @doc("是否关闭发布层入口?")
  close_pub_layer_entry?: boolean;

  @doc("是否有创建权限?")
  has_create_jurisdiction?: boolean;

  @doc("操作内容?")
  operation_content?: Record<unknown>;

  @doc("话题创建者")
  topic_creator?: Record<unknown>;

  @doc("话题详情")
  topic_item?: Record<unknown>;

  @doc("话题字体颜色?")
  word_color?: int64;

}

/**
 * data.top_details.operation_content 对象
 */
@doc("data.top_details.operation_content 数据模型")
model Datatop_detailsoperation_content {
}

/**
 * data.top_details.topic_creator 对象
 */
@doc("data.top_details.topic_creator 数据模型")
model Datatop_detailstopic_creator {
  @doc("头像 URL")
  face?: string;

  @doc("昵称")
  name?: string;

  @doc("mid (UID)")
  uid?: int64;

}

/**
 * data.top_details.topic_item 对象
 */
@doc("data.top_details.topic_item 数据模型")
model Datatop_detailstopic_item {
  @doc("背景色")
  back_color?: string;

  @doc("创建时间")
  ctime?: int64;

  @doc("话题描述")
  description?: string;

  @doc("讨论数")
  discuss?: int64;

  @doc("动态数")
  dynamics?: int64;

  @doc("收藏数")
  fav?: int64;

  @doc("话题 id")
  id?: int64;

  @doc("跳转 URL")
  jump_url?: string;

  @doc("点赞数")
  like?: int64;

  @doc("话题名")
  name?: string;

  @doc("分享数")
  share?: int64;

  @doc("分享图片 URL")
  share_pic?: string;

  @doc("分享的 URL")
  share_url?: string;

  @doc("显示互动数据?")
  show_interact_data?: boolean;

  @doc("浏览数")
  view?: int64;

}
