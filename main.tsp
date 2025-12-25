import "@typespec/http";
import "@typespec/rest";
import "@typespec/openapi";
import "@typespec/versioning";

using TypeSpec.Http;

@service(#{ title: "Bilibili Private API TypeSpec" })
@server("https://api.bilibili.com", "Bilibili API")
namespace Bilibili {
  alias AnyMap = unknown;

  model StandardResponse<T> {
    code: int32;
    message?: string;
    ttl?: int32;
    data?: T;
  }

  model PageMeta {
    page?: int32;
    pageSize?: int32;
    total?: int32;
    hasMore?: boolean;
  }

  model PagedResult<T> {
    page?: PageMeta;
    items?: T[];
  }

  model Owner {
    mid: int64;
    name?: string;
    face?: string;
  }

  model VideoStat {
    view?: int64;
    danmaku?: int64;
    reply?: int64;
    favorite?: int64;
    coin?: int64;
    share?: int64;
    like?: int64;
  }

  model VideoSummary {
    aid?: int64;
    bvid?: string;
    cid?: int64;
    title?: string;
    duration?: int32;
    pic?: string;
    owner?: Owner;
    stat?: VideoStat;
  }

  model VideoPage {
    cid?: int64;
    page?: int32;
    part?: string;
    duration?: int32;
    dimension?: AnyMap;
  }

  model VideoView extends VideoSummary {
    desc?: string;
    pubdate?: int64;
    ctime?: int64;
    rights?: AnyMap;
    pages?: VideoPage[];
  }

  model NavInfo {
    isLogin: boolean;
    email_verified?: int32;
    face?: string;
    level_info?: AnyMap;
    mid?: int64;
    uname?: string;
    vip?: AnyMap;
  }

  model UserCard {
    mid?: int64;
    name?: string;
    face?: string;
    sex?: string;
    level?: int32;
    sign?: string;
    fans?: int32;
    attention?: int32;
    vip?: AnyMap;
  }

  model UserProfile {
    mid: int64;
    name?: string;
    face?: string;
    level?: int32;
    sign?: string;
    fans_badge?: boolean;
    official?: AnyMap;
    vip?: AnyMap;
    silence?: int32;
  }

  model RelationStat {
    follower?: int64;
    following?: int64;
    whisper?: int64;
    black?: int64;
  }

  @route("/x/web-interface")
  namespace WebInterface {
    @doc("获取当前登录用户的导航信息")
    @tag("account")
    @get @route("/nav")
    op getCurrentUser(): StandardResponse<NavInfo>;

    @doc("获取用户名片信息")
    @tag("user")
    @get @route("/card")
    op getUserCard(@query("mid") mid: int64, @query("photo") photo?: boolean): StandardResponse<UserCard>;

    @doc("获取稿件基本信息")
    @tag("video")
    @get @route("/view")
    op getVideoView(
      @query("aid") aid?: int64,
      @query("bvid") bvid?: string
    ): StandardResponse<VideoView>;

    @doc("获取稿件详情数据")
    @tag("video")
    @get @route("/view/detail")
    op getVideoDetail(
      @query("aid") aid?: int64,
      @query("bvid") bvid?: string
    ): StandardResponse<AnyMap>;

    @doc("获取稿件实时状态统计")
    @tag("video")
    @get @route("/archive/stat")
    op getVideoStat(
      @query("aid") aid?: int64,
      @query("bvid") bvid?: string
    ): StandardResponse<VideoStat>;

    @doc("获取相关推荐列表")
    @tag("video")
    @get @route("/archive/related")
    op listRelated(
      @query("aid") aid?: int64,
      @query("bvid") bvid?: string
    ): StandardResponse<VideoSummary[]>;

    @doc("综合热门视频列表")
    @tag("ranking")
    @get @route("/popular")
    op listPopular(
      @query("pn") page?: int32,
      @query("ps") pageSize?: int32
    ): StandardResponse<PagedResult<VideoSummary>>;

    @doc("分区排行榜列表")
    @tag("ranking")
    @get @route("/ranking/v2")
    op listRanking(
      @query("rid") regionId?: int32,
      @query("type") rankType?: string,
      @query("pn") page?: int32,
      @query("ps") pageSize?: int32
    ): StandardResponse<PagedResult<VideoSummary>>;
  }

  @route("/x/space")
  namespace Space {
    @doc("用户空间基础信息")
    @tag("user")
    @get @route("/wbi/acc/info")
    op getUserSpaceInfo(@query("mid") mid: int64): StandardResponse<UserProfile>;
  }

  @route("/x/relation")
  namespace Relation {
    @doc("获取用户关系统计")
    @tag("user")
    @get @route("/stat")
    op getRelationStat(@query("vmid") vmid: int64): StandardResponse<RelationStat>;
  }

  @route("/x/player")
  namespace Player {
    @doc("获取视频播放地址")
    @tag("video")
    @get @route("/wbi/playurl")
    op getPlayUrl(
      @query("cid") cid: int64,
      @query("bvid") bvid?: string,
      @query("aid") aid?: int64,
      @query("qn") quality?: int32,
      @query("fnval") fnval?: int32
    ): StandardResponse<AnyMap>;

    @doc("获取分P列表")
    @tag("video")
    @get @route("/pagelist")
    op listPages(
      @query("bvid") bvid?: string,
      @query("aid") aid?: int64
    ): StandardResponse<VideoPage[]>;
  }

  @route("/x/web-interface")
  namespace Actions {
    @doc("点赞或取消点赞稿件")
    @tag("interaction")
    @post @route("/archive/like")
    op likeVideo(@body body: LikeRequest): StandardResponse<AnyMap>;

    model LikeRequest {
      aid?: int64;
      bvid?: string;
      like?: boolean;
      csrf?: string;
    }

    @doc("为稿件投币")
    @tag("interaction")
    @post @route("/coin/add")
    op coinVideo(@body body: CoinRequest): StandardResponse<AnyMap>;

    model CoinRequest {
      aid?: int64;
      bvid?: string;
      multiply?: int32;
      select_like?: boolean;
      csrf?: string;
    }
  }

  @route("/x/v2")
  namespace Comment {
    @doc("获取评论列表")
    @tag("comment")
    @get @route("/reply")
    op listReplies(
      @query("oid") oid: int64,
      @query("type") type: int32,
      @query("pn") page?: int32,
      @query("ps") pageSize?: int32,
      @query("sort") sort?: int32
    ): StandardResponse<CommentPage>;

    model CommentPage {
      cursor?: AnyMap;
      replies?: Reply[];
    }

    model Reply {
      rpid?: int64;
      mid?: int64;
      ctime?: int64;
      content?: AnyMap;
      like?: int32;
      count?: int32;
      member?: AnyMap;
    }
  }

  @route("/x/v2/dm")
  namespace Danmaku {
    @doc("获取弹幕视图元数据")
    @tag("danmaku")
    @get @route("/web/view")
    op getDanmakuView(
      @query("oid") oid: int64,
      @query("type") type?: int32,
      @query("pid") pid?: int64
    ): StandardResponse<AnyMap>;

    @doc("分片拉取实时弹幕（返回二进制protobuf）")
    @tag("danmaku")
    @get @route("/web/seg.so")
    op getDanmakuSegment(
      @query("oid") oid: int64,
      @query("type") type?: int32,
      @query("pid") pid?: int64,
      @query("segment_index") segmentIndex: int32
    ): bytes;
  }

  @route("/x/web-interface")
  namespace Search {
    @doc("全站搜索接口")
    @tag("search")
    @get @route("/wbi/search/all/v2")
    op searchAll(
      @query("keyword") keyword: string,
      @query("page") page?: int32,
      @query("page_size") pageSize?: int32,
      @query("order") order?: string,
      @query("category") category?: string
    ): StandardResponse<AnyMap>;
  }

  @route("/pgc")
  namespace Bangumi {
    @doc("获取番剧或影视剧详细信息")
    @tag("bangumi")
    @get @route("/view/web/season")
    op getSeason(
      @query("season_id") seasonId?: int64,
      @query("ep_id") epId?: int64
    ): StandardResponse<AnyMap>;

    @doc("获取番剧播放地址")
    @tag("bangumi")
    @get @route("/player/web/playurl")
    op getPlayUrl(
      @query("cid") cid: int64,
      @query("qn") quality?: int32,
      @query("ep_id") epId?: int64,
      @query("avid") aid?: int64
    ): StandardResponse<AnyMap>;
  }

  @route("/audio")
  namespace Audio {
    @doc("获取音频播放地址")
    @tag("audio")
    @get @route("/music-service-c/url")
    op getPlayUrl(
      @query("sid") songId: int64,
      @query("privilege") privilege?: int32,
      @query("quality") quality?: int32
    ): StandardResponse<AnyMap>;
  }

  @route("/x/v3/fav")
  namespace Favorite {
    @doc("列出创建的收藏夹")
    @tag("favorite")
    @get @route("/folder/created/list-all")
    op listFolders(
      @query("up_mid") upMid: int64,
      @query("ps") pageSize?: int32,
      @query("pn") page?: int32,
      @query("type") type?: int32
    ): StandardResponse<PagedResult<FavoriteFolder>>;

    model FavoriteFolder {
      id?: int64;
      fid?: int64;
      title?: string;
      media_count?: int32;
      cover?: string;
      fav_state?: int32;
      upper?: AnyMap;
    }

    @doc("创建收藏夹")
    @tag("favorite")
    @post @route("/folder/add")
    op createFolder(@body body: CreateFolderRequest): StandardResponse<FavoriteFolder>;

    model CreateFolderRequest {
      title: string;
      intro?: string;
      privacy?: int32;
      cover?: string;
      csrf?: string;
    }

    @doc("收藏夹资源列表")
    @tag("favorite")
    @get @route("/resource/list")
    op listResources(
      @query("media_id") mediaId: int64,
      @query("ps") pageSize?: int32,
      @query("pn") page?: int32,
      @query("platform") platform?: string
    ): StandardResponse<PagedResult<VideoSummary>>;
  }

  @route("/x/web-interface/history")
  namespace History {
    @doc("获取播放历史游标")
    @tag("history")
    @get @route("/cursor")
    op getHistoryCursor(
      @query("max") max?: int64,
      @query("business") business?: string
    ): StandardResponse<AnyMap>;
  }

  @route("/x/click-interface")
  namespace Playback {
    @doc("提交播放心跳")
    @tag("history")
    @post @route("/web/heartbeat")
    op heartbeat(@body body: HeartbeatRequest): StandardResponse<AnyMap>;

    model HeartbeatRequest {
      aid?: int64;
      cid: int64;
      bvid?: string;
      sid?: int64;
      played_time?: int32;
      realtime?: int32;
      start_ts?: int64;
      csrf?: string;
    }
  }

  @route("/x/note")
  namespace Note {
    @doc("获取笔记列表")
    @tag("note")
    @get @route("/list")
    op listNotes(
      @query("oid") oid?: int64,
      @query("pn") page?: int32,
      @query("ps") pageSize?: int32
    ): StandardResponse<PagedResult<AnyMap>>;

    @doc("获取笔记详情")
    @tag("note")
    @get @route("/info")
    op getNoteInfo(@query("id") noteId: int64): StandardResponse<AnyMap>;
  }
}
