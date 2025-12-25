import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Article;

/**
 * 获取专栏正文内容
 */
@route("/x/article/view")
@tag("Article")
interface 获取专栏正文内容 {
  @get
  @doc("获取专栏正文内容")
  获取专栏正文内容(
    @query @doc("内容") 参数: unknown,
    @query @doc("专栏文章 ID") id: int64,
    @query @doc("`main_web`") gaia_source: string,
    @query @doc("WBI 签名") w_rid: string,
    @query @doc("UNIX 秒级时间戳") wts: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("数据本体") data?: Record<unknown>,
    @query @doc("错误信息") message?: string,
    @query @doc("`1`") ttl?: int64,
    @query @doc("操作 ID?") act_id?: int64,
    @query @doc("应用时间?") apply_time?: string,
    @query @doc("属性位?") attributes?: int64,
    @query @doc("授权码?") authenMark?: null,
    @query @doc("作者信息") author?: Record<unknown>,
    @query @doc("文章头图 URL") banner_url?: string,
    @query @doc("专栏分类信息") categories?: unknown,
    @query @doc("专栏分类信息") category?: Record<unknown>,
    @query @doc("检查状态?") check_state?: int64,
    @query @doc("检查时间?") check_time?: string,
    @query @doc("文章内容") content?: string,
    @query @doc("内容图片列表?") content_pic_list?: unknown,
    @query @doc("封面视频 AV 号") cover_avid?: int64,
    @query @doc("创建时间") ctime?: int64,
    @query @doc("争议信息?") dispute?: unknown,
    @query @doc("动态 opus id") dyn_id_str?: string,
    @query @doc("动态信息?") dynamic?: string,
    @query @doc("专栏文章 ID") id?: int64,
    @query @doc("图片 URL") image_urls?: unknown,
    @query @doc("是否喜欢?") is_like?: boolean,
    @query @doc("关键词") keywords?: string,
    @query @doc("文集信息") list?: Record<unknown>,
    @query @doc("媒体信息?") media?: Record<unknown>,
    @query @doc("修改时间") mtime?: int64,
    @query @doc("opus 信息") opus?: Record<unknown>,
    @query @doc("原始图片 URL") origin_image_urls?: unknown,
    @query @doc("原始模板 ID?") origin_template_id?: int64,
    @query @doc("是否原创") original?: int64,
    @query @doc("仅自己可见") private_pub?: int64,
    @query @doc("发布时间") publish_time?: int64,
    @query @doc("是否允许转载") reprint?: int64,
    @query @doc("专栏状态") state?: int64,
    @query @doc("统计数据") stats?: Record<unknown>,
    @query @doc("专栏开头部分内容") summary?: string,
    @query @doc("专栏标签") tags?: unknown,
    @query @doc("模板 ID?") template_id?: int64,
    @query @doc("专栏标题") title?: string,
    @query @doc("封面食品信息?") top_video_info?: unknown,
    @query @doc("作者总文章数") total_art_num?: int64,
    @query @doc("类型?") type?: int64,
    @query @doc("版本 ID?") version_id?: int64,
    @query @doc("文章总词数") words?: int64,
    @query @doc("分类 ID") id?: int64,
    @query @doc("分类名称") name?: string,
    @query @doc("父分类 ID") parent_id?: int64,
    @query @doc("以 JSON 呈现的文本内容") ops?: unknown,
    @query @doc("属性") attribute?: unknown,
    @query @doc("object") insert?: unknown,
    @query @doc("文字对齐") align?: unknown,
    @query @doc("块级引用") blockquote?: unknown,
    @query @doc("加粗") bold?: unknown,
    @query @doc("类名") class?: unknown,
    @query @doc("颜色") color?: unknown,
    @query @doc("标题级别") header?: unknown,
    @query @doc("删除线") strike?: unknown,
    @query @doc("站内链接") link?: unknown,
    @query @doc("斜体") italic?: unknown,
    @query @doc("原生图片") native_image?: unknown,
    @query @doc("分割线") cut_off?: unknown,
    @query @doc("视频卡片") video_card?: unknown,
    @query @doc("专栏卡片") article_card?: unknown,
    @query @doc("投票卡片") vote_card?: unknown,
    @query @doc("投票卡片") live_card?: unknown,
    @query @doc("图像的备用文本描述") alt?: string,
    @query @doc("图像的 URL") url?: string,
    @query @doc("图像的宽度") width?: int64,
    @query @doc("图像的高度") height?: int64,
    @query @doc("图像的文件大小") size?: int64,
    @query @doc("`\"loaded\"`") status?: int64,
    @query @doc("类型") type?: string,
    @query @doc("分割线图片 URL") url?: string,
    @query @doc("卡片高度") height?: int64,
    @query @doc("视频 id") id?: string,
    @query @doc("`loaded`") status?: string,
    @query @doc("`1.1`") tid?: int64,
    @query @doc("卡片图片 URL") url?: string,
    @query @doc("卡片宽度") width?: int64,
    @query @doc("卡片高度") height?: int64,
    @query @doc("文章 id") id?: string,
    @query @doc("`loaded`") status?: string,
    @query @doc("`2`") tid?: int64,
    @query @doc("卡片图片 URL") url?: string,
    @query @doc("卡片宽度") width?: int64,
    @query @doc("卡片高度") height?: int64,
    @query @doc("投票 id") id?: string,
    @query @doc("`loaded`") status?: string,
    @query @doc("`7`") tid?: int64,
    @query @doc("卡片图片 URL") url?: string,
    @query @doc("卡片宽度") width?: int64,
    @query @doc("卡片高度") height?: int64,
    @query @doc("直播间 id") id?: string,
    @query @doc("`loaded`") status?: string,
    @query @doc("`8`") tid?: int64,
    @query @doc("卡片图片 URL") url?: string,
    @query @doc("卡片宽度") width?: int64,
    @query @doc("空") apply_time?: string,
    @query @doc("0") articles_count?: int64,
    @query @doc("空") check_time?: string,
    @query @doc("创建时间") ctime?: int64,
    @query @doc("文集 ID") id?: int64,
    @query @doc("文集封面 URL") image_url?: string,
    @query @doc("作者 mid") mid?: int64,
    @query @doc("文集名称") name?: string,
    @query @doc("最新发布时间") publish_time?: int64,
    @query @doc("0") read?: int64,
    @query @doc("审核不通过理由?") reason?: string,
    @query @doc("文集状态") state?: int64,
    @query @doc("文集描述") summary?: string,
    @query @doc("文集更新时间") update_time?: int64,
    @query @doc("文集总词数") words?: int64,
    @query @doc("硬币数") coin?: int64,
    @query @doc("点踩数") dislike?: int64,
    @query @doc("动态数?") dynamic?: int64,
    @query @doc("收藏数") favorite?: int64,
    @query @doc("点赞数") like?: int64,
    @query @doc("回复数") reply?: int64,
    @query @doc("分享数") share?: int64,
    @query @doc("查看数") view?: int64,
    @query @doc("标签名") name?: string,
    @query @doc("标签 ID") tid?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("操作 ID?")
  act_id?: int64;

  @doc("应用时间?")
  apply_time?: string;

  @doc("属性位?")
  attributes?: int64;

  @doc("授权码?")
  authenMark?: null;

  @doc("作者信息")
  author?: Record<unknown>;

  @doc("文章头图 URL")
  banner_url?: string;

  @doc("专栏分类信息")
  categories?: unknown;

  @doc("专栏分类信息")
  category?: Record<unknown>;

  @doc("检查状态?")
  check_state?: int64;

  @doc("检查时间?")
  check_time?: string;

  @doc("内容图片列表?")
  content_pic_list?: unknown;

  @doc("封面视频 AV 号")
  cover_avid?: int64;

  @doc("创建时间")
  ctime?: int64;

  @doc("争议信息?")
  dispute?: unknown;

  @doc("动态 opus id")
  dyn_id_str?: string;

  @doc("动态信息?")
  dynamic?: string;

  @doc("专栏文章 ID")
  id?: int64;

  @doc("图片 URL")
  image_urls?: unknown;

  @doc("是否喜欢?")
  is_like?: boolean;

  @doc("关键词")
  keywords?: string;

  @doc("文集信息")
  list?: Record<unknown>;

  @doc("媒体信息?")
  media?: Record<unknown>;

  @doc("修改时间")
  mtime?: int64;

  @doc("原始图片 URL")
  origin_image_urls?: unknown;

  @doc("原始模板 ID?")
  origin_template_id?: int64;

  @doc("是否原创")
  original?: int64;

  @doc("仅自己可见")
  private_pub?: int64;

  @doc("发布时间")
  publish_time?: int64;

  @doc("是否允许转载")
  reprint?: int64;

  @doc("专栏状态")
  state?: int64;

  @doc("统计数据")
  stats?: Record<unknown>;

  @doc("专栏开头部分内容")
  summary?: string;

  @doc("专栏标签")
  tags?: unknown;

  @doc("模板 ID?")
  template_id?: int64;

  @doc("专栏标题")
  title?: string;

  @doc("封面食品信息?")
  top_video_info?: unknown;

  @doc("作者总文章数")
  total_art_num?: int64;

  @doc("类型?")
  type?: int64;

  @doc("版本 ID?")
  version_id?: int64;

  @doc("文章总词数")
  words?: int64;

}

/**
 * data.categories[] 对象
 */
@doc("data.categories[] 数据模型")
model Datacategories {
  @doc("分类 ID")
  id?: int64;

  @doc("分类名称")
  name?: string;

  @doc("父分类 ID")
  parent_id?: int64;

}

/**
 * data.category 对象
 */
@doc("data.category 数据模型")
model Datacategory {
}

/**
 * data.categories[] 对象
 */
@doc("data.categories[] 数据模型")
model Datacategories {
  @doc("以 JSON 呈现的文本内容")
  ops?: unknown;

  @doc("属性")
  attribute?: unknown;

  @doc("object")
  insert?: unknown;

}

/**
 * ops[].attribute 对象
 */
@doc("ops[].attribute 数据模型")
model Opsattribute {
  @doc("文字对齐")
  align?: unknown;

  @doc("块级引用")
  blockquote?: unknown;

  @doc("加粗")
  bold?: unknown;

  @doc("类名")
  class?: unknown;

  @doc("颜色")
  color?: unknown;

  @doc("标题级别")
  header?: unknown;

  @doc("删除线")
  strike?: unknown;

  @doc("站内链接")
  link?: unknown;

  @doc("斜体")
  italic?: unknown;

  @doc("原生图片")
  native_image?: unknown;

  @doc("分割线")
  cut_off?: unknown;

  @doc("视频卡片")
  video_card?: unknown;

  @doc("专栏卡片")
  article_card?: unknown;

  @doc("投票卡片")
  vote_card?: unknown;

  @doc("投票卡片")
  live_card?: unknown;

}

/**
 * ops[].insert.native-image 对象
 */
@doc("ops[].insert.native-image 数据模型")
model Opsinsertnativeimage {
  @doc("图像的备用文本描述")
  alt?: string;

  @doc("图像的 URL")
  url?: string;

  @doc("图像的宽度")
  width?: int64;

  @doc("图像的高度")
  height?: int64;

  @doc("图像的文件大小")
  size?: int64;

  @doc("`\"loaded\"`")
  status?: int64;

}

/**
 * ops[].insert.cut-off 对象
 */
@doc("ops[].insert.cut-off 数据模型")
model Opsinsertcutoff {
  @doc("类型")
  type?: string;

  @doc("分割线图片 URL")
  url?: string;

}

/**
 * ops[].insert.video-card 对象
 */
@doc("ops[].insert.video-card 数据模型")
model Opsinsertvideocard {
  @doc("卡片高度")
  height?: int64;

  @doc("视频 id")
  id?: string;

  @doc("`loaded`")
  status?: string;

  @doc("`1.1`")
  tid?: int64;

  @doc("卡片图片 URL")
  url?: string;

  @doc("卡片宽度")
  width?: int64;

}

/**
 * ops[].insert.article-card 对象
 */
@doc("ops[].insert.article-card 数据模型")
model Opsinsertarticlecard {
  @doc("卡片高度")
  height?: int64;

  @doc("文章 id")
  id?: string;

  @doc("`loaded`")
  status?: string;

  @doc("`2`")
  tid?: int64;

  @doc("卡片图片 URL")
  url?: string;

  @doc("卡片宽度")
  width?: int64;

}

/**
 * ops[].insert.vote-card 对象
 */
@doc("ops[].insert.vote-card 数据模型")
model Opsinsertvotecard {
  @doc("卡片高度")
  height?: int64;

  @doc("投票 id")
  id?: string;

  @doc("`loaded`")
  status?: string;

  @doc("`7`")
  tid?: int64;

  @doc("卡片图片 URL")
  url?: string;

  @doc("卡片宽度")
  width?: int64;

}

/**
 * ops[].insert.live-card 对象
 */
@doc("ops[].insert.live-card 数据模型")
model Opsinsertlivecard {
  @doc("卡片高度")
  height?: int64;

  @doc("直播间 id")
  id?: string;

  @doc("`loaded`")
  status?: string;

  @doc("`8`")
  tid?: int64;

  @doc("卡片图片 URL")
  url?: string;

  @doc("卡片宽度")
  width?: int64;

}

/**
 * data.list 对象
 */
@doc("data.list 数据模型")
model Datalist {
  @doc("空")
  apply_time?: string;

  @doc("0")
  articles_count?: int64;

  @doc("空")
  check_time?: string;

  @doc("创建时间")
  ctime?: int64;

  @doc("文集 ID")
  id?: int64;

  @doc("文集封面 URL")
  image_url?: string;

  @doc("作者 mid")
  mid?: int64;

  @doc("文集名称")
  name?: string;

  @doc("最新发布时间")
  publish_time?: int64;

  @doc("0")
  read?: int64;

  @doc("审核不通过理由?")
  reason?: string;

  @doc("文集状态")
  state?: int64;

  @doc("文集描述")
  summary?: string;

  @doc("文集更新时间")
  update_time?: int64;

  @doc("文集总词数")
  words?: int64;

}

/**
 * data.media 对象
 */
@doc("data.media 数据模型")
model Datamedia {
}

/**
 * data.stats 对象
 */
@doc("data.stats 数据模型")
model Datastats {
  @doc("硬币数")
  coin?: int64;

  @doc("点踩数")
  dislike?: int64;

  @doc("动态数?")
  dynamic?: int64;

  @doc("收藏数")
  favorite?: int64;

  @doc("点赞数")
  like?: int64;

  @doc("回复数")
  reply?: int64;

  @doc("分享数")
  share?: int64;

  @doc("查看数")
  view?: int64;

}

/**
 * data.tags[] 对象
 */
@doc("data.tags[] 数据模型")
model Datatags {
  @doc("标签名")
  name?: string;

  @doc("标签 ID")
  tid?: int64;

}
