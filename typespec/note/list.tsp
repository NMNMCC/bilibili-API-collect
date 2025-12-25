import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Note;

/**
 * 查询稿件私有笔记
 */
@route("/x/note/list/archive")
@tag("Note")
interface 查询稿件私有笔记 {
  @get
  @doc("查询稿件私有笔记")
  查询稿件私有笔记(
    @query @doc("目标id") oid: int64,
    @query @doc("目标id类型") oid_type: int64,
    @query @doc("CSRF Token（位于cookie）") csrf: string,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("笔记列表") noteIds?: unknown[],
    @query @doc("内容") 项?: unknown,
    @query @doc("笔记id") field_0?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("笔记列表")
  noteIds?: unknown[];

  @doc("内容")
  项?: unknown;

  @doc("笔记id")
  field_0?: string;

}

/**
 * 查询用户私有笔记
 */
@route("/x/note/list")
@tag("Note")
interface 查询用户私有笔记 {
  @get
  @doc("查询用户私有笔记")
  查询用户私有笔记(
    @query @doc("每页项数") ps: int64,
    @query @doc("页码") pn: int64,
    @query @doc("CSRF Token（位于cookie）") csrf: string,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("明细列表") list?: unknown[],
    @query @doc("页面信息") page?: Record<unknown>,
    @query @doc("内容") 项?: unknown,
    @query @doc("笔记1") field_0?: Record<unknown>,
    @query @doc("笔记（n+1）") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("笔记标题") title?: string,
    @query @doc("笔记预览文本") summary?: string,
    @query @doc("提交时间") mtime?: string,
    @query @doc("视频信息") arc?: Record<unknown>,
    @query @doc("笔记id") note_id?: int64,
    @query @doc("0") audit_status?: int64,
    @query @doc("笔记h5页url") web_url?: string,
    @query @doc("笔记id str") note_id_str?: string,
    @query @doc("更新信息") message?: string,
    @query @doc("(?)") forbid_note_entrance?: boolean,
    @query @doc("点赞数") likes?: int64,
    @query @doc("是否点赞") has_like?: boolean,
    @query @doc("目标id") oid?: int64,
    @query @doc("稿件bvid") bvid?: string,
    @query @doc("稿件封面图片url") pic?: string,
    @query @doc("视频简介") desc?: string,
    @query @doc("0") status?: int64,
    @query @doc("目标id类型") oid_type?: int64,
    @query @doc("稿件avid") aid?: int64,
    @query @doc("笔记总数") total?: int64,
    @query @doc("每页项数") size?: int64,
    @query @doc("页码") num?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("明细列表")
  list?: unknown[];

  @doc("页面信息")
  page?: Record<unknown>;

  @doc("内容")
  项?: unknown;

  @doc("笔记1")
  field_0?: Record<unknown>;

  @doc("笔记（n+1）")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

}

/**
 * list 对象
 */
@doc("list 数据模型")
model List {
  @doc("笔记标题")
  title?: string;

  @doc("笔记预览文本")
  summary?: string;

  @doc("提交时间")
  mtime?: string;

  @doc("视频信息")
  arc?: Record<unknown>;

  @doc("笔记id")
  note_id?: int64;

  @doc("0")
  audit_status?: int64;

  @doc("笔记h5页url")
  web_url?: string;

  @doc("笔记id str")
  note_id_str?: string;

  @doc("更新信息")
  message?: string;

  @doc("(?)")
  forbid_note_entrance?: boolean;

  @doc("点赞数")
  likes?: int64;

  @doc("是否点赞")
  has_like?: boolean;

}

/**
 * arc 对象
 */
@doc("arc 数据模型")
model Arc {
  @doc("目标id")
  oid?: int64;

  @doc("稿件bvid")
  bvid?: string;

  @doc("稿件封面图片url")
  pic?: string;

  @doc("视频简介")
  desc?: string;

  @doc("0")
  status?: int64;

  @doc("目标id类型")
  oid_type?: int64;

  @doc("稿件avid")
  aid?: int64;

}

/**
 * page 对象
 */
@doc("page 数据模型")
model Page {
  @doc("笔记总数")
  total?: int64;

  @doc("每页项数")
  size?: int64;

  @doc("页码")
  num?: int64;

}

/**
 * 查询稿件公开笔记
 */
@route("/x/note/publish/list/archive")
@tag("Note")
interface 查询稿件公开笔记 {
  @get
  @doc("查询稿件公开笔记")
  查询稿件公开笔记(
    @query @doc("目标id") oid: int64,
    @query @doc("目标id类型") oid_type: int64,
    @query @doc("每页项数") ps: int64,
    @query @doc("页码") pn: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("公开笔记列表") list?: unknown[],
    @query @doc("页面信息") page?: Record<unknown>,
    @query @doc("内容") 项?: unknown,
    @query @doc("笔记1") field_0?: Record<unknown>,
    @query @doc("笔记（n+1）") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("公开笔记对应的专栏cvid") cvid?: int64,
    @query @doc("笔记标题") title?: string,
    @query @doc("笔记预览") summary?: string,
    @query @doc("发布时间") pubtime?: string,
    @query @doc("笔记h5页url") web_url?: string,
    @query @doc("更新信息") message?: string,
    @query @doc("作者信息") author?: Record<unknown>,
    @query @doc("点赞数") likes?: int64,
    @query @doc("是否点赞") has_like?: boolean,
    @query @doc("用户mid") mid?: int64,
    @query @doc("昵称") name?: string,
    @query @doc("头像url") face?: string,
    @query @doc("用户等级") level?: int64,
    @query @doc("会员信息") vip_info?: Record<unknown>,
    @query @doc("头像框信息") pendant?: Record<unknown>,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("公开笔记列表")
  list?: unknown[];

  @doc("页面信息")
  page?: Record<unknown>;

  @doc("内容")
  项?: unknown;

  @doc("笔记1")
  field_0?: Record<unknown>;

  @doc("笔记（n+1）")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

}

/**
 * list 对象
 */
@doc("list 数据模型")
model List {
  @doc("公开笔记对应的专栏cvid")
  cvid?: int64;

  @doc("笔记标题")
  title?: string;

  @doc("笔记预览")
  summary?: string;

  @doc("发布时间")
  pubtime?: string;

  @doc("笔记h5页url")
  web_url?: string;

  @doc("更新信息")
  message?: string;

  @doc("作者信息")
  author?: Record<unknown>;

  @doc("点赞数")
  likes?: int64;

  @doc("是否点赞")
  has_like?: boolean;

}

/**
 * list 对象
 */
@doc("list 数据模型")
model List {
  @doc("用户mid")
  mid?: int64;

  @doc("昵称")
  name?: string;

  @doc("头像url")
  face?: string;

  @doc("用户等级")
  level?: int64;

  @doc("会员信息")
  vip_info?: Record<unknown>;

  @doc("头像框信息")
  pendant?: Record<unknown>;

}

/**
 * 查询用户公开笔记
 */
@route("/x/note/publish/list/user")
@tag("Note")
interface 查询用户公开笔记 {
  @get
  @doc("查询用户公开笔记")
  查询用户公开笔记(
    @query @doc("每页项数") ps: int64,
    @query @doc("页码") pn: int64,
    @query @doc("CSRF Token（位于cookie）") csrf: string,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("明细列表") list?: unknown[],
    @query @doc("页面信息") page?: Record<unknown>,
    @query @doc("内容") 项?: unknown,
    @query @doc("笔记1") field_0?: Record<unknown>,
    @query @doc("笔记（n+1）") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("笔记总数") total?: int64,
    @query @doc("每页项数") size?: int64,
    @query @doc("页码") num?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("明细列表")
  list?: unknown[];

  @doc("页面信息")
  page?: Record<unknown>;

  @doc("内容")
  项?: unknown;

  @doc("笔记1")
  field_0?: Record<unknown>;

  @doc("笔记（n+1）")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

}

/**
 * page 对象
 */
@doc("page 数据模型")
model Page {
  @doc("笔记总数")
  total?: int64;

  @doc("每页项数")
  size?: int64;

  @doc("页码")
  num?: int64;

}
