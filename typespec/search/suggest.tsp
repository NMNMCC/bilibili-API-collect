import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Search;

/**
 * 获取搜索建议关键词（web端）
 */
@route("/main/suggest")
@tag("Search")
interface 获取搜索建议关键词web端 {
  @get
  @doc("获取搜索建议关键词（web端）")
  获取搜索建议关键词web端(
    @query @doc("需要获得建议的输入内容") term: string,
    @query @doc("v1") main_ver: string,
    @query @doc("任意, 无明显作用") highlight: string,
    @query @doc("函数?") func: string,
    @query @doc("建议类型?") suggest_type: string,
    @query @doc("子类型?") sub_type: string,
    @query @doc("本用户 mid") userid: int64,
    @query @doc("番剧累积数?") bangumi_acc_num: int64,
    @query @doc("特殊累积数?") special_acc_num: int64,
    @query @doc("话题累积数?") topic_acc_num: int64,
    @query @doc("UP主累积数?") upuser_acc_num: int64,
    @query @doc("Tag 数?") tag_num: int64,
    @query @doc("特殊推荐数?") special_num: int64,
    @query @doc("番剧推荐数?") bangumi_num: int64,
    @query @doc("UP主推荐数?") upuser_num: int64,
    @query @doc("一个随机浮点数") rnd: int64,
    @query @doc("同 Cookie 中 buvid3") buvid: string,
    @query @doc("333.1007") spmid: string,
    @query @doc("实验字符串?") exp_str?: string,
    @query @doc("返回值") code?: int64,
    @query @doc("搜索建议结果") result?: Record<unknown>,
    @query @doc("？？？") stoken?: string,
    @query @doc("套了个娃") tag?: unknown[],
    @query @doc("内容") 项?: unknown,
    @query @doc("第1建议关键词") field_0?: Record<unknown>,
    @query @doc("第（n+1）建议关键词") n?: Record<unknown>,
    @query @doc("第10建议关键词") field_9?: Record<unknown>,
    @query @doc("关键词内容") value?: string,
    @query @doc("0") ref?: int64,
    @query @doc("显示内容") name?: string,
    @query @doc("5") spid?: int64,
    @query @doc("空") type?: string,
  ): ApiResponse<Result>;
}

/**
 * result 对象
 */
@doc("result 数据模型")
model Result {
  @doc("套了个娃")
  tag?: unknown[];

  @doc("内容")
  项?: unknown;

  @doc("第1建议关键词")
  field_0?: Record<unknown>;

  @doc("第（n+1）建议关键词")
  n?: Record<unknown>;

  @doc("第10建议关键词")
  field_9?: Record<unknown>;

  @doc("关键词内容")
  value?: string;

  @doc("0")
  ref?: int64;

  @doc("显示内容")
  name?: string;

  @doc("5")
  spid?: int64;

  @doc("空")
  type?: string;

}
