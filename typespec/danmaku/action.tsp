import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Danmaku;

/**
 * 发送视频弹幕
 */
@route("/x/v2/dm/post")
@tag("Danmaku")
interface 发送视频弹幕 {
  @post
  @doc("发送视频弹幕")
  发送视频弹幕(
    @query @doc("普通视频: 1315873") web_location: string,
    @query @doc("CSRF Token (即 Cookie 中 bili_jct)") csrf: string,
    @query @doc("Wbi 签名") w_rid: string,
    @query @doc("UNIX 秒级时间戳") wts: string,
    @body @doc("APP 登录 Token") access_key: string,
    @body @doc("弹幕类选择") type: int64,
    @body @doc("视频 cid") oid: int64,
    @body @doc("弹幕内容") msg: string,
    @body @doc("稿件 bvid") bvid: string,
    @body @doc("稿件 avid") aid: int64,
    @body @doc("弹幕出现在视频内的时间") progress: int64,
    @body @doc("弹幕颜色设置") color: int64,
    @body @doc("弹幕字号设置") fontsize: int64,
    @body @doc("弹幕池选择") pool: int64,
    @body @doc("弹幕类型选择") mode: int64,
    @body @doc("当前时间戳*1000000") rnd: int64,
    @body @doc("彩色弹幕") colorful: int64,
    @body @doc("是否带 UP 身份标识") checkbox_type: int64,
    @body @doc("CSRF Token（位于 Cookie）") csrf: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
    @body @doc("信息本体") data?: Record<unknown>,
    @body @doc("（？）") action?: string,
    @body @doc("弹幕样式 Json？") animation?: string,
    @body @doc("渐变彩色样式信息？") colorful_src?: unknown,
    @body @doc("（？）") dm_content?: string,
    @body @doc("弹幕 dmid") dmid?: int64,
    @body @doc("弹幕 dmid") dmid_str?: string,
    @body @doc("（？）") visible?: boolean,
    @body @doc("60001") type?: int64,
    @body @doc("渐变色样式 Json？") src?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("（？）")
  action?: string;

  @doc("弹幕样式 Json？")
  animation?: string;

  @doc("渐变彩色样式信息？")
  colorful_src?: unknown;

  @doc("（？）")
  dm_content?: string;

  @doc("弹幕 dmid")
  dmid?: int64;

  @doc("弹幕 dmid")
  dmid_str?: string;

  @doc("（？）")
  visible?: boolean;

}

/**
 * colorful_src 对象
 */
@doc("colorful_src 数据模型")
model Colorful_src {
  @doc("60001")
  type?: int64;

  @doc("渐变色样式 Json？")
  src?: string;

}

/**
 * 发送互动弹幕
 */
@route("/x/v2/dm/command/post")
@tag("Danmaku")
interface 发送互动弹幕 {
  @post
  @doc("发送互动弹幕")
  发送互动弹幕(
    @body @doc("APP登录Token") access_key: string,
    @body @doc("互动弹幕类型") type: int64,
    @body @doc("稿件avid") aid: int64,
    @body @doc("视频cid") cid: int64,
    @body @doc("弹幕出现在视频内的时间") progress: int64,
    @body @doc("平台标识") plat: int64,
    @body @doc("json序列") data: string,
    @body @doc("修改互动弹幕的弹幕id") dmid: int64,
    @body @doc("CSRF Token（位于cookie）") csrf: string,
    @body @doc("弹幕内容") msg?: string,
    @body @doc("弹幕内容") msg?: string,
    @body @doc("关联视频的bvid") bvid?: string,
    @body @doc("持续时间") duration?: int64,
    @body @doc("X坐标") posX?: int64,
    @body @doc("Y坐标") posY?: int64,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
    @body @doc("信息本体") data?: unknown,
    @body @doc("指令？") command?: string,
    @body @doc("弹幕内容") content?: string,
    @body @doc("弹幕数据") extra?: string,
    @body @doc("弹幕dmid") id?: int64,
    @body @doc("弹幕dmid") idStr?: string,
    @body @doc("用户mid") mid?: int64,
    @body @doc("视频cid") oid?: int64,
    @body @doc("弹幕出现在视频内的时间") progress?: int64,
    @body @doc("互动弹幕类型") type?: int64,
    @body @doc("UP主头像url") icon?: string,
    @body @doc("关联视频的avid") aid?: int64,
    @body @doc("关联视频的标题") title?: string,
    @body @doc("关联视频的bvid") bvid?: string,
    @body @doc("持续时间") duration?: int64,
    @body @doc("X坐标") posX?: int64,
    @body @doc("Y坐标") posY?: int64,
    @body @doc("按钮图片url") icon?: string,
    @body @doc("关注按钮类型") type?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("指令？")
  command?: string;

  @doc("弹幕内容")
  content?: string;

  @doc("弹幕数据")
  extra?: string;

  @doc("弹幕dmid")
  id?: int64;

  @doc("弹幕dmid")
  idStr?: string;

  @doc("用户mid")
  mid?: int64;

  @doc("视频cid")
  oid?: int64;

  @doc("弹幕出现在视频内的时间")
  progress?: int64;

  @doc("互动弹幕类型")
  type?: int64;

  @doc("UP主头像url")
  icon?: string;

  @doc("关联视频的avid")
  aid?: int64;

  @doc("关联视频的标题")
  title?: string;

  @doc("关联视频的bvid")
  bvid?: string;

  @doc("持续时间")
  duration?: int64;

  @doc("X坐标")
  posX?: int64;

  @doc("Y坐标")
  posY?: int64;

  @doc("按钮图片url")
  icon?: string;

  @doc("关注按钮类型")
  type?: int64;

}

/**
 * 发送打分弹幕
 */
@route("/x/v2/dm/command/grade/post")
@tag("Danmaku")
interface 发送打分弹幕 {
  @post
  @doc("发送打分弹幕")
  发送打分弹幕(
    @body @doc("稿件 aid") aid: int64,
    @body @doc("分 P cid") cid: int64,
    @body @doc("播放进度") progress: int64,
    @body @doc("打分 id") grade_id: int64,
    @body @doc("分数") grade_score?: int64,
    @body @doc("100") polaris_app_id: int64,
    @body @doc("5") polaris_platfrom: int64,
    @body @doc("333.788.0.0") spmid: string,
    @body @doc("来源 spmid") from_spmid: string,
    @body @doc("CSRF Token (即 Cookie 中的 bili_jct)") csrf: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
    @body @doc("信息本体") data?: Record<unknown>,
    @body @doc("弹幕dmid") dmid?: int64,
    @body @doc("弹幕dmid") dmid_str?: string,
    @body @doc("是否可见") visible?: boolean,
    @body @doc("动作") action?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("弹幕dmid")
  dmid?: int64;

  @doc("弹幕dmid")
  dmid_str?: string;

  @doc("是否可见")
  visible?: boolean;

  @doc("动作")
  action?: string;

}

/**
 * 撤回弹幕
 */
@route("/x/dm/recall")
@tag("Danmaku")
interface 撤回弹幕 {
  @post
  @doc("撤回弹幕")
  撤回弹幕(
    @body @doc("APP登录Token") access_key: string,
    @body @doc("弹幕dmid") dmid: int64,
    @body @doc("视频cid") cid: int64,
    @body @doc("CSRF Token（位于cookie）") csrf: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
  ): ApiResponse<unknown>;
}

/**
 * 购买高级弹幕发送权限
 */
@route("/x/dm/adv/buy")
@tag("Danmaku")
interface 购买高级弹幕发送权限 {
  @post
  @doc("购买高级弹幕发送权限")
  购买高级弹幕发送权限(
    @body @doc("APP登录Token") access_key: string,
    @body @doc("sp") mode: string,
    @body @doc("视频cid") cid: int64,
    @body @doc("CSRF Token（位于cookie）") csrf: string,
    @body @doc("返回值") code?: int64,
    @body @doc("返回信息") message?: string,
    @body @doc("1") ttl?: int64,
  ): ApiResponse<unknown>;
}

/**
 * 检测高级弹幕发送权限
 */
@route("/x/dm/adv/state")
@tag("Danmaku")
interface 检测高级弹幕发送权限 {
  @get
  @doc("检测高级弹幕发送权限")
  检测高级弹幕发送权限(
    @query @doc("APP登录Token") access_key: string,
    @query @doc("sp") mode: string,
    @query @doc("视频cid") cid: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("有效时：信息本体") data?: unknown,
    @query @doc("需要支付的硬币数") coins?: int64,
    @query @doc("是否同意") confirm?: int64,
    @query @doc("是否允许申请") accept?: boolean,
    @query @doc("是否已购买") hasBuy?: boolean,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("需要支付的硬币数")
  coins?: int64;

  @doc("是否同意")
  confirm?: int64;

  @doc("是否允许申请")
  accept?: boolean;

  @doc("是否已购买")
  hasBuy?: boolean;

}

/**
 * 点赞弹幕
 */
@route("/x/v2/dm/thumbup/add")
@tag("Danmaku")
interface 点赞弹幕 {
  @post
  @doc("点赞弹幕")
  点赞弹幕(
    @body @doc("APP 登录 Token") access_key: string,
    @body @doc("目标弹幕 dmid") dmid: int64,
    @body @doc("目标弹幕所在视频 cid") oid: int64,
    @body @doc("操作") op_: int64,
    @body @doc("平台标识") platform: string,
    @body @doc("CSRF Token（位于 Cookie）") csrf: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") tll?: int64,
  ): ApiResponse<unknown>;
}

/**
 * 举报弹幕
 */
@route("/x/dm/report/add")
@tag("Danmaku")
interface 举报弹幕 {
  @post
  @doc("举报弹幕")
  举报弹幕(
    @body @doc("APP登录Token") access_key: string,
    @body @doc("视频cid") cid: int64,
    @body @doc("弹幕dmid") dmid: int64,
    @body @doc("举报类型") reason: int64,
    @body @doc("其他举报备注") content: string,
    @body @doc("CSRF Token（位于cookie）") csrf: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") tll?: int64,
  ): ApiResponse<unknown>;
}

/**
 * 保护&删除弹幕
 */
@route("/x/v2/dm/edit/state")
@tag("Danmaku")
interface 保护删除弹幕 {
  @post
  @doc("保护&删除弹幕")
  保护删除弹幕(
    @body @doc("APP登录Token") access_key: string,
    @body @doc("弹幕类选择") type: int64,
    @body @doc("视频cid") oid: int64,
    @body @doc("弹幕dmid") dmids: unknown,
    @body @doc("操作代码") state: int64,
    @body @doc("CSRF Token（位于cookie）") csrf: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
  ): ApiResponse<unknown>;
}

/**
 * 修改字幕池
 */
@route("/x/v2/dm/edit/pool")
@tag("Danmaku")
interface 修改字幕池 {
  @post
  @doc("修改字幕池")
  修改字幕池(
    @body @doc("APP登录Token") access_key: string,
    @body @doc("弹幕类选择") type: int64,
    @body @doc("视频cid") oid: int64,
    @body @doc("弹幕dmid") dmids: unknown,
    @body @doc("操作代码") pool: int64,
    @body @doc("CSRF Token（位于cookie）") csrf: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
  ): ApiResponse<unknown>;
}
