import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.User;

/**
 * 主页
 */
@route("/x/space/top/arc/set")
@tag("User")
interface 主页 {
  @get
  @doc("主页")
  主页(
    @query @doc("目标用户mid") vmid: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("稿件avid") aid?: int64,
    @query @doc("视频分P总数") videos?: int64,
    @query @doc("分区tid") tid?: int64,
    @query @doc("子分区名称") tname?: string,
    @query @doc("是否转载") copyright?: int64,
    @query @doc("视频封面图片url") pic?: string,
    @query @doc("稿件标题") title?: string,
    @query @doc("稿件发布时间") pubdate?: int64,
    @query @doc("用户提交稿件的时间") ctime?: int64,
    @query @doc("视频简介") desc?: string,
    @query @doc("视频状态") state?: int64,
    @query @doc("稿件属性位配置") attribute?: int64,
    @query @doc("视频总计持续时长（所有分P）") duration?: int64,
    @query @doc("视频属性标志") rights?: Record<unknown>,
    @query @doc("视频UP主信息") owner?: Record<unknown>,
    @query @doc("视频状态数") stat?: Record<unknown>,
    @query @doc("视频同步发布的的动态的文字内容") dynamic?: string,
    @query @doc("视频1P cid") cid?: int64,
    @query @doc("视频1P分辨率") dimension?: Record<unknown>,
    @query @doc("稿件bvid") bvid?: string,
    @query @doc("置顶视频备注") reason?: string,
    @query @doc("是否为合作视频") inter_video?: boolean,
    @body @doc("置顶目标稿件avid") aid: int64,
    @body @doc("置顶目标稿件bvid") bvid: string,
    @body @doc("置顶视频备注") reason: string,
    @body @doc("CSRF Token（位于cookie）") csrf: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
    @body @doc("CSRF Token（位于cookie）") csrf: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
    @query @doc("目标用户mid") vmid: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("代表作列表") data?: unknown[],
    @query @doc("内容") 项?: unknown,
    @query @doc("代表作1") field_0?: Record<unknown>,
    @query @doc("代表作2") field_1?: Record<unknown>,
    @query @doc("代表作3") field_2?: Record<unknown>,
    @body @doc("置顶目标稿件avid") aid: int64,
    @body @doc("置顶目标稿件bvid") bvid: string,
    @body @doc("代表作备注") reason: string,
    @body @doc("CSRF Token（位于cookie）") csrf: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
    @body @doc("要删除的目标稿件avid") aid: int64,
    @body @doc("要删除的目标稿件bvid") bvid: string,
    @body @doc("CSRF Token（位于cookie）") csrf: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
    @query @doc("目标用户mid") mid: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: unknown[],
    @query @doc("内容") 项?: unknown,
    @query @doc("套了个娃") field_0?: Record<unknown>,
    @query @doc("目标用户mid") mid?: int64,
    @query @doc("TAG名称") tags?: unknown[],
    @query @doc("内容") 项?: unknown,
    @query @doc("TAG1") field_0?: string,
    @query @doc("TAG(n+1)") n?: string,
    @query @doc("……") __?: string,
    @query @doc("TAG5") field_4?: string,
    @body @doc("要设置的TAG内容") tags: unknown,
    @body @doc("CSRF Token（位于cookie）") csrf: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
    @query @doc("目标用户mid") mid: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("公告信息") data?: string,
    @body @doc("要设置的公告内容") notice: string,
    @body @doc("CSRF Token（位于cookie）") csrf: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
    @query @doc("目标用户mid") mid: int64,
    @query @doc("用户是否存在") status?: boolean,
    @query @doc("用户存在时：信息本体<br />用户不存在时：错误信息") data?: unknown,
    @query @doc("空间隐私权限") privacy?: Record<unknown>,
    @query @doc("空间板块布局") index_order?: unknown[],
    @query @doc("default主题？") theme?: string,
    @query @doc("主题预览图路径？") theme_preview_img_path?: string,
    @query @doc("空间头图") toutu?: Record<unknown>,
    @query @doc("追番及追剧") bangumi?: int64,
    @query @doc("轻视频") bbq?: int64,
    @query @doc("频道") channel?: int64,
    @query @doc("最近投币的视频") coins_video?: int64,
    @query @doc("追漫") comic?: int64,
    @query @doc("装扮") dress_up?: int64,
    @query @doc("收藏夹") fav_video?: int64,
    @query @doc("圈子？") groups?: int64,
    @query @doc("最近点赞的视频") likes_video?: int64,
    @query @doc("最近玩过的游戏") played_game?: int64,
    @query @doc("订阅标签") tags?: int64,
    @query @doc("个人资料") user_info?: int64,
    @query @doc("内容") 项?: unknown,
    @query @doc("板块1") field_0?: Record<unknown>,
    @query @doc("板块(n+1)") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("板块编号") id?: int64,
    @query @doc("板块名称") name?: string,
    @query @doc("空间头图ID") sid?: int64,
    @query @doc("到期时间？") expire?: int64,
    @query @doc("空间头图小图相对路径") s_img?: string,
    @query @doc("空间头图相对路径") l_img?: string,
    @query @doc("空") android_img?: string,
    @query @doc("空") iphone_img?: string,
    @query @doc("空") ipad_img?: string,
    @query @doc("缩略图") thumbnail_img?: string,
    @query @doc("0") platform?: int64,
    @query @doc("目标用户mid") mid: int64,
    @query @doc("成功: true<br />失败: false") status?: boolean,
    @query @doc("成功: 信息本体<br />失败: \"用户id错误\"") data?: unknown,
    @query @doc("空间头图 ID") id?: int64,
    @query @doc("显示名称") product_name?: string,
    @query @doc("价格") price?: int64,
    @query @doc("支付类型?") coin_type?: int64,
    @query @doc("大会员免费") vip_free?: int64,
    @query @doc("小图 URI") s_img?: string,
    @query @doc("大图 URI") l_img?: string,
    @query @doc("空") thumbnail_img?: string,
    @query @doc("排序编号") sort_num?: int64,
    @query @doc("已禁用") is_disable?: int64,
    @query @doc("过期时间?") expire?: int64,
    @query @doc("是否拥有?") had?: int64,
    @body @doc("头图 ID") id: int64,
    @body @doc("CSRF Token (即 Cookie bili_jct 值)") csrf: string,
    @body @doc("状态") status?: boolean,
    @body @doc("错误信息") data?: string,
    @body @doc("布局列表") index_order: unknown,
    @body @doc("CSRF Token（位于cookie）") csrf: string,
    @body @doc("操作结果") status?: boolean,
    @body @doc("错误信息") data?: string,
    @body @doc("收藏视频") fav_video: int64,
    @body @doc("追番及追剧") bangumi: int64,
    @body @doc("关注的TAG") tags: int64,
    @body @doc("投币的视频") coins_video: int64,
    @body @doc("个人信息") user_info: int64,
    @body @doc("玩过的游戏") played_game: int64,
    @body @doc("CSRF Token（位于cookie）") csrf: unknown,
    @body @doc("操作结果") status?: boolean,
    @body @doc("错误信息") data?: string,
    @query @doc("目标用户mid") mid: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: unknown,
    @query @doc("内容") 项?: unknown,
    @query @doc("游戏1") field_0?: Record<unknown>,
    @query @doc("游戏(n+1)") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("游戏主页 url") website?: string,
    @query @doc("游戏图标 url") image?: string,
    @query @doc("游戏名") name?: string,
    @query @doc("目标用户mid") mid: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: unknown,
    @query @doc("当前页码") page_num?: int64,
    @query @doc("每页项数") page_size?: int64,
    @query @doc("游戏总数") total_count?: int64,
    @query @doc("游戏列表") list?: unknown[],
    @query @doc("内容") 项?: unknown,
    @query @doc("游戏1") field_0?: Record<unknown>,
    @query @doc("游戏(n+1)") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("游戏 id") game_base_id?: int64,
    @query @doc("游戏名") game_name?: string,
    @query @doc("游戏图标 url") game_icon?: string,
    @query @doc("游戏评分") grade?: int64,
    @query @doc("游戏主页 url") detail_url?: string,
    @query @doc("游戏标签") game_tags?: unknown[],
    @query @doc("游戏简介文案") notice?: string,
    @query @doc("游戏礼物文案") gift_title?: string,
    @query @doc("（？）") game_status_v2?: int64,
    @query @doc("内容") 项?: unknown,
    @query @doc("游戏标签1") field_0?: Record<unknown>,
    @query @doc("游戏标签(n+1)") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("目标用户mid") vmid: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: unknown,
    @query @doc("内容") 项?: unknown,
    @query @doc("投币视频1") field_0?: Record<unknown>,
    @query @doc("投币视频（n+1）") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("APP登录Token") access_key: string,
    @query @doc("APP密钥") appkey: string,
    @query @doc("目标用户mid") vmid: int64,
    @query @doc("页码") pn: int64,
    @query @doc("每页项数") ps: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("投币的视频数") count?: int64,
    @query @doc("投币视频列表") item?: unknown[],
    @query @doc("内容") 项?: unknown,
    @query @doc("投币的视频信息1") field_0?: Record<unknown>,
    @query @doc("投币的视频信息（n+1）") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("稿件标题") title?: string,
    @query @doc("空") subtitle?: string,
    @query @doc("空") tname?: string,
    @query @doc("封面图片 url") cover?: string,
    @query @doc("空") cover_icon?: string,
    @query @doc("APP 跳转 uri") uri?: string,
    @query @doc("稿件 avid") param?: string,
    @query @doc("av") goto?: string,
    @query @doc("空") length?: int64,
    @query @doc("稿件视频长度") duration?: int64,
    @query @doc("（？）") is_popular?: boolean,
    @query @doc("（？）") is_steins?: boolean,
    @query @doc("（？）") is_ugcpay?: boolean,
    @query @doc("（？）") is_cooperation?: string,
    @query @doc("（？）") is_pgc?: string,
    @query @doc("（？）") is_live_playback?: string,
    @query @doc("（？）") is_pugv?: string,
    @query @doc("（？）") is_fold?: int64,
    @query @doc("播放量") play?: int64,
    @query @doc("弹幕量") danmaku?: int64,
    @query @doc("发布时间") ctime?: int64,
    @query @doc("0") ugc_pay?: int64,
    @query @doc("UP主昵称") author?: string,
    @query @doc("true") state?: boolean,
    @query @doc("0") videos?: int64,
    @query @doc("稿件播放量文案") view_content?: string,
    @query @doc("0") icon_type?: int64,
    @query @doc("空") publish_time_text?: string,
    @query @doc("目标用户mid") vmid: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: unknown,
    @query @doc("内容") 项?: unknown,
    @query @doc("点赞视频1") field_0?: Record<unknown>,
    @query @doc("点赞视频（n+1）") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("APP登录Token") access_key: string,
    @query @doc("APP密钥") appkey: string,
    @query @doc("目标用户mid") vmid: int64,
    @query @doc("页码") pn: int64,
    @query @doc("每页项数") ps: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("点赞的视频数") count?: int64,
    @query @doc("点赞视频列表") item?: unknown[],
    @query @doc("内容") 项?: unknown,
    @query @doc("点赞的视频信息1") field_0?: Record<unknown>,
    @query @doc("点赞的视频信息（n+1）") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("稿件标题") title?: string,
    @query @doc("空") subtitle?: string,
    @query @doc("空") tname?: string,
    @query @doc("封面图片 url") cover?: string,
    @query @doc("空") cover_icon?: string,
    @query @doc("APP 跳转 uri") uri?: string,
    @query @doc("稿件 avid") param?: string,
    @query @doc("av") goto?: string,
    @query @doc("空") length?: int64,
    @query @doc("稿件视频长度") duration?: int64,
    @query @doc("（？）") is_popular?: boolean,
    @query @doc("（？）") is_steins?: boolean,
    @query @doc("（？）") is_ugcpay?: boolean,
    @query @doc("（？）") is_cooperation?: string,
    @query @doc("（？）") is_pgc?: string,
    @query @doc("（？）") is_live_playback?: string,
    @query @doc("（？）") is_pugv?: string,
    @query @doc("（？）") is_fold?: int64,
    @query @doc("播放量") play?: int64,
    @query @doc("弹幕量") danmaku?: int64,
    @query @doc("发布时间") ctime?: int64,
    @query @doc("0") ugc_pay?: int64,
    @query @doc("UP主昵称") author?: string,
    @query @doc("true") state?: boolean,
    @query @doc("0") videos?: int64,
    @query @doc("稿件播放量文案") view_content?: string,
    @query @doc("0") icon_type?: int64,
    @query @doc("空") publish_time_text?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("稿件avid")
  aid?: int64;

  @doc("视频分P总数")
  videos?: int64;

  @doc("分区tid")
  tid?: int64;

  @doc("子分区名称")
  tname?: string;

  @doc("是否转载")
  copyright?: int64;

  @doc("视频封面图片url")
  pic?: string;

  @doc("稿件标题")
  title?: string;

  @doc("稿件发布时间")
  pubdate?: int64;

  @doc("用户提交稿件的时间")
  ctime?: int64;

  @doc("视频简介")
  desc?: string;

  @doc("视频状态")
  state?: int64;

  @doc("稿件属性位配置")
  attribute?: int64;

  @doc("视频总计持续时长（所有分P）")
  duration?: int64;

}

/**
 * rights 对象
 */
@doc("rights 数据模型")
model Rights {
}

/**
 * owner 对象
 */
@doc("owner 数据模型")
model Owner {
}

/**
 * stat 对象
 */
@doc("stat 数据模型")
model Stat {
  @doc("视频同步发布的的动态的文字内容")
  dynamic?: string;

  @doc("视频1P cid")
  cid?: int64;

}

/**
 * dimension 对象
 */
@doc("dimension 数据模型")
model Dimension {
  @doc("稿件bvid")
  bvid?: string;

  @doc("置顶视频备注")
  reason?: string;

  @doc("是否为合作视频")
  inter_video?: boolean;

  @doc("置顶目标稿件avid")
  aid?: int64;

  @doc("置顶目标稿件bvid")
  bvid?: string;

  @doc("置顶视频备注")
  reason?: string;

  @doc("CSRF Token（位于cookie）")
  csrf?: string;

  @doc("返回值")
  code?: int64;

  @doc("错误信息")
  message?: string;

  @doc("1")
  ttl?: int64;

  @doc("CSRF Token（位于cookie）")
  csrf?: string;

  @doc("返回值")
  code?: int64;

  @doc("错误信息")
  message?: string;

  @doc("1")
  ttl?: int64;

  @doc("目标用户mid")
  vmid?: int64;

  @doc("返回值")
  code?: int64;

  @doc("错误信息")
  message?: string;

  @doc("1")
  ttl?: int64;

  @doc("代表作列表")
  data?: unknown[];

  @doc("内容")
  项?: unknown;

  @doc("代表作1")
  field_0?: Record<unknown>;

  @doc("代表作2")
  field_1?: Record<unknown>;

  @doc("代表作3")
  field_2?: Record<unknown>;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("置顶目标稿件avid")
  aid?: int64;

  @doc("置顶目标稿件bvid")
  bvid?: string;

  @doc("代表作备注")
  reason?: string;

  @doc("CSRF Token（位于cookie）")
  csrf?: string;

  @doc("返回值")
  code?: int64;

  @doc("错误信息")
  message?: string;

  @doc("1")
  ttl?: int64;

  @doc("要删除的目标稿件avid")
  aid?: int64;

  @doc("要删除的目标稿件bvid")
  bvid?: string;

  @doc("CSRF Token（位于cookie）")
  csrf?: string;

  @doc("返回值")
  code?: int64;

  @doc("错误信息")
  message?: string;

  @doc("1")
  ttl?: int64;

  @doc("目标用户mid")
  mid?: int64;

  @doc("返回值")
  code?: int64;

  @doc("错误信息")
  message?: string;

  @doc("1")
  ttl?: int64;

  @doc("信息本体")
  data?: unknown[];

  @doc("内容")
  项?: unknown;

  @doc("套了个娃")
  field_0?: Record<unknown>;

  @doc("目标用户mid")
  mid?: int64;

  @doc("TAG名称")
  tags?: unknown[];

  @doc("内容")
  项?: unknown;

  @doc("TAG1")
  field_0?: string;

  @doc("TAG(n+1)")
  n?: string;

  @doc("……")
  __?: string;

  @doc("TAG5")
  field_4?: string;

  @doc("要设置的TAG内容")
  tags?: unknown;

  @doc("CSRF Token（位于cookie）")
  csrf?: string;

  @doc("返回值")
  code?: int64;

  @doc("错误信息")
  message?: string;

  @doc("1")
  ttl?: int64;

  @doc("目标用户mid")
  mid?: int64;

  @doc("返回值")
  code?: int64;

  @doc("错误信息")
  message?: string;

  @doc("1")
  ttl?: int64;

  @doc("公告信息")
  data?: string;

  @doc("要设置的公告内容")
  notice?: string;

  @doc("CSRF Token（位于cookie）")
  csrf?: string;

  @doc("返回值")
  code?: int64;

  @doc("错误信息")
  message?: string;

  @doc("1")
  ttl?: int64;

  @doc("目标用户mid")
  mid?: int64;

  @doc("用户是否存在")
  status?: boolean;

  @doc("用户存在时：信息本体<br />用户不存在时：错误信息")
  data?: unknown;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("空间隐私权限")
  privacy?: Record<unknown>;

  @doc("空间板块布局")
  index_order?: unknown[];

  @doc("default主题？")
  theme?: string;

  @doc("主题预览图路径？")
  theme_preview_img_path?: string;

  @doc("空间头图")
  toutu?: Record<unknown>;

}

/**
 * privacy 对象
 */
@doc("privacy 数据模型")
model Privacy {
  @doc("追番及追剧")
  bangumi?: int64;

  @doc("轻视频")
  bbq?: int64;

  @doc("频道")
  channel?: int64;

  @doc("最近投币的视频")
  coins_video?: int64;

  @doc("追漫")
  comic?: int64;

  @doc("装扮")
  dress_up?: int64;

  @doc("收藏夹")
  fav_video?: int64;

  @doc("圈子？")
  groups?: int64;

  @doc("最近点赞的视频")
  likes_video?: int64;

  @doc("最近玩过的游戏")
  played_game?: int64;

  @doc("订阅标签")
  tags?: int64;

  @doc("个人资料")
  user_info?: int64;

  @doc("内容")
  项?: unknown;

  @doc("板块1")
  field_0?: Record<unknown>;

  @doc("板块(n+1)")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("板块编号")
  id?: int64;

  @doc("板块名称")
  name?: string;

}

/**
 * toutu 对象
 */
@doc("toutu 数据模型")
model Toutu {
  @doc("空间头图ID")
  sid?: int64;

  @doc("到期时间？")
  expire?: int64;

  @doc("空间头图小图相对路径")
  s_img?: string;

  @doc("空间头图相对路径")
  l_img?: string;

  @doc("空")
  android_img?: string;

  @doc("空")
  iphone_img?: string;

  @doc("空")
  ipad_img?: string;

  @doc("缩略图")
  thumbnail_img?: string;

  @doc("0")
  platform?: int64;

  @doc("目标用户mid")
  mid?: int64;

  @doc("成功: true<br />失败: false")
  status?: boolean;

  @doc("成功: 信息本体<br />失败: \"用户id错误\"")
  data?: unknown;

  @doc("空间头图 ID")
  id?: int64;

  @doc("显示名称")
  product_name?: string;

  @doc("价格")
  price?: int64;

  @doc("支付类型?")
  coin_type?: int64;

  @doc("大会员免费")
  vip_free?: int64;

  @doc("小图 URI")
  s_img?: string;

  @doc("大图 URI")
  l_img?: string;

  @doc("空")
  thumbnail_img?: string;

  @doc("排序编号")
  sort_num?: int64;

  @doc("已禁用")
  is_disable?: int64;

  @doc("过期时间?")
  expire?: int64;

  @doc("是否拥有?")
  had?: int64;

  @doc("头图 ID")
  id?: int64;

  @doc("CSRF Token (即 Cookie bili_jct 值)")
  csrf?: string;

  @doc("状态")
  status?: boolean;

  @doc("错误信息")
  data?: string;

  @doc("布局列表")
  index_order?: unknown;

  @doc("CSRF Token（位于cookie）")
  csrf?: string;

  @doc("操作结果")
  status?: boolean;

  @doc("错误信息")
  data?: string;

  @doc("收藏视频")
  fav_video?: int64;

  @doc("追番及追剧")
  bangumi?: int64;

  @doc("关注的TAG")
  tags?: int64;

  @doc("投币的视频")
  coins_video?: int64;

  @doc("个人信息")
  user_info?: int64;

  @doc("玩过的游戏")
  played_game?: int64;

  @doc("CSRF Token（位于cookie）")
  csrf?: unknown;

  @doc("操作结果")
  status?: boolean;

  @doc("错误信息")
  data?: string;

  @doc("目标用户mid")
  mid?: int64;

  @doc("返回值")
  code?: int64;

  @doc("错误信息")
  message?: string;

  @doc("1")
  ttl?: int64;

  @doc("信息本体")
  data?: unknown;

  @doc("内容")
  项?: unknown;

  @doc("游戏1")
  field_0?: Record<unknown>;

  @doc("游戏(n+1)")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("游戏主页 url")
  website?: string;

  @doc("游戏图标 url")
  image?: string;

  @doc("游戏名")
  name?: string;

  @doc("目标用户mid")
  mid?: int64;

  @doc("返回值")
  code?: int64;

  @doc("错误信息")
  message?: string;

  @doc("1")
  ttl?: int64;

  @doc("信息本体")
  data?: unknown;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("当前页码")
  page_num?: int64;

  @doc("每页项数")
  page_size?: int64;

  @doc("游戏总数")
  total_count?: int64;

  @doc("游戏列表")
  list?: unknown[];

  @doc("内容")
  项?: unknown;

  @doc("游戏1")
  field_0?: Record<unknown>;

  @doc("游戏(n+1)")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("游戏 id")
  game_base_id?: int64;

  @doc("游戏名")
  game_name?: string;

  @doc("游戏图标 url")
  game_icon?: string;

  @doc("游戏评分")
  grade?: int64;

  @doc("游戏主页 url")
  detail_url?: string;

  @doc("游戏标签")
  game_tags?: unknown[];

  @doc("游戏简介文案")
  notice?: string;

  @doc("游戏礼物文案")
  gift_title?: string;

  @doc("（？）")
  game_status_v2?: int64;

  @doc("内容")
  项?: unknown;

  @doc("游戏标签1")
  field_0?: Record<unknown>;

  @doc("游戏标签(n+1)")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("目标用户mid")
  vmid?: int64;

  @doc("返回值")
  code?: int64;

  @doc("错误信息")
  message?: string;

  @doc("1")
  ttl?: int64;

  @doc("信息本体")
  data?: unknown;

  @doc("内容")
  项?: unknown;

  @doc("投币视频1")
  field_0?: Record<unknown>;

  @doc("投币视频（n+1）")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("APP登录Token")
  access_key?: string;

  @doc("APP密钥")
  appkey?: string;

  @doc("目标用户mid")
  vmid?: int64;

  @doc("页码")
  pn?: int64;

  @doc("每页项数")
  ps?: int64;

  @doc("返回值")
  code?: int64;

  @doc("错误信息")
  message?: string;

  @doc("1")
  ttl?: int64;

  @doc("信息本体")
  data?: Record<unknown>;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("投币的视频数")
  count?: int64;

  @doc("投币视频列表")
  item?: unknown[];

  @doc("内容")
  项?: unknown;

  @doc("投币的视频信息1")
  field_0?: Record<unknown>;

  @doc("投币的视频信息（n+1）")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("稿件标题")
  title?: string;

  @doc("空")
  subtitle?: string;

  @doc("空")
  tname?: string;

  @doc("封面图片 url")
  cover?: string;

  @doc("空")
  cover_icon?: string;

  @doc("APP 跳转 uri")
  uri?: string;

  @doc("稿件 avid")
  param?: string;

  @doc("av")
  goto?: string;

  @doc("空")
  length?: int64;

  @doc("稿件视频长度")
  duration?: int64;

  @doc("（？）")
  is_popular?: boolean;

  @doc("（？）")
  is_steins?: boolean;

  @doc("（？）")
  is_ugcpay?: boolean;

  @doc("（？）")
  is_cooperation?: string;

  @doc("（？）")
  is_pgc?: string;

  @doc("（？）")
  is_live_playback?: string;

  @doc("（？）")
  is_pugv?: string;

  @doc("（？）")
  is_fold?: int64;

  @doc("播放量")
  play?: int64;

  @doc("弹幕量")
  danmaku?: int64;

  @doc("发布时间")
  ctime?: int64;

  @doc("0")
  ugc_pay?: int64;

  @doc("UP主昵称")
  author?: string;

  @doc("true")
  state?: boolean;

  @doc("0")
  videos?: int64;

  @doc("稿件播放量文案")
  view_content?: string;

  @doc("0")
  icon_type?: int64;

  @doc("空")
  publish_time_text?: string;

  @doc("目标用户mid")
  vmid?: int64;

  @doc("返回值")
  code?: int64;

  @doc("错误信息")
  message?: string;

  @doc("1")
  ttl?: int64;

  @doc("信息本体")
  data?: unknown;

  @doc("内容")
  项?: unknown;

  @doc("点赞视频1")
  field_0?: Record<unknown>;

  @doc("点赞视频（n+1）")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("APP登录Token")
  access_key?: string;

  @doc("APP密钥")
  appkey?: string;

  @doc("目标用户mid")
  vmid?: int64;

  @doc("页码")
  pn?: int64;

  @doc("每页项数")
  ps?: int64;

  @doc("返回值")
  code?: int64;

  @doc("错误信息")
  message?: string;

  @doc("1")
  ttl?: int64;

  @doc("信息本体")
  data?: Record<unknown>;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("点赞的视频数")
  count?: int64;

  @doc("点赞视频列表")
  item?: unknown[];

  @doc("内容")
  项?: unknown;

  @doc("点赞的视频信息1")
  field_0?: Record<unknown>;

  @doc("点赞的视频信息（n+1）")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("稿件标题")
  title?: string;

  @doc("空")
  subtitle?: string;

  @doc("空")
  tname?: string;

  @doc("封面图片 url")
  cover?: string;

  @doc("空")
  cover_icon?: string;

  @doc("APP 跳转 uri")
  uri?: string;

  @doc("稿件 avid")
  param?: string;

  @doc("av")
  goto?: string;

  @doc("空")
  length?: int64;

  @doc("稿件视频长度")
  duration?: int64;

  @doc("（？）")
  is_popular?: boolean;

  @doc("（？）")
  is_steins?: boolean;

  @doc("（？）")
  is_ugcpay?: boolean;

  @doc("（？）")
  is_cooperation?: string;

  @doc("（？）")
  is_pgc?: string;

  @doc("（？）")
  is_live_playback?: string;

  @doc("（？）")
  is_pugv?: string;

  @doc("（？）")
  is_fold?: int64;

  @doc("播放量")
  play?: int64;

  @doc("弹幕量")
  danmaku?: int64;

  @doc("发布时间")
  ctime?: int64;

  @doc("0")
  ugc_pay?: int64;

  @doc("UP主昵称")
  author?: string;

  @doc("true")
  state?: boolean;

  @doc("0")
  videos?: int64;

  @doc("稿件播放量文案")
  view_content?: string;

  @doc("0")
  icon_type?: int64;

  @doc("空")
  publish_time_text?: string;

}

/**
 * 投稿
 */
@route("/x/space/wbi/arc/search")
@tag("User")
interface 投稿 {
  @get
  @doc("投稿")
  投稿(
    @query @doc("目标用户mid") mid: int64,
    @query @doc("排序方式") order: string,
    @query @doc("筛选目标分区") tid: int64,
    @query @doc("关键词筛选") keyword: string,
    @query @doc("页码") pn: int64,
    @query @doc("每页项数") ps: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("列表信息") list?: Record<unknown>,
    @query @doc("页面信息") page?: Record<unknown>,
    @query @doc("“播放全部“按钮") episodic_button?: Record<unknown>,
    @query @doc("空数组") slist?: unknown[],
    @query @doc("投稿视频分区索引") tlist?: Record<unknown>,
    @query @doc("投稿视频列表") vlist?: unknown[],
    @query @doc("该分区的详情") _tid_?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("投稿至该分区的视频数") count?: int64,
    @query @doc("该分区名称") name?: string,
    @query @doc("该分区tid") tid?: int64,
    @query @doc("内容") 项?: unknown,
    @query @doc("投稿视频1") field_0?: Record<unknown>,
    @query @doc("投稿视频（n+1）") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("稿件avid") aid?: int64,
    @query @doc("视频UP主") author?: string,
    @query @doc("稿件bvid") bvid?: string,
    @query @doc("视频评论数") comment?: int64,
    @query @doc("视频版权类型") copyright?: string,
    @query @doc("投稿时间") created?: int64,
    @query @doc("视频简介") description?: string,
    @query @doc("充电为1，否则0") elec_arc_type?: int64,
    @query @doc("0") enable_vt?: int64,
    @query @doc("false") hide_click?: boolean,
    @query @doc("0") is_avoided?: int64,
    @query @doc("是否为充电视频") is_charging_arc?: boolean,
    @query @doc("是否为课堂视频") is_lesson_video?: int64,
    @query @doc("课堂是否已完结") is_lesson_finished?: int64,
    @query @doc("是否为直播回放") is_live_playback?: int64,
    @query @doc("0") is_pay?: int64,
    @query @doc("false") is_self_view?: boolean,
    @query @doc("是否为互动视频") is_steins_gate?: int64,
    @query @doc("是否为合作视频") is_union_video?: int64,
    @query @doc("跳转链接") jump_url?: string,
    @query @doc("视频长度") length?: string,
    @query @doc("视频UP主mid") mid?: int64,
    @query @doc("所属合集或课堂") meta?: Record<unknown>,
    @query @doc("视频封面") pic?: string,
    @query @doc("视频播放次数") play?: int64,
    @query @doc("百分比播放进度") playback_position?: int64,
    @query @doc("0") review?: int64,
    @query @doc("合集或课堂编号") season_id?: int64,
    @query @doc("空") subtitle?: string,
    @query @doc("视频标题") title?: string,
    @query @doc("视频分区tid") typeid?: int64,
    @query @doc("视频弹幕数") video_review?: int64,
    @query @doc("0") vt?: int64,
    @query @doc("空") vt_display?: string,
    @query @doc("0") attribute?: int64,
    @query @doc("合集封面URL") cover?: string,
    @query @doc("合集视频数量") ep_count?: int64,
    @query @doc("合集视频数量") ep_num?: int64,
    @query @doc("首个视频av号") first_aid?: int64,
    @query @doc("合集id") id?: int64,
    @query @doc("合集介绍") intro?: string,
    @query @doc("UP主uid") mid?: int64,
    @query @doc("unix时间(s)") ptime?: int64,
    @query @doc("0") sign_state?: int64,
    @query @doc("合集统计数据") stat?: Record<unknown>,
    @query @doc("合集名称") title?: string,
    @query @doc("合集总投币数") coin?: int64,
    @query @doc("合集总弹幕数") danmaku?: int64,
    @query @doc("合集总收藏数") favorite?: int64,
    @query @doc("合集总点赞数") like?: int64,
    @query @doc("unix时间(s)") mtime?: int64,
    @query @doc("合集总评论数") reply?: int64,
    @query @doc("合集id") season_id?: int64,
    @query @doc("合集总分享数") share?: int64,
    @query @doc("合集总播放量") view?: int64,
    @query @doc("0") vt?: int64,
    @query @doc("0") vv?: int64,
    @query @doc("总计稿件数") count?: int64,
    @query @doc("当前页码") pn?: int64,
    @query @doc("每页项数") ps?: int64,
    @query @doc("按钮文字") text?: string,
    @query @doc("全部播放页url") uri?: string,
    @query @doc("目标用户mid") vmid: int64,
    @query @doc("请求返回起始视频") aid?: int64,
    @query @doc("排序方式") order: string,
    @query @doc("确有影响，但这是什么呢？") sort: string,
    @query @doc("APP登录Token") access_key: string,
    @query @doc("APP密钥") appkey: string,
    @query @doc("版本") build: int64,
    @query @doc("语言") c_locale: string,
    @query @doc("频道") channel: int64,
    @query @doc("视频流类型") fnval: int64,
    @query @doc("请求时提供的fnver") fnver: int64,
    @query @doc("源url类型") force_host: int64,
    @query @doc("是否允许 4K 视频") fourk: int64,
    @query @doc("未知") include_cursor: boolean,
    @query @doc("平台标识") mobi_app: string,
    @query @doc("平台") platform: string,
    @query @doc("每页条数") ps: int32,
    @query @doc("似乎不是页码") pn: int32,
    @query @doc("未知") pn_policy: int32,
    @query @doc("语言") s_locale: string,
    @query @doc("位置") statistics: string,
    @query @doc("秒级时间戳") ts: int64,
    @query @doc("未知") voice_balance: int64,
    @query @doc("APP签名") sign: string,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("视频信息") data?: Record<unknown>,
    @query @doc("总数") count?: int64,
    @query @doc("播放按钮") episodic_button?: Record<unknown>,
    @query @doc("有无后续") has_next?: boolean,
    @query @doc("有无前置") has_prev?: boolean,
    @query @doc("视频列表") item?: unknown[],
    @query @doc("上次播放定位") last_watched_locator?: Record<unknown>,
    @query @doc("排列方式") order?: unknown[],
    @query @doc("四个大字“播放全部”") text?: string,
    @query @doc("跳转链接") uri?: string,
    @query @doc("内容") 项?: unknown,
    @query @doc("视频信息1") field_0?: Record<unknown>,
    @query @doc("视频信息(n+1)") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("作者昵称") author?: string,
    @query @doc("视频bv号") bvid?: string,
    @query @doc("封面url") cover?: string,
    @query @doc("封面icon？未知") cover_icon?: string,
    @query @doc("应该是发布时间秒级时间戳") ctime?: int64,
    @query @doc("上次观看标记") cursor_attr?: Record<unknown>,
    @query @doc("弹幕数") danmaku?: int64,
    @query @doc("视频时长") duration?: int64,
    @query @doc("首个频道cid") first_cid?: int64,
    @query @doc("应该是跳转去向类型") goto?: string,
    @query @doc("icon类型？未知") icon_type?: int64,
    @query @doc("是否为合作视频") is_cooperation?: boolean,
    @query @doc("是否折叠？未知") is_fold?: boolean,
    @query @doc("是否为直播回放") is_live_playback?: boolean,
    @query @doc("是否自己？未知") is_onself?: boolean,
    @query @doc("是否开pgc") is_pgc?: boolean,
    @query @doc("是否上热门") is_popular?: boolean,
    @query @doc("未知") is_pugv?: boolean,
    @query @doc("未知") is_steins?: boolean,
    @query @doc("未知") is_ugcpay?: boolean,
    @query @doc("长度？未知") length?: int64,
    @query @doc("参数，实际为视频aid") param?: string,
    @query @doc("播放量") play?: int64,
    @query @doc("发布时间汉字字符串版") publish_time_text?: string,
    @query @doc("状态？未知") state?: boolean,
    @query @doc("子标题") subtitle?: string,
    @query @doc("三点按钮内容") three_points?: unknown[],
    @query @doc("标题") title?: string,
    @query @doc("tag的name") tname?: string,
    @query @doc("ugc支付？未知") ugc_pay?: int64,
    @query @doc("APP 跳转 uri") uri?: string,
    @query @doc("未知") video?: int64,
    @query @doc("播放量字符串版") view_content?: string,
    @query @doc("是否为上次播放") is_last_watched_arc?: boolean,
    @query @doc("视频所处该列表排名") rank?: int64,
    @query @doc("显示阈值") display_threshold?: int64,
    @query @doc("嵌入排名") insert_ranking?: int64,
    @query @doc("定位上次观看字样") text?: string,
    @query @doc("内容") 项?: unknown,
    @query @doc("最新发布的内容") field_0?: Record<unknown>,
    @query @doc("最多播放的内容") field_1?: Record<unknown>,
    @query @doc("目标用户mid") mid: int64,
    @query @doc("获取的相簿量") ps: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("相簿列表") data?: unknown[],
    @query @doc("内容") 项?: unknown,
    @query @doc("相簿内容1") field_0?: Record<unknown>,
    @query @doc("相簿内容（n+1）") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("总计图片数") count?: int64,
    @query @doc("发布时间") ctime?: int64,
    @query @doc("简介") description?: string,
    @query @doc("相簿id") doc_id?: int64,
    @query @doc("点赞数") like?: int64,
    @query @doc("图片内容") pictures?: unknown[],
    @query @doc("上传用户mid") poster_uid?: int64,
    @query @doc("标题") title?: string,
    @query @doc("浏览数") view?: int64,
    @query @doc("内容") 项?: unknown,
    @query @doc("内容图片1") field_0?: Record<unknown>,
    @query @doc("内容图片（n+1）") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("图片高度") img_height?: int64,
    @query @doc("图片大小") img_size?: int64,
    @query @doc("图片url") img_src?: string,
    @query @doc("图片宽度") img_width?: int64,
    @query @doc("目标用户mid") uid: int64,
    @query @doc("页码") page_num: int64,
    @query @doc("每页项数") page_size: int64,
    @query @doc("查询类型") biz: string,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") msg?: string,
    @query @doc("错误信息") message?: string,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("相簿列表") items?: unknown[],
    @query @doc("内容") 项?: unknown,
    @query @doc("相簿内容1") field_0?: Record<unknown>,
    @query @doc("相簿内容（n+1）") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("总计图片数") count?: int64,
    @query @doc("发布时间") ctime?: int64,
    @query @doc("简介") description?: string,
    @query @doc("相簿id") doc_id?: int64,
    @query @doc("点赞数") like?: int64,
    @query @doc("图片内容") pictures?: unknown[],
    @query @doc("上传用户mid") poster_uid?: int64,
    @query @doc("标题") title?: string,
    @query @doc("浏览数") view?: int64,
    @query @doc("内容") 项?: unknown,
    @query @doc("内容图片1") field_0?: Record<unknown>,
    @query @doc("内容图片（n+1）") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("图片高度") img_height?: int64,
    @query @doc("图片大小") img_size?: int64,
    @query @doc("图片url") img_src?: string,
    @query @doc("图片宽度") img_width?: int64,
    @query @doc("用户uid") mid?: int64,
    @query @doc("默认：1") pn?: int64,
    @query @doc("默认：30<br/>范围：\\[1,30\\]") ps?: int64,
    @query @doc("`publish_time`：最新发布<br/>`view`：最多阅读<br/>`fav`：最多收藏<br/>默认：`publish_time`") sort?: string,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("专栏文章信息列表") articles?: unknown[],
    @query @doc("本次请求分页页数") pn?: int64,
    @query @doc("本次请求分页大小") ps?: int64,
    @query @doc("专栏文章总数") count?: int64,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("专栏文章id") id?: int64,
    @query @doc("分类") category?: Record<unknown>,
    @query @doc("分类") categories?: unknown[],
    @query @doc("标题") title?: string,
    @query @doc("摘要") summary?: string,
    @query @doc("封面图") banner_url?: string,
    @query @doc("UP主信息") author?: Record<unknown>,
    @query @doc("发布时间戳") publish_time?: int64,
    @query @doc("提交时间戳") ctime?: int64,
    @query @doc("专栏文章数据统计") stats?: Record<unknown>,
    @query @doc("标签") tags?: unknown[],
    @query @doc("粉丝动态文案") dynamic?: string,
    @query @doc("`空串`") apply_time?: string,
    @query @doc("`空串`") check_time?: string,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("分类id") id?: int64,
    @query @doc("父级分类id") parent_id?: int64,
    @query @doc("分类名称") name?: string,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("分类id") id?: int64,
    @query @doc("父级分类id") parent_id?: int64,
    @query @doc("分类名称") name?: string,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("用户uid") mid?: int64,
    @query @doc("用户名") name?: string,
    @query @doc("头像") face?: string,
    @query @doc("头像框信息") pendant?: Record<unknown>,
    @query @doc("账号认证信息") official_verify?: Record<unknown>,
    @query @doc("成就勋章信息") nameplate?: Record<unknown>,
    @query @doc("大会员信息") vip?: Record<unknown>,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("头像框id") pid?: int64,
    @query @doc("头像框名称") name?: string,
    @query @doc("头像框图片url") image?: string,
    @query @doc("过期时间") expire?: int64,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("是否认证") type?: int64,
    @query @doc("认证备注") desc?: string,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("勋章id") nid?: int64,
    @query @doc("勋章名称") name?: string,
    @query @doc("勋章图标") image?: string,
    @query @doc("勋章图标（小）") image_small?: string,
    @query @doc("勋章等级") level?: string,
    @query @doc("获取条件") condition?: string,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("大会员类型") type?: int64,
    @query @doc("大会员状态") status?: int64,
    @query @doc("大会员过期时间时间戳") due_date?: int64,
    @query @doc("支付类型") vip_pay_type?: int64,
    @query @doc("`0`") theme_type?: int64,
    @query @doc("大会员标签") label?: Record<unknown>,
    @query @doc("是否显示大会员图标") avatar_subscript?: int64,
    @query @doc("大会员昵称颜色") nickname_color?: string,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("`空串`") path?: string,
    @query @doc("会员类型文案") text?: string,
    @query @doc("会员标签") label_theme?: string,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("浏览数") view?: int64,
    @query @doc("收藏数") favorite?: int64,
    @query @doc("点赞数") like?: int64,
    @query @doc("点踩数") dislike?: int64,
    @query @doc("回复数") reply?: int64,
    @query @doc("转发数") share?: int64,
    @query @doc("投币数") coin?: int64,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("标签id") tid?: int64,
    @query @doc("标签名称") name?: string,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("`0`") score?: int64,
    @query @doc("`0`") media_id?: int64,
    @query @doc("`空串`") title?: string,
    @query @doc("`空串`") cover?: string,
    @query @doc("`空串`") area?: string,
    @query @doc("`0`") type_id?: int64,
    @query @doc("`空串`") type_name?: string,
    @query @doc("`0`") spoiler?: int64,
    @query @doc("用户uid") mid?: int64,
    @query @doc("排序方式") sort?: int64,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("响应码") code?: int64,
    @query @doc("0") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("文集信息列表") lists?: unknown[],
    @query @doc("文集总数") total?: int64,
    @query @doc("内容") 字段名?: unknown,
    @query @doc("文集id") id?: int64,
    @query @doc("作者uid") mid?: int64,
    @query @doc("文集名称") name?: string,
    @query @doc("封面") image_url?: string,
    @query @doc("最后更新时间戳") update_time?: int64,
    @query @doc("创建时间戳") ctime?: int64,
    @query @doc("单位：秒") publish_time?: int64,
    @query @doc("`空串`") summary?: string,
    @query @doc("总字数") words?: int64,
    @query @doc("阅读量") read?: int64,
    @query @doc("包含文章数") articles_count?: int64,
    @query @doc("`1`") state?: int64,
    @query @doc("`空串`") reason?: string,
    @query @doc("`空串`") apply_time?: string,
    @query @doc("`空串`") check_time?: string,
    @query @doc("用户 mid") mid: int64,
    @query @doc("页码") pn: int64,
    @query @doc("每页项数") ps: int64,
    @query @doc("排序方式") order: string,
    @query @doc("返回值") code?: int64,
    @query @doc("返回信息") msg?: string,
    @query @doc("数据本体") data?: string,
    @query @doc("当前页码") curPage?: int64,
    @query @doc("总页数") pageCount?: int64,
    @query @doc("总计数") totalSize?: int64,
    @query @doc("每页项数") pageSize?: int64,
    @query @doc("音频列表") data?: unknown[],
    @query @doc("音频 AU 号") id?: int64,
    @query @doc("用户 mid") uid?: int64,
    @query @doc("用户名") uname?: string,
    @query @doc("音频标题") title?: string,
    @query @doc("音频封面图片 URL") cover?: string,
    @query @doc("音频歌词 URL") lyric?: string,
    @query @doc("1") crtype?: int64,
    @query @doc("音频时长") duration?: int64,
    @query @doc("发布时间") passtime?: int64,
    @query @doc("0") curtime?: int64,
    @query @doc("发布时间") ctime?: int64,
    @query @doc("统计数") statistic?: Record<unknown>,
    @query @doc("硬币数量") coin_num?: int64,
    @query @doc("音频 AU 号") sid?: int64,
    @query @doc("播放数") play?: int64,
    @query @doc("收藏数") collect?: int64,
    @query @doc("评论数") comment?: int64,
    @query @doc("分享数") share?: int64,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("列表信息")
  list?: Record<unknown>;

  @doc("页面信息")
  page?: Record<unknown>;

  @doc("“播放全部“按钮")
  episodic_button?: Record<unknown>;

}

/**
 * list 对象
 */
@doc("list 数据模型")
model List {
  @doc("空数组")
  slist?: unknown[];

  @doc("投稿视频分区索引")
  tlist?: Record<unknown>;

  @doc("投稿视频列表")
  vlist?: unknown[];

}

/**
 * tlist 对象
 */
@doc("tlist 数据模型")
model Tlist {
  @doc("……")
  __?: Record<unknown>;

}

/**
 * {tid} 对象
 */
@doc("{tid} 数据模型")
model Tid {
  @doc("投稿至该分区的视频数")
  count?: int64;

  @doc("该分区名称")
  name?: string;

  @doc("该分区tid")
  tid?: int64;

  @doc("内容")
  项?: unknown;

  @doc("投稿视频1")
  field_0?: Record<unknown>;

  @doc("投稿视频（n+1）")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("稿件avid")
  aid?: int64;

  @doc("视频UP主")
  author?: string;

  @doc("稿件bvid")
  bvid?: string;

  @doc("视频评论数")
  comment?: int64;

  @doc("视频版权类型")
  copyright?: string;

  @doc("投稿时间")
  created?: int64;

  @doc("视频简介")
  description?: string;

  @doc("充电为1，否则0")
  elec_arc_type?: int64;

  @doc("0")
  enable_vt?: int64;

  @doc("false")
  hide_click?: boolean;

  @doc("0")
  is_avoided?: int64;

  @doc("是否为充电视频")
  is_charging_arc?: boolean;

  @doc("是否为课堂视频")
  is_lesson_video?: int64;

  @doc("课堂是否已完结")
  is_lesson_finished?: int64;

  @doc("是否为直播回放")
  is_live_playback?: int64;

  @doc("0")
  is_pay?: int64;

  @doc("false")
  is_self_view?: boolean;

  @doc("是否为互动视频")
  is_steins_gate?: int64;

  @doc("是否为合作视频")
  is_union_video?: int64;

  @doc("跳转链接")
  jump_url?: string;

  @doc("视频长度")
  length?: string;

  @doc("视频UP主mid")
  mid?: int64;

  @doc("所属合集或课堂")
  meta?: Record<unknown>;

  @doc("视频封面")
  pic?: string;

  @doc("视频播放次数")
  play?: int64;

  @doc("百分比播放进度")
  playback_position?: int64;

  @doc("0")
  review?: int64;

  @doc("合集或课堂编号")
  season_id?: int64;

  @doc("空")
  subtitle?: string;

  @doc("视频标题")
  title?: string;

  @doc("视频分区tid")
  typeid?: int64;

  @doc("视频弹幕数")
  video_review?: int64;

  @doc("0")
  vt?: int64;

  @doc("空")
  vt_display?: string;

}

/**
 * meta 对象
 */
@doc("meta 数据模型")
model Meta {
  @doc("0")
  attribute?: int64;

  @doc("合集封面URL")
  cover?: string;

  @doc("合集视频数量")
  ep_count?: int64;

  @doc("合集视频数量")
  ep_num?: int64;

  @doc("首个视频av号")
  first_aid?: int64;

  @doc("合集id")
  id?: int64;

  @doc("合集介绍")
  intro?: string;

  @doc("UP主uid")
  mid?: int64;

  @doc("unix时间(s)")
  ptime?: int64;

  @doc("0")
  sign_state?: int64;

  @doc("合集统计数据")
  stat?: Record<unknown>;

  @doc("合集名称")
  title?: string;

}

/**
 * meta 对象
 */
@doc("meta 数据模型")
model Meta {
  @doc("合集总投币数")
  coin?: int64;

  @doc("合集总弹幕数")
  danmaku?: int64;

  @doc("合集总收藏数")
  favorite?: int64;

  @doc("合集总点赞数")
  like?: int64;

  @doc("unix时间(s)")
  mtime?: int64;

  @doc("合集总评论数")
  reply?: int64;

  @doc("合集id")
  season_id?: int64;

  @doc("合集总分享数")
  share?: int64;

  @doc("合集总播放量")
  view?: int64;

  @doc("0")
  vt?: int64;

  @doc("0")
  vv?: int64;

}

/**
 * page 对象
 */
@doc("page 数据模型")
model Page {
  @doc("总计稿件数")
  count?: int64;

  @doc("当前页码")
  pn?: int64;

  @doc("每页项数")
  ps?: int64;

}

/**
 * episodic_button 对象
 */
@doc("episodic_button 数据模型")
model Episodic_button {
  @doc("按钮文字")
  text?: string;

  @doc("全部播放页url")
  uri?: string;

  @doc("目标用户mid")
  vmid?: int64;

  @doc("请求返回起始视频")
  aid?: int64;

  @doc("排序方式")
  order?: string;

  @doc("确有影响，但这是什么呢？")
  sort?: string;

  @doc("APP登录Token")
  access_key?: string;

  @doc("APP密钥")
  appkey?: string;

  @doc("版本")
  build?: int64;

  @doc("语言")
  c_locale?: string;

  @doc("频道")
  channel?: int64;

  @doc("视频流类型")
  fnval?: int64;

  @doc("请求时提供的fnver")
  fnver?: int64;

  @doc("源url类型")
  force_host?: int64;

  @doc("是否允许 4K 视频")
  fourk?: int64;

  @doc("未知")
  include_cursor?: boolean;

  @doc("平台标识")
  mobi_app?: string;

  @doc("平台")
  platform?: string;

  @doc("每页条数")
  ps?: int32;

  @doc("似乎不是页码")
  pn?: int32;

  @doc("未知")
  pn_policy?: int32;

  @doc("语言")
  s_locale?: string;

  @doc("位置")
  statistics?: string;

  @doc("秒级时间戳")
  ts?: int64;

  @doc("未知")
  voice_balance?: int64;

  @doc("APP签名")
  sign?: string;

  @doc("返回值")
  code?: int64;

  @doc("错误信息")
  message?: string;

  @doc("1")
  ttl?: int64;

  @doc("视频信息")
  data?: Record<unknown>;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("总数")
  count?: int64;

  @doc("播放按钮")
  episodic_button?: Record<unknown>;

  @doc("有无后续")
  has_next?: boolean;

  @doc("有无前置")
  has_prev?: boolean;

  @doc("视频列表")
  item?: unknown[];

  @doc("上次播放定位")
  last_watched_locator?: Record<unknown>;

  @doc("排列方式")
  order?: unknown[];

}

/**
 * episodic_button 对象
 */
@doc("episodic_button 数据模型")
model Episodic_button {
  @doc("四个大字“播放全部”")
  text?: string;

  @doc("跳转链接")
  uri?: string;

  @doc("内容")
  项?: unknown;

  @doc("视频信息1")
  field_0?: Record<unknown>;

  @doc("视频信息(n+1)")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("作者昵称")
  author?: string;

  @doc("视频bv号")
  bvid?: string;

  @doc("封面url")
  cover?: string;

  @doc("封面icon？未知")
  cover_icon?: string;

  @doc("应该是发布时间秒级时间戳")
  ctime?: int64;

  @doc("上次观看标记")
  cursor_attr?: Record<unknown>;

  @doc("弹幕数")
  danmaku?: int64;

  @doc("视频时长")
  duration?: int64;

  @doc("首个频道cid")
  first_cid?: int64;

  @doc("应该是跳转去向类型")
  goto?: string;

  @doc("icon类型？未知")
  icon_type?: int64;

  @doc("是否为合作视频")
  is_cooperation?: boolean;

  @doc("是否折叠？未知")
  is_fold?: boolean;

  @doc("是否为直播回放")
  is_live_playback?: boolean;

  @doc("是否自己？未知")
  is_onself?: boolean;

  @doc("是否开pgc")
  is_pgc?: boolean;

  @doc("是否上热门")
  is_popular?: boolean;

  @doc("未知")
  is_pugv?: boolean;

  @doc("未知")
  is_steins?: boolean;

  @doc("未知")
  is_ugcpay?: boolean;

  @doc("长度？未知")
  length?: int64;

  @doc("参数，实际为视频aid")
  param?: string;

  @doc("播放量")
  play?: int64;

  @doc("发布时间汉字字符串版")
  publish_time_text?: string;

  @doc("状态？未知")
  state?: boolean;

  @doc("子标题")
  subtitle?: string;

  @doc("三点按钮内容")
  three_points?: unknown[];

  @doc("标题")
  title?: string;

  @doc("tag的name")
  tname?: string;

  @doc("ugc支付？未知")
  ugc_pay?: int64;

  @doc("APP 跳转 uri")
  uri?: string;

  @doc("未知")
  video?: int64;

  @doc("播放量字符串版")
  view_content?: string;

}

/**
 * cursor_attr 对象
 */
@doc("cursor_attr 数据模型")
model Cursor_attr {
  @doc("是否为上次播放")
  is_last_watched_arc?: boolean;

  @doc("视频所处该列表排名")
  rank?: int64;

}

/**
 * last_watched_locator 对象
 */
@doc("last_watched_locator 数据模型")
model Last_watched_locator {
  @doc("显示阈值")
  display_threshold?: int64;

  @doc("嵌入排名")
  insert_ranking?: int64;

  @doc("定位上次观看字样")
  text?: string;

  @doc("内容")
  项?: unknown;

  @doc("最新发布的内容")
  field_0?: Record<unknown>;

  @doc("最多播放的内容")
  field_1?: Record<unknown>;

  @doc("目标用户mid")
  mid?: int64;

  @doc("获取的相簿量")
  ps?: int64;

  @doc("返回值")
  code?: int64;

  @doc("错误信息")
  message?: string;

  @doc("1")
  ttl?: int64;

  @doc("相簿列表")
  data?: unknown[];

  @doc("内容")
  项?: unknown;

  @doc("相簿内容1")
  field_0?: Record<unknown>;

  @doc("相簿内容（n+1）")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("总计图片数")
  count?: int64;

  @doc("发布时间")
  ctime?: int64;

  @doc("简介")
  description?: string;

  @doc("相簿id")
  doc_id?: int64;

  @doc("点赞数")
  like?: int64;

  @doc("图片内容")
  pictures?: unknown[];

  @doc("上传用户mid")
  poster_uid?: int64;

  @doc("标题")
  title?: string;

  @doc("浏览数")
  view?: int64;

  @doc("内容")
  项?: unknown;

  @doc("内容图片1")
  field_0?: Record<unknown>;

  @doc("内容图片（n+1）")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("图片高度")
  img_height?: int64;

  @doc("图片大小")
  img_size?: int64;

  @doc("图片url")
  img_src?: string;

  @doc("图片宽度")
  img_width?: int64;

  @doc("目标用户mid")
  uid?: int64;

  @doc("页码")
  page_num?: int64;

  @doc("每页项数")
  page_size?: int64;

  @doc("查询类型")
  biz?: string;

  @doc("返回值")
  code?: int64;

  @doc("错误信息")
  msg?: string;

  @doc("错误信息")
  message?: string;

  @doc("信息本体")
  data?: Record<unknown>;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("相簿列表")
  items?: unknown[];

  @doc("内容")
  项?: unknown;

  @doc("相簿内容1")
  field_0?: Record<unknown>;

  @doc("相簿内容（n+1）")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("总计图片数")
  count?: int64;

  @doc("发布时间")
  ctime?: int64;

  @doc("简介")
  description?: string;

  @doc("相簿id")
  doc_id?: int64;

  @doc("点赞数")
  like?: int64;

  @doc("图片内容")
  pictures?: unknown[];

  @doc("上传用户mid")
  poster_uid?: int64;

  @doc("标题")
  title?: string;

  @doc("浏览数")
  view?: int64;

  @doc("内容")
  项?: unknown;

  @doc("内容图片1")
  field_0?: Record<unknown>;

  @doc("内容图片（n+1）")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("图片高度")
  img_height?: int64;

  @doc("图片大小")
  img_size?: int64;

  @doc("图片url")
  img_src?: string;

  @doc("图片宽度")
  img_width?: int64;

  @doc("用户uid")
  mid?: int64;

  @doc("默认：1")
  pn?: int64;

  @doc("默认：30<br/>范围：\\[1,30\\]")
  ps?: int64;

  @doc("`publish_time`：最新发布<br/>`view`：最多阅读<br/>`fav`：最多收藏<br/>默认：`publish_time`")
  sort?: string;

  @doc("返回值")
  code?: int64;

  @doc("错误信息")
  message?: string;

  @doc("1")
  ttl?: int64;

  @doc("信息本体")
  data?: Record<unknown>;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("专栏文章信息列表")
  articles?: unknown[];

  @doc("本次请求分页页数")
  pn?: int64;

  @doc("本次请求分页大小")
  ps?: int64;

  @doc("专栏文章总数")
  count?: int64;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("专栏文章id")
  id?: int64;

  @doc("分类")
  category?: Record<unknown>;

  @doc("分类")
  categories?: unknown[];

  @doc("标题")
  title?: string;

  @doc("摘要")
  summary?: string;

  @doc("封面图")
  banner_url?: string;

  @doc("UP主信息")
  author?: Record<unknown>;

  @doc("发布时间戳")
  publish_time?: int64;

  @doc("提交时间戳")
  ctime?: int64;

  @doc("专栏文章数据统计")
  stats?: Record<unknown>;

  @doc("标签")
  tags?: unknown[];

  @doc("粉丝动态文案")
  dynamic?: string;

  @doc("`空串`")
  apply_time?: string;

  @doc("`空串`")
  check_time?: string;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("分类id")
  id?: int64;

  @doc("父级分类id")
  parent_id?: int64;

  @doc("分类名称")
  name?: string;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("分类id")
  id?: int64;

  @doc("父级分类id")
  parent_id?: int64;

  @doc("分类名称")
  name?: string;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("用户uid")
  mid?: int64;

  @doc("用户名")
  name?: string;

  @doc("头像")
  face?: string;

  @doc("头像框信息")
  pendant?: Record<unknown>;

  @doc("账号认证信息")
  official_verify?: Record<unknown>;

  @doc("成就勋章信息")
  nameplate?: Record<unknown>;

  @doc("大会员信息")
  vip?: Record<unknown>;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("头像框id")
  pid?: int64;

  @doc("头像框名称")
  name?: string;

  @doc("头像框图片url")
  image?: string;

  @doc("过期时间")
  expire?: int64;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("是否认证")
  type?: int64;

  @doc("认证备注")
  desc?: string;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("勋章id")
  nid?: int64;

  @doc("勋章名称")
  name?: string;

  @doc("勋章图标")
  image?: string;

  @doc("勋章图标（小）")
  image_small?: string;

  @doc("勋章等级")
  level?: string;

  @doc("获取条件")
  condition?: string;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("大会员类型")
  type?: int64;

  @doc("大会员状态")
  status?: int64;

  @doc("大会员过期时间时间戳")
  due_date?: int64;

  @doc("支付类型")
  vip_pay_type?: int64;

  @doc("`0`")
  theme_type?: int64;

  @doc("大会员标签")
  label?: Record<unknown>;

  @doc("是否显示大会员图标")
  avatar_subscript?: int64;

  @doc("大会员昵称颜色")
  nickname_color?: string;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("`空串`")
  path?: string;

  @doc("会员类型文案")
  text?: string;

  @doc("会员标签")
  label_theme?: string;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("浏览数")
  view?: int64;

  @doc("收藏数")
  favorite?: int64;

  @doc("点赞数")
  like?: int64;

  @doc("点踩数")
  dislike?: int64;

  @doc("回复数")
  reply?: int64;

  @doc("转发数")
  share?: int64;

  @doc("投币数")
  coin?: int64;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("标签id")
  tid?: int64;

  @doc("标签名称")
  name?: string;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("`0`")
  score?: int64;

  @doc("`0`")
  media_id?: int64;

  @doc("`空串`")
  title?: string;

  @doc("`空串`")
  cover?: string;

  @doc("`空串`")
  area?: string;

  @doc("`0`")
  type_id?: int64;

  @doc("`空串`")
  type_name?: string;

  @doc("`0`")
  spoiler?: int64;

  @doc("用户uid")
  mid?: int64;

  @doc("排序方式")
  sort?: int64;

  @doc("响应码")
  code?: int64;

  @doc("0")
  message?: string;

  @doc("1")
  ttl?: int64;

  @doc("信息本体")
  data?: Record<unknown>;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("文集信息列表")
  lists?: unknown[];

  @doc("文集总数")
  total?: int64;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("文集id")
  id?: int64;

  @doc("作者uid")
  mid?: int64;

  @doc("文集名称")
  name?: string;

  @doc("封面")
  image_url?: string;

  @doc("最后更新时间戳")
  update_time?: int64;

  @doc("创建时间戳")
  ctime?: int64;

  @doc("单位：秒")
  publish_time?: int64;

  @doc("`空串`")
  summary?: string;

  @doc("总字数")
  words?: int64;

  @doc("阅读量")
  read?: int64;

  @doc("包含文章数")
  articles_count?: int64;

  @doc("`1`")
  state?: int64;

  @doc("`空串`")
  reason?: string;

  @doc("`空串`")
  apply_time?: string;

  @doc("`空串`")
  check_time?: string;

  @doc("用户 mid")
  mid?: int64;

  @doc("页码")
  pn?: int64;

  @doc("每页项数")
  ps?: int64;

  @doc("排序方式")
  order?: string;

  @doc("返回值")
  code?: int64;

  @doc("返回信息")
  msg?: string;

  @doc("数据本体")
  data?: string;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("当前页码")
  curPage?: int64;

  @doc("总页数")
  pageCount?: int64;

  @doc("总计数")
  totalSize?: int64;

  @doc("每页项数")
  pageSize?: int64;

  @doc("音频列表")
  data?: unknown[];

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("音频 AU 号")
  id?: int64;

  @doc("用户 mid")
  uid?: int64;

  @doc("用户名")
  uname?: string;

  @doc("音频标题")
  title?: string;

  @doc("音频封面图片 URL")
  cover?: string;

  @doc("音频歌词 URL")
  lyric?: string;

  @doc("1")
  crtype?: int64;

  @doc("音频时长")
  duration?: int64;

  @doc("发布时间")
  passtime?: int64;

  @doc("0")
  curtime?: int64;

  @doc("发布时间")
  ctime?: int64;

  @doc("统计数")
  statistic?: Record<unknown>;

  @doc("硬币数量")
  coin_num?: int64;

}

/**
 * statistic 对象
 */
@doc("statistic 数据模型")
model Statistic {
  @doc("音频 AU 号")
  sid?: int64;

  @doc("播放数")
  play?: int64;

  @doc("收藏数")
  collect?: int64;

  @doc("评论数")
  comment?: int64;

  @doc("分享数")
  share?: int64;

}

/**
 * 课程
 */
@route("/pugv/app/web/season/page")
@tag("User")
interface 课程 {
  @get
  @doc("课程")
  课程(
    @query @doc("目标用户mid") mid: int64,
    @query @doc("页码") pn: int64,
    @query @doc("每页项数") ps: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("课程列表") list?: unknown[],
    @query @doc("页面信息") page?: Record<unknown>,
    @query @doc("是否存在下一页") next?: boolean,
    @query @doc("当前页码") num?: int64,
    @query @doc("每页项数") size?: int64,
    @query @doc("总计项数") total?: int64,
    @query @doc("内容") 项?: unknown,
    @query @doc("课程1") field_0?: Record<unknown>,
    @query @doc("课程（n+1）") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("课程封面url") cover?: string,
    @query @doc("课程集数") ep_count?: int64,
    @query @doc("课程页面url") link?: string,
    @query @doc("1") page?: int64,
    @query @doc("课程播放数") play?: int64,
    @query @doc("课程ssid") season_id?: int64,
    @query @doc("更新状态说明") status?: string,
    @query @doc("课程副标题") subtitle?: string,
    @query @doc("课程标题") title?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("课程列表")
  list?: unknown[];

  @doc("页面信息")
  page?: Record<unknown>;

}

/**
 * page 对象
 */
@doc("page 数据模型")
model Page {
  @doc("是否存在下一页")
  next?: boolean;

  @doc("当前页码")
  num?: int64;

  @doc("每页项数")
  size?: int64;

  @doc("总计项数")
  total?: int64;

  @doc("内容")
  项?: unknown;

  @doc("课程1")
  field_0?: Record<unknown>;

  @doc("课程（n+1）")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("课程封面url")
  cover?: string;

  @doc("课程集数")
  ep_count?: int64;

  @doc("课程页面url")
  link?: string;

  @doc("1")
  page?: int64;

  @doc("课程播放数")
  play?: int64;

  @doc("课程ssid")
  season_id?: int64;

  @doc("更新状态说明")
  status?: string;

  @doc("课程副标题")
  subtitle?: string;

  @doc("课程标题")
  title?: string;

}

/**
 * 订阅
 */
@route("/ajax/Bangumi/getList")
@tag("User")
interface 订阅 {
  @get
  @doc("订阅")
  订阅(
    @query @doc("目标用户mid") mid: int64,
    @query @doc("状态") status?: boolean,
    @query @doc("失败：错误信息<br />成功：信息本体") data?: unknown,
    @query @doc("总计追番数") count?: int64,
    @query @doc("0") pages?: int64,
    @query @doc("追番预览列表") result?: unknown[],
    @query @doc("内容") 项?: unknown,
    @query @doc("追番1") field_0?: Record<unknown>,
    @query @doc("追番（n+1）") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("追番15") field_14?: Record<unknown>,
    @query @doc("简介") brief?: string,
    @query @doc("封面图片url") cover?: string,
    @query @doc("空") evaluate?: string,
    @query @doc("追番数") favorites?: int64,
    @query @doc("是否已完结") is_finish?: int64,
    @query @doc("0") last_ep_index?: int64,
    @query @doc("最新一话") newest_ep_index?: int64,
    @query @doc("番剧ssid") season_id?: string,
    @query @doc("播放页面链接url") share_url?: string,
    @query @doc("标题") title?: string,
    @query @doc("总计集数") total_count?: int64,
    @query @doc("目标用户mid") vmid: int64,
    @query @doc("页码") pn: int64,
    @query @doc("每页项数") ps: int64,
    @query @doc("查询类型") type: int64,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("1") ttl?: int64,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("追番列表") list?: unknown[],
    @query @doc("当前页码") pn?: int64,
    @query @doc("每页项数") ps?: int64,
    @query @doc("总计追番数") total?: int64,
    @query @doc("内容") 项?: unknown,
    @query @doc("追番1") field_0?: Record<unknown>,
    @query @doc("追番（n+1）") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("目标用户mid") mid: int64,
    @query @doc("返回值") status?: boolean,
    @query @doc("错误时：错误信息<br />正确时：数据本体") data?: unknown,
    @query @doc("关注TAG列表") tags?: unknown[],
    @query @doc("关注TAG的数") count?: int64,
    @query @doc("内容") 项?: unknown,
    @query @doc("关注TAG1") field_0?: Record<unknown>,
    @query @doc("关注TAG（n+1）") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("关注TAG100") field_99?: Record<unknown>,
    @query @doc("0") archive_count?: int64,
    @query @doc("TAG图片url") cover?: string,
    @query @doc("TAG名") name?: string,
    @query @doc("1") notify?: int64,
    @query @doc("tag_id") tag_id?: int64,
    @query @doc("1970-01-01 08:00:00") updated_ts?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("总计追番数")
  count?: int64;

  @doc("0")
  pages?: int64;

  @doc("追番预览列表")
  result?: unknown[];

  @doc("内容")
  项?: unknown;

  @doc("追番1")
  field_0?: Record<unknown>;

  @doc("追番（n+1）")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("追番15")
  field_14?: Record<unknown>;

  @doc("简介")
  brief?: string;

  @doc("封面图片url")
  cover?: string;

  @doc("空")
  evaluate?: string;

  @doc("追番数")
  favorites?: int64;

  @doc("是否已完结")
  is_finish?: int64;

  @doc("0")
  last_ep_index?: int64;

  @doc("最新一话")
  newest_ep_index?: int64;

  @doc("番剧ssid")
  season_id?: string;

  @doc("播放页面链接url")
  share_url?: string;

  @doc("标题")
  title?: string;

  @doc("总计集数")
  total_count?: int64;

  @doc("目标用户mid")
  vmid?: int64;

  @doc("页码")
  pn?: int64;

  @doc("每页项数")
  ps?: int64;

  @doc("查询类型")
  type?: int64;

  @doc("返回值")
  code?: int64;

  @doc("错误信息")
  message?: string;

  @doc("1")
  ttl?: int64;

  @doc("信息本体")
  data?: Record<unknown>;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("追番列表")
  list?: unknown[];

  @doc("当前页码")
  pn?: int64;

  @doc("每页项数")
  ps?: int64;

  @doc("总计追番数")
  total?: int64;

  @doc("内容")
  项?: unknown;

  @doc("追番1")
  field_0?: Record<unknown>;

  @doc("追番（n+1）")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("目标用户mid")
  mid?: int64;

  @doc("返回值")
  status?: boolean;

  @doc("错误时：错误信息<br />正确时：数据本体")
  data?: unknown;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("关注TAG列表")
  tags?: unknown[];

  @doc("关注TAG的数")
  count?: int64;

  @doc("内容")
  项?: unknown;

  @doc("关注TAG1")
  field_0?: Record<unknown>;

  @doc("关注TAG（n+1）")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("关注TAG100")
  field_99?: Record<unknown>;

  @doc("0")
  archive_count?: int64;

  @doc("TAG图片url")
  cover?: string;

  @doc("TAG名")
  name?: string;

  @doc("1")
  notify?: int64;

  @doc("tag_id")
  tag_id?: int64;

  @doc("1970-01-01 08:00:00")
  updated_ts?: string;

}
