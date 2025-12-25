import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Blackroom.Jury;

/**
 * 申请加入风纪委员会
 */
@route("/x/credit/v2/jury/apply")
@tag("Blackroom.Jury")
interface 申请加入风纪委员会 {
  @post
  @doc("申请加入风纪委员会")
  申请加入风纪委员会(
    @body @doc("cookie中`bili_jct`的值") csrf: string,
    @body @doc("返回值") code?: int64,
    @body @doc("信息") message?: string,
    @body @doc("1") ttl?: int64,
    @body @doc("APP登录Token") access_key: string,
    @body @doc("CSRF Token（位于cookie）") csrf: string,
    @body @doc("返回值") code?: int64,
    @body @doc("信息") message?: string,
    @body @doc("1") ttl?: int64,
  ): ApiResponse<unknown>;
}

/**
 * 拉取新案件
 */
@route("/x/credit/v2/jury/case/next")
@tag("Blackroom.Jury")
interface 拉取新案件 {
  @get
  @doc("拉取新案件")
  拉取新案件(
    @query @doc("Cookie") Cookie: string,
    @query @doc("返回值") code?: int64,
    @query @doc("信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("数据本体") data?: Record<unknown>,
    @query @doc("仲裁案件id") case_id?: string,
    @body @doc("APP登录Token") access_key: string,
    @body @doc("CSRF Token（位于cookie）") csrf: string,
    @body @doc("返回值") code?: int64,
    @body @doc("信息") message?: string,
    @body @doc("1") ttl?: int64,
    @body @doc("数据本体") data?: Record<unknown>,
    @body @doc("仲裁案件id") id?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("仲裁案件id")
  case_id?: string;

  @doc("APP登录Token")
  access_key?: string;

  @doc("CSRF Token（位于cookie）")
  csrf?: string;

  @doc("返回值")
  code?: int64;

  @doc("信息")
  message?: string;

  @doc("1")
  ttl?: int64;

  @doc("数据本体")
  data?: Record<unknown>;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("仲裁案件id")
  id?: int64;

}

/**
 * 进行仲裁投票
 */
@route("/x/credit/v2/jury/vote")
@tag("Blackroom.Jury")
interface 进行仲裁投票 {
  @post
  @doc("进行仲裁投票")
  进行仲裁投票(
    @body @doc("案件id") case_id: string,
    @body @doc("投票类型") vote: int64,
    @body @doc("是否观看此类视频") insiders: int64,
    @body @doc("理由") content: string,
    @body @doc("是否匿名") anonymous: int64,
    @body @doc("cookie中`bili_jct`的值") csrf: string,
    @body @doc("返回值") code?: int64,
    @body @doc("信息") message?: string,
    @body @doc("1") ttl?: int64,
    @body @doc("案件id") cid: int64,
    @body @doc("投票类型") vote: int64,
    @body @doc("理由") content: string,
    @body @doc("支持的观点") likes: unknown,
    @body @doc("反对的观点") hates: unknown,
    @body @doc("是否匿名") attr: int64,
    @body @doc("是否更改原因") apply_type: int64,
    @body @doc("原始原因") origin_reason: int64,
    @body @doc("新原因") apply_reason: int64,
    @body @doc("CSRF Token（位于cookie）") csrf: string,
    @body @doc("返回值") code?: int64,
    @body @doc("信息") message?: string,
    @body @doc("1") ttl?: int64,
  ): ApiResponse<unknown>;
}
