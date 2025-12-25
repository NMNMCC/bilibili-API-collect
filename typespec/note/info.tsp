import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Note;

/**
 * 查询该稿件是否禁止笔记
 */
@route("/x/note/is_forbid")
@tag("Note")
interface 查询该稿件是否禁止笔记 {
  @get
  @doc("查询该稿件是否禁止笔记")
  查询该稿件是否禁止笔记(
    @query @doc("稿件avid") aid: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("是否禁止笔记") forbid_note_entrance?: boolean,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("是否禁止笔记")
  forbid_note_entrance?: boolean;

}

/**
 * 查询私有笔记内容
 */
@route("/x/note/info")
@tag("Note")
interface 查询私有笔记内容 {
  @get
  @doc("查询私有笔记内容")
  查询私有笔记内容(
    @query @doc("目标id") oid: int64,
    @query @doc("目标id类型") oid_type: int64,
    @query @doc("笔记id") note_id: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("对应视频稿件信息") arc?: Record<unknown>,
    @query @doc("0") audit_status?: int64,
    @query @doc("视频分P数") cid_count?: int64,
    @query @doc("笔记正文json序列") content?: string,
    @query @doc("公开笔记相关原因") pub_reason?: string,
    @query @doc("公开笔记状态") pub_status?: int64,
    @query @doc("笔记预览文本") summary?: string,
    @query @doc("笔记跳转标签列表") tags?: unknown[],
    @query @doc("笔记标题") title?: string,
    @query @doc("目标id") oid?: int64,
    @query @doc("目标id类型") oid_type?: int64,
    @query @doc("视频标题") title?: string,
    @query @doc("视频封面") pic?: string,
    @query @doc("视频简介") desc?: string,
    @query @doc("内容") 项?: unknown,
    @query @doc("标签1") field_0?: Record<unknown>,
    @query @doc("标签（n+1）") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("视频cid") cid?: int64,
    @query @doc("0") status?: int64,
    @query @doc("在稿件中的分P索引") index?: int64,
    @query @doc("视频进度") seconds?: int64,
    @query @doc("笔记中位置") pos?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("对应视频稿件信息")
  arc?: Record<unknown>;

  @doc("0")
  audit_status?: int64;

  @doc("视频分P数")
  cid_count?: int64;

  @doc("笔记正文json序列")
  content?: string;

  @doc("公开笔记相关原因")
  pub_reason?: string;

  @doc("公开笔记状态")
  pub_status?: int64;

  @doc("笔记预览文本")
  summary?: string;

  @doc("笔记跳转标签列表")
  tags?: unknown[];

  @doc("笔记标题")
  title?: string;

}

/**
 * arc 对象
 */
@doc("arc 数据模型")
model Arc {
  @doc("目标id")
  oid?: int64;

  @doc("目标id类型")
  oid_type?: int64;

  @doc("视频标题")
  title?: string;

  @doc("视频封面")
  pic?: string;

  @doc("视频简介")
  desc?: string;

  @doc("内容")
  项?: unknown;

  @doc("标签1")
  field_0?: Record<unknown>;

  @doc("标签（n+1）")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

}

/**
 * tags 对象
 */
@doc("tags 数据模型")
model Tags {
  @doc("视频cid")
  cid?: int64;

  @doc("0")
  status?: int64;

  @doc("在稿件中的分P索引")
  index?: int64;

  @doc("视频进度")
  seconds?: int64;

  @doc("笔记中位置")
  pos?: int64;

}

/**
 * 查询公开笔记内容
 */
@route("/x/note/publish/info")
@tag("Note")
interface 查询公开笔记内容 {
  @get
  @doc("查询公开笔记内容")
  查询公开笔记内容(
    @query @doc("笔记对应的专栏cvid") cvid: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("公开笔记对应的专栏cvid") cvid?: int64,
    @query @doc("笔记id") note_id?: int64,
    @query @doc("笔记标题") title?: string,
    @query @doc("笔记预览") summary?: string,
    @query @doc("笔记正文json序列") content?: string,
    @query @doc("(?)") cid_count?: int64,
    @query @doc("公开状态") pub_status?: int64,
    @query @doc("稿件信息") arc?: Record<unknown>,
    @query @doc("作者信息") author?: Record<unknown>,
    @query @doc("目标id") oid?: int64,
    @query @doc("目标id类型") oid_type?: int64,
    @query @doc("标题") title?: string,
    @query @doc("(?)") status?: int64,
    @query @doc("封面url") pic?: string,
    @query @doc("简介") desc?: string,
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
  @doc("公开笔记对应的专栏cvid")
  cvid?: int64;

  @doc("笔记id")
  note_id?: int64;

  @doc("笔记标题")
  title?: string;

  @doc("笔记预览")
  summary?: string;

  @doc("笔记正文json序列")
  content?: string;

  @doc("(?)")
  cid_count?: int64;

  @doc("公开状态")
  pub_status?: int64;

  @doc("稿件信息")
  arc?: Record<unknown>;

  @doc("作者信息")
  author?: Record<unknown>;

}

/**
 * arc 对象
 */
@doc("arc 数据模型")
model Arc {
  @doc("目标id")
  oid?: int64;

  @doc("目标id类型")
  oid_type?: int64;

  @doc("标题")
  title?: string;

  @doc("(?)")
  status?: int64;

  @doc("封面url")
  pic?: string;

  @doc("简介")
  desc?: string;

}

/**
 * author 对象
 */
@doc("author 数据模型")
model Author {
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
