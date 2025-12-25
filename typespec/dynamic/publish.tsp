import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Dynamic;

/**
 * 为图片动态上传图片
 */
@route("/x/dynamic/feed/draw/upload_bfs")
@tag("Dynamic")
interface 为图片动态上传图片 {
  @get
  @doc("为图片动态上传图片")
  为图片动态上传图片(
    @body @doc("需要上传的图片文件") file_up: unknown,
    @body @doc("图片类型") category: string,
    @body @doc("不必要") biz?: string,
    @body @doc("CSRF Token (即 Cookie 中 bili_jct)") csrf: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("信息本体") data?: Record<unknown>,
    @body @doc("`1`") ttl?: int64,
    @body @doc("已上传图片 URL") image_url?: string,
    @body @doc("已上传图片宽度") image_width?: int64,
    @body @doc("已上传图片高度") image_height?: int64,
    @body @doc("已上传图片大小") img_size?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("已上传图片 URL")
  image_url?: string;

  @doc("已上传图片宽度")
  image_width?: int64;

  @doc("已上传图片高度")
  image_height?: int64;

  @doc("已上传图片大小")
  img_size?: int64;

}

/**
 * 创建投票
 */
@route("/vote_svr/v1/vote_svr/create_vote")
@tag("Dynamic")
interface 创建投票 {
  @get
  @doc("创建投票")
  创建投票(
    @body @doc("投票标题") info_title_: string,
    @body @doc("投票描述") info_desc_: string,
    @body @doc("投票类型") info_type_: int64,
    @body @doc("最多选几项") info_choice_cnt_: int64,
    @body @doc("投票持续秒数") info_duration_: int64,
    @body @doc("第 n 项选项文字内容") info_options____n___desc_: string,
    @body @doc("第 n 项选项投票图片") info_options____n___img_url_: unknown,
    @body @doc("CSRF Token (即 Cookie 中 bili_jct)") csrf: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") msg?: string,
    @body @doc("错误信息") message?: string,
    @body @doc("信息本体") data?: Record<unknown>,
    @body @doc("投票 id") vote_id?: int64,
    @body @doc("0") __gt__?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("投票 id")
  vote_id?: int64;

  @doc("0")
  __gt__?: int64;

}

/**
 * 发表纯文本动态
 */
@route("/dynamic_svr/v1/dynamic_svr/create")
@tag("Dynamic")
interface 发表纯文本动态 {
  @get
  @doc("发表纯文本动态")
  发表纯文本动态(
    @body @doc("0") dynamic_id: int64,
    @body @doc("4") type: int64,
    @body @doc("0") rid: int64,
    @body @doc("动态内容") content: string,
    @body @doc("0") up_choose_comment: int64,
    @body @doc("0") up_close_comment: int64,
    @body @doc("位置信息") extension: unknown,
    @body @doc("动态中 at 到的用户的 uid") at_uids: string,
    @body @doc("特殊格式控制 (如 at 别人时的蓝字体和链接)") ctrl: unknown[],
    @body @doc("CSRF Token (即 Cookie 中 bili_jct)") csrf_token: string,
    @body @doc("CSRF Token (即 Cookie 中 bili_jct)") csrf: string,
    @body @doc("从全文第几个字开始变蓝") location?: int64,
    @body @doc("1") type?: int64,
    @body @doc("这一段变蓝多少字") length?: int64,
    @body @doc("链接目标") data?: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("数据本体") data?: Record<unknown>,
    @body @doc("0") result?: int64,
    @body @doc("像是服务器日志一样的东西") errmsg?: string,
    @body @doc("动态 id") dynamic_id?: int64,
    @body @doc("1") create_result?: int64,
    @body @doc("动态 id") dynamic_id_str?: string,
    @body @doc("0") __gt_?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("0")
  result?: int64;

  @doc("像是服务器日志一样的东西")
  errmsg?: string;

  @doc("动态 id")
  dynamic_id?: int64;

  @doc("1")
  create_result?: int64;

  @doc("动态 id")
  dynamic_id_str?: string;

  @doc("0")
  __gt_?: int64;

}

/**
 * 发表复杂动态
 */
@route("/x/dynamic/feed/create/dyn")
@tag("Dynamic")
interface 发表复杂动态 {
  @get
  @doc("发表复杂动态")
  发表复杂动态(
    @query @doc("CSRF Token (即 Cookie 中 bili_jct)") csrf: string,
    @body @doc("请求本体") dyn_req: Record<unknown>,
    @body @doc("特殊卡片") attach_card: Record<unknown>,
    @body @doc("动态内容") content: Record<unknown>,
    @body @doc("元信息") meta: Record<unknown>,
    @body @doc("动态类型?") scene: int64,
    @body @doc("携带图片") pics: unknown,
    @body @doc("话题") topic: Record<unknown>,
    @body @doc("互动设置") option: Record<unknown>,
    @body @doc("客户端生成的") upload_id: string,
    @body @doc("动态组件对象有序数组") contents: unknown,
    @body @doc("文本") raw_text: string,
    @body @doc("组件类型 id") type: int64,
    @body @doc("动态组件的内容id转字符串") biz_id: string,
    @body @doc("来源id?") from_source: string,
    @body @doc("0") from_topic_id: int64,
    @body @doc("话题id") id: int64,
    @body @doc("话题名") name: string,
    @body @doc("图高") img_height: int64,
    @body @doc("图宽") img_width: int64,
    @body @doc("图片文件大小(KB)") img_size: unknown,
    @body @doc("图片 URL") img_src: string,
    @body @doc("精选评论flag") up_choose_comment: int64,
    @body @doc("关闭评论flag") close_comment: int64,
    @body @doc("`dyn.web.list`") from_source: string,
    @body @doc("0") from_topic_id: int64,
    @body @doc("话题id") id: int64,
    @body @doc("话题名") name: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("数据本体") data?: Record<unknown>,
    @body @doc("0") result?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("动态 id") dyn_id?: int64,
    @body @doc("动态 id") dyn_id_str?: string,
    @body @doc("动态类型") dyn_type?: int64,
    @body @doc("分享提示") share_window?: Record<unknown>,
    @body @doc("`分享后会获得更多曝光，快去分享吧`") main_title?: string,
  ): ApiResponse<Dyn_req>;
}

/**
 * dyn_req 对象
 */
@doc("dyn_req 数据模型")
model Dyn_req {
  @doc("特殊卡片")
  attach_card?: Record<unknown>;

  @doc("动态内容")
  content?: Record<unknown>;

  @doc("元信息")
  meta?: Record<unknown>;

  @doc("动态类型?")
  scene?: int64;

  @doc("携带图片")
  pics?: unknown;

  @doc("话题")
  topic?: Record<unknown>;

  @doc("互动设置")
  option?: Record<unknown>;

  @doc("客户端生成的")
  upload_id?: string;

}

/**
 * dyn_req.meta 对象
 */
@doc("dyn_req.meta 数据模型")
model Dyn_reqmeta {
}

/**
 * dyn_req.content 对象
 */
@doc("dyn_req.content 数据模型")
model Dyn_reqcontent {
  @doc("动态组件对象有序数组")
  contents?: unknown;

}

/**
 * dyn_req.content.contents[] 对象
 */
@doc("dyn_req.content.contents[] 数据模型")
model Dyn_reqcontentcontents {
  @doc("文本")
  raw_text?: string;

  @doc("组件类型 id")
  type?: int64;

  @doc("动态组件的内容id转字符串")
  biz_id?: string;

}

/**
 * dyn_req.topic 对象
 */
@doc("dyn_req.topic 数据模型")
model Dyn_reqtopic {
  @doc("来源id?")
  from_source?: string;

  @doc("0")
  from_topic_id?: int64;

  @doc("话题id")
  id?: int64;

  @doc("话题名")
  name?: string;

}

/**
 * dyn_req.pics[] 对象
 */
@doc("dyn_req.pics[] 数据模型")
model Dyn_reqpics {
  @doc("图高")
  img_height?: int64;

  @doc("图宽")
  img_width?: int64;

  @doc("图片文件大小(KB)")
  img_size?: unknown;

  @doc("图片 URL")
  img_src?: string;

}

/**
 * dyn_req.option 对象
 */
@doc("dyn_req.option 数据模型")
model Dyn_reqoption {
  @doc("精选评论flag")
  up_choose_comment?: int64;

  @doc("关闭评论flag")
  close_comment?: int64;

}

/**
 * dyn_req.topic 对象
 */
@doc("dyn_req.topic 数据模型")
model Dyn_reqtopic {
  @doc("`dyn.web.list`")
  from_source?: string;

  @doc("0")
  from_topic_id?: int64;

  @doc("话题id")
  id?: int64;

  @doc("话题名")
  name?: string;

  @doc("返回值")
  code?: int64;

  @doc("错误信息")
  message?: string;

  @doc("数据本体")
  data?: Record<unknown>;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("0")
  result?: int64;

  @doc("错误信息")
  message?: string;

  @doc("动态 id")
  dyn_id?: int64;

  @doc("动态 id")
  dyn_id_str?: string;

  @doc("动态类型")
  dyn_type?: int64;

  @doc("分享提示")
  share_window?: Record<unknown>;

}

/**
 * data.share_window 对象
 */
@doc("data.share_window 数据模型")
model Datashare_window {
  @doc("`分享后会获得更多曝光，快去分享吧`")
  main_title?: string;

}

/**
 * 立即发布定时动态
 */
@route("/dynamic_draft/v1/dynamic_draft/publish_now")
@tag("Dynamic")
interface 立即发布定时动态 {
  @get
  @doc("立即发布定时动态")
  立即发布定时动态(
    @body @doc("定时动态(草稿)id") draft_id: unknown,
    @body @doc("CSRF Token（即 Cookie 中 bili_jct)") csrf: string,
    @body @doc("返回值") code?: int64,
    @body @doc("信息本体") data?: Record<unknown>,
    @body @doc("错误消息") message?: string,
    @body @doc("1") ttl?: int64,
  ): ApiResponse<unknown>;
}
