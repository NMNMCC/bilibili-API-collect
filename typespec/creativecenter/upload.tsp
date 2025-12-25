import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Creativecenter;

/**
 * 上传封面
 */
@route("/x/vu/web/cover/up")
@tag("Creativecenter")
interface 上传封面 {
  @post
  @doc("上传封面")
  上传封面(
    @query @doc("当前时间") ts: int64,
    @body @doc("CSRF Token (位于 Cookie 中 bili_jct)") csrf: string,
    @body @doc("视频封面") cover: unknown,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
    @body @doc("信息本体") data?: Record<unknown>,
    @body @doc("封面 URL") url?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("封面 URL")
  url?: string;

}

/**
 * 获取上传模板列表
 */
@route("/x/vupre/web/tpls")
@tag("Creativecenter")
interface 获取上传模板列表 {
  @get
  @doc("获取上传模板列表")
  获取上传模板列表(
    @query @doc("当前时间") t: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("模板列表") data?: unknown[],
    @query @doc("模板 ID") tid?: int64,
    @query @doc("模板名称") name?: string,
    @query @doc("分区 ID") typeid?: int64,
    @query @doc("标题") title?: string,
    @query @doc("标签") tags?: string,
    @query @doc("描述") description?: string,
    @query @doc("版权类型") copyright?: int64,
    @query @doc("属性") attribute?: int64,
    @query @doc("是否默认") is_default?: int64,
  ): ApiResponse<unknown>;
}

/**
 * 编辑上传模板
 */
@route("/x/vupre/web/tpl/update")
@tag("Creativecenter")
interface 编辑上传模板 {
  @post
  @doc("编辑上传模板")
  编辑上传模板(
    @query @doc("当前时间") t: int64,
    @body @doc("模板 ID") tid: int64,
    @body @doc("模板名称") name: string,
    @body @doc("标题") title: string,
    @body @doc("标签") keywords: string,
    @body @doc("描述") description: string,
    @body @doc("分区 ID") typeid: int64,
    @body @doc("版权类型") arctype: string,
    @body @doc("是否默认") is_default: int64,
    @body @doc("CSRF Token (位于 Cookie 中 bili_jct)") csrf: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
  ): ApiResponse<unknown>;
}

/**
 * 查询话题
 */
@route("/x/vupre/web/topic/type")
@tag("Creativecenter")
interface 查询话题 {
  @get
  @doc("查询话题")
  查询话题(
    @query @doc("分区 ID") type_id: int64,
    @query @doc("页码") pn: int64,
    @query @doc("每页个数") ps: int64,
    @query @doc("视频标题") title: string,
    @query @doc("当前时间") t: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("话题列表") data?: unknown[],
    @query @doc("话题 ID") topic_id?: int64,
    @query @doc("话题名称") topic_name?: string,
    @query @doc("话题描述") description?: string,
    @query @doc("任务 ID") mission_id?: int64,
    @query @doc("活动文本") activity_text?: string,
    @query @doc("活动描述") activity_description?: string,
  ): ApiResponse<unknown>;
}

/**
 * 话题搜索
 */
@route("/x/vupre/web/topic/search")
@tag("Creativecenter")
interface 话题搜索 {
  @get
  @doc("话题搜索")
  话题搜索(
    @query @doc("每页个数") page_size: int64,
    @query @doc("个数偏移") offset: int64,
    @query @doc("关键字") keywords: string,
    @query @doc("当前时间") t: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("搜索结果") result?: Record<unknown>,
    @query @doc("？") has_create_jurisdiction?: boolean,
    @query @doc("是否为新话题？") is_new_topic?: boolean,
    @query @doc("提示信息") tips?: string,
    @query @doc("分页信息") page_info?: Record<unknown>,
    @query @doc("话题列表") topics?: unknown[],
    @query @doc("是否有更多") has_more?: boolean,
    @query @doc("偏移量") offset?: int64,
    @query @doc("页码") page_number?: int64,
    @query @doc("？") act_protocol?: string,
    @query @doc("？") activity_sign?: string,
    @query @doc("话题描述") description?: string,
    @query @doc("话题 ID") id?: int64,
    @query @doc("任务 ID") mission_id?: int64,
    @query @doc("话题名称") name?: string,
    @query @doc("状态？") state?: int64,
    @query @doc("？") uname?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("搜索结果")
  result?: Record<unknown>;

}

/**
 * result 对象
 */
@doc("result 数据模型")
model Result {
  @doc("？")
  has_create_jurisdiction?: boolean;

  @doc("是否为新话题？")
  is_new_topic?: boolean;

  @doc("提示信息")
  tips?: string;

  @doc("分页信息")
  page_info?: Record<unknown>;

  @doc("话题列表")
  topics?: unknown[];

}

/**
 * page_info 对象
 */
@doc("page_info 数据模型")
model Page_info {
  @doc("是否有更多")
  has_more?: boolean;

  @doc("偏移量")
  offset?: int64;

  @doc("页码")
  page_number?: int64;

  @doc("？")
  act_protocol?: string;

  @doc("？")
  activity_sign?: string;

  @doc("话题描述")
  description?: string;

  @doc("话题 ID")
  id?: int64;

  @doc("任务 ID")
  mission_id?: int64;

  @doc("话题名称")
  name?: string;

  @doc("状态？")
  state?: int64;

  @doc("？")
  uname?: string;

}

/**
 * 标签可用性检查
 */
@route("/x/vupre/web/topic/tag/check")
@tag("Creativecenter")
interface 标签可用性检查 {
  @get
  @doc("标签可用性检查")
  标签可用性检查(
    @query @doc("需要检查的标签") tag: string,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("标签状态") code?: int64,
    @query @doc("错误返回") content?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("标签状态")
  code?: int64;

  @doc("错误返回")
  content?: string;

}

/**
 * 获取简介相关信息
 */
@route("/x/vupre/web/archive/desc/format")
@tag("Creativecenter")
interface 获取简介相关信息 {
  @get
  @doc("获取简介相关信息")
  获取简介相关信息(
    @query @doc("分区 ID") typeid: int64,
    @query @doc("版权类型") copyright: int64,
    @query @doc("当前时间") t: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("null") data?: Record<unknown>,
    @query @doc("分区 ID") typeid?: int64,
    @query @doc("ID") id?: int64,
    @query @doc("未知") lang?: int64,
    @query @doc("版权类型") copyright?: int64,
    @query @doc("简介输入框提示文字") components?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("分区 ID")
  typeid?: int64;

  @doc("ID")
  id?: int64;

  @doc("未知")
  lang?: int64;

  @doc("版权类型")
  copyright?: int64;

  @doc("简介输入框提示文字")
  components?: string;

}

/**
 * 获取上传线路
 */
@route("/preupload")
@tag("Creativecenter")
interface 获取上传线路 {
  @get
  @doc("获取上传线路")
  获取上传线路(
    @query @doc("返回值") OK?: int64,
    @query @doc("上传线路列表") lines?: unknown[],
    @query @doc("未知") probe?: Record<unknown>,
    @query @doc("未知") post?: unknown,
    @query @doc("操作系统") os?: string,
    @query @doc("查询参数") query?: string,
    @query @doc("探测 URL") probe_url?: string,
  ): ApiResponse<unknown>;
}

/**
 * 预测稿件类型
 */
@route("/x/vupre/web/archive/types/predict")
@tag("Creativecenter")
interface 预测稿件类型 {
  @post
  @doc("预测稿件类型")
  预测稿件类型(
    @query @doc("当前时间") ts: int64,
    @query @doc("CSRF Token (位于 Cookie 中 bili_jct)") csrf: string,
    @body @doc("视频文件名") filename: string,
    @body @doc("视频标题") title: string,
    @body @doc("上传 ID") upload_id: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
    @body @doc("信息本体") data?: unknown[],
    @body @doc("内容") 项?: unknown,
    @body @doc("视频类型 1") field_0?: Record<unknown>,
    @body @doc("视频类型 2") field_1?: Record<unknown>,
    @body @doc("……") __?: Record<unknown>,
    @body @doc("视频类型 (n+1)") n?: Record<unknown>,
    @body @doc("子分区 ID") id?: int64,
    @body @doc("总分区 ID") parent?: int64,
    @body @doc("总分区名称") parent_name?: string,
    @body @doc("子分区名称") name?: string,
    @body @doc("子分区描述") description?: string,
    @body @doc("子分区描述") desc?: string,
    @body @doc("原创简介说明") intro_original?: string,
    @body @doc("转载简介说明") intro_copy?: string,
    @body @doc("注意事项") notice?: string,
    @body @doc("版权信息?") copy_right?: int64,
    @body @doc("是否显示?") show?: boolean,
    @body @doc("排序权重?") rank?: int64,
    @body @doc("最大视频数量?") max_video_count?: int64,
    @body @doc("空") request_id?: string,
    @body @doc("null") human_type?: unknown,
    @body @doc("新分区id") id?: int64,
  ): ApiResponse<unknown>;
}

/**
 * 预测稿件标签
 */
@route("/x/vupre/web/tag/recommend")
@tag("Creativecenter")
interface 预测稿件标签 {
  @get
  @doc("预测稿件标签")
  预测稿件标签(
    @query @doc("同 [预测稿件类型](#预测稿件类型) 的 `upload_id`") upload_id: string,
    @query @doc("子分区 ID") subtype_id: int32,
    @query @doc("视频标题") title: string,
    @query @doc("同 [预测稿件类型](#预测稿件类型) 的 `filename`") filename: string,
    @query @doc("视频简介") description: string,
    @query @doc("视频封面 URL") cover_url: string,
    @query @doc("当前 UNIX 毫秒时间戳") t: int32,
    @query @doc("返回值") code?: int32,
    @query @doc("标签信息") data?: unknown[],
    @query @doc("错误信息") message?: string,
    @query @doc("请求 ID") request_id?: string,
    @query @doc("内容") 项?: unknown,
    @query @doc("标签 1") field_0?: Record<unknown>,
    @query @doc("标签 2") field_1?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("标签 (n+1)") n?: Record<unknown>,
    @query @doc("标签名称") tag?: string,
    @query @doc("0") checked?: int32,
    @query @doc("请求 ID") request_id?: string,
  ): ApiResponse<unknown>;
}

/**
 * 投递视频稿件（Web）
 */
@route("/x/vu/web/add/v3")
@tag("Creativecenter")
interface 投递视频稿件web {
  @post
  @doc("投递视频稿件（Web）")
  投递视频稿件web(
    @query @doc("当前时间") ts: int64,
    @query @doc("CSRF Token (位于 Cookie 中 bili_jct)") csrf: string,
    @body @doc("视频信息") videos: unknown[],
    @body @doc("视频封面 URL") cover: string,
    @body @doc("视频封面 URL (比例为 4:3)") cover43: string,
    @body @doc("视频标题") title: string,
    @body @doc("1: 自制<br />2: 转载") copyright: int64,
    @body @doc("分区 ID") tid: int64,
    @body @doc("新分区ID") human_type2: int64,
    @body @doc("视频标签") tag: string,
    @body @doc("简介格式 ID?") desc_format_id: int64,
    @body @doc("视频简介") desc: string,
    @body @doc("视频简介额外信息") desc_v2: string,
    @body @doc("是否允许二创") recreate: int64,
    @body @doc("粉丝动态") dynamic: string,
    @body @doc("互动视频?") interactive: int64,
    @body @doc("活动预约?") act_reserve_create: int64,
    @body @doc("是否推送到动态") no_disturbance: int64,
    @body @doc("是否允许转载") no_reprint: int64,
    @body @doc("字幕信息") subtitle: Record<unknown>,
    @body @doc("杜比音效") dolby: int64,
    @body @doc("无损音乐") lossless_music: int64,
    @body @doc("精选评论") up_selection_reply: boolean,
    @body @doc("关闭评论") up_close_reply: boolean,
    @body @doc("关闭弹幕") up_close_danmu: boolean,
    @body @doc("平台类型?") web_os: int64,
    @body @doc("非必要") is_only_self?: unknown,
    @body @doc("非必要") topic_id?: unknown,
    @body @doc("非必要") mission_id?: unknown,
    @body @doc("是否全景") is_360: int64,
    @body @doc("创作者声明") neutral_mark: string,
    @body @doc("视频文件名") filename: string,
    @body @doc("分 P 标题") title: string,
    @body @doc("分 P 简介") desc: string,
    @body @doc("分 P cid") cid: int64,
    @body @doc("是否启用字幕投稿") open: int64,
    @body @doc("字幕投稿语言") lan: string,
  ): ApiResponse<Subtitle>;
}

/**
 * subtitle 对象
 */
@doc("subtitle 数据模型")
model Subtitle {
  @doc("是否启用字幕投稿")
  open?: int64;

  @doc("字幕投稿语言")
  lan?: string;

}

/**
 * 编辑视频稿件（Web）
 */
@route("/x/vu/web/edit")
@tag("Creativecenter")
interface 编辑视频稿件web {
  @post
  @doc("编辑视频稿件（Web）")
  编辑视频稿件web(
    @query @doc("当前时间") t: int64,
    @query @doc("CSRF Token (位于 Cookie 中 bili_jct)") csrf: string,
    @body @doc("视频 ID") aid: int64,
    @body @doc("视频信息") videos: unknown[],
    @body @doc("视频标题") title: string,
    @body @doc("视频封面 URL") cover: string,
    @body @doc("视频封面 URL (比例为 4:3)") cover43: string,
    @body @doc("1: 自制<br />2: 转载") copyright: int64,
    @body @doc("分区 ID") tid: int64,
    @body @doc("视频标签") tag: string,
    @body @doc("简介格式 ID?") desc_format_id: int64,
    @body @doc("视频简介") desc: string,
    @body @doc("视频简介额外信息") desc_v2: string,
    @body @doc("是否允许二创") recreate: int64,
    @body @doc("粉丝动态") dynamic: string,
    @body @doc("互动视频?") interactive: int64,
    @body @doc("活动预约?") act_reserve_create: int64,
    @body @doc("是否推送到动态") no_disturbance: int64,
    @body @doc("是否允许转载") no_reprint: int64,
    @body @doc("字幕信息") subtitle: Record<unknown>,
    @body @doc("操作系统") web_os: int64,
    @body @doc("任务 ID") mission_id: int64,
    @body @doc("CSRF Token (位于 Cookie 中 bili_jct)") csrf: string,
    @body @doc("未知") new_web_edit: int64,
    @body @doc("是否全景") is_360: int64,
    @body @doc("非必要") is_only_self?: unknown,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
    @body @doc("信息本体") data?: Record<unknown>,
  ): ApiResponse<unknown>;
}

/**
 * 获取新分区ID
 */
@route("/x/vupre/web/archive/human/type2/list")
@tag("Creativecenter")
interface 获取新分区id {
  @get
  @doc("获取新分区ID")
  获取新分区id(
    @query @doc("当前时间") t: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") type_list?: unknown[],
    @query @doc("分区ID") id?: int64,
    @query @doc("分区名") name?: string,
  ): ApiResponse<Type_list>;
}

/**
 * type_list 对象
 */
@doc("type_list 数据模型")
model Type_list {
  @doc("分区ID")
  id?: int64;

  @doc("分区名")
  name?: string;

}

/**
 * 上传视频文件
 */
@route("/preupload")
@tag("Creativecenter")
interface 上传视频文件 {
  @get
  @doc("上传视频文件")
  上传视频文件(
    @query @doc("文件名") name: string,
    @query @doc("上传区域?") r: string,
    @query @doc("上传配置?") profile: string,
    @query @doc("上传版本?") probe_version: int64,
    @query @doc("上传 CDN?") upcdn: string,
    @query @doc("上传区域?") zone: string,
    @query @doc("是否使用 SSL?") ssl: int64,
    @query @doc("上传版本?") version: string,
    @query @doc("上传版本?") build: string,
    @query @doc("文件大小") size: int64,
    @query @doc("上传版本?") webVersion: string,
    @query @doc("1") OK?: int64,
    @query @doc("上传凭证") auth?: string,
    @query @doc("业务 ID?") biz_id?: int64,
    @query @doc("重试次数?") chunk_retry?: int64,
    @query @doc("重试延迟?") chunk_retry_delay?: int64,
    @query @doc("分块大小") chunk_size?: int64,
    @query @doc("上传节点") endpoint?: string,
    @query @doc("上传节点列表") endpoints?: unknown[],
    @query @doc("上传参数?") put_query?: string,
    @query @doc("上传线程数") threads?: int64,
    @query @doc("超时时间?") timeout?: int64,
    @query @doc("你的 IP") uip?: string,
    @query @doc("上传地址") upos_uri?: string,
    @query @doc("内容") 项?: unknown,
    @query @doc("上传节点1") field_0?: string,
    @query @doc("……") __?: string,
    @query @doc("上传节点n") n?: string,
    @query @doc("留空") uploads: string,
    @query @doc("输出格式") output: string,
    @query @doc("上传配置?") profile: string,
    @query @doc("文件大小") filesize: int64,
    @query @doc("分块大小") partsize: int64,
    @query @doc("业务 ID?") biz_id: int64,
    @query @doc("1") OK?: int64,
    @query @doc("空间名?") bucket?: string,
    @query @doc("文件名?") key?: string,
    @query @doc("上传 ID") upload_id?: string,
    @query @doc("分块序号") partNumber: int64,
    @query @doc("上传 ID") uploadId: string,
    @query @doc("分块序号") chunk: int64,
    @query @doc("分块总数") chunks: int64,
    @query @doc("该分块大小") size: int64,
    @query @doc("该分块开始位置") start: int64,
    @query @doc("该分块结束位置") end: int64,
    @query @doc("总大小") total: int64,
    @query @doc("输出格式") output: string,
    @query @doc("文件名") name: string,
    @query @doc("上传配置?") profile: string,
    @query @doc("上传 ID") uploadId: string,
    @query @doc("业务 ID?") biz_id: int64,
    @body @doc("各分块信息") parts: unknown[],
    @body @doc("内容") 项: unknown,
    @body @doc("分块信息1") field_0: Record<unknown>,
    @body @doc("分块信息2") field_1: Record<unknown>,
    @body @doc("……") __?: Record<unknown>,
    @body @doc("分块信息n") n: Record<unknown>,
    @body @doc("分块序号") partNumber: int64,
    @body @doc("`etag`") eTag: string,
  ): ApiResponse<unknown>;
}
