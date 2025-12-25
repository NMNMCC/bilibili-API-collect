import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Danmaku;

/**
 * 获取弹幕个人配置与互动弹幕及BAS（代码）弹幕专包（web端）
 */
@route("/x/v2/dm/web/view")
@tag("Danmaku")
interface 获取弹幕个人配置与互动弹幕及bas代码弹幕专包web端 {
  @get
  @doc("获取弹幕个人配置与互动弹幕及BAS（代码）弹幕专包（web端）")
  获取弹幕个人配置与互动弹幕及bas代码弹幕专包web端(
    @query @doc("弹幕类") type: int64,
    @query @doc("视频cid") oid: int64,
    @query @doc("稿件avid") pid: int64,
    @query @doc("含义") 名称?: unknown,
    @query @doc("弹幕开放状态") state?: unknown,
    @query @doc("？") text?: string,
    @query @doc("？") textSide?: string,
    @query @doc("分段弹幕包信息？") dmSge?: unknown,
    @query @doc("？") flag?: unknown,
    @query @doc("BAS（代码）弹幕专包url") specialDms?: unknown,
    @query @doc("？") checkBox?: boolean,
    @query @doc("实际弹幕总数") count?: unknown,
    @query @doc("互动弹幕条目") commandDms?: unknown,
    @query @doc("弹幕个人配置") dmSetting?: unknown,
    @query @doc("含义") 名称?: unknown,
    @query @doc("分段时间？") pageSize?: unknown,
    @query @doc("最大分页数？") total?: unknown,
    @query @doc("含义") 名称?: unknown,
    @query @doc("？") recFlag?: unknown,
    @query @doc("？") recText?: string,
    @query @doc("？") recSwitch?: unknown,
    @query @doc("含义") 名称?: unknown,
    @query @doc("弹幕dmid") id?: unknown,
    @query @doc("视频cid") oid?: unknown,
    @query @doc("发送者mid") mid?: unknown,
    @query @doc("弹幕指令") command?: string,
    @query @doc("弹幕文字") content?: string,
    @query @doc("弹幕出现时间") progress?: unknown,
    @query @doc("创建时间？") ctime?: string,
    @query @doc("修改时间？") mtime?: string,
    @query @doc("弹幕负载数据") extra?: string,
    @query @doc("弹幕dmid") idStr?: string,
    @query @doc("UP主头像url") icon?: string,
    @query @doc("关联视频的avid") aid?: int64,
    @query @doc("关联视频的标题") title?: string,
    @query @doc("关联视频按钮图片url") icon?: string,
    @query @doc("关联视频的bvid") bvid?: string,
    @query @doc("持续时间") duration?: int64,
    @query @doc("X坐标") posX?: int64,
    @query @doc("Y坐标") posY?: int64,
    @query @doc("按钮图片url") icon?: string,
    @query @doc("关注按钮类型") type?: int64,
    @query @doc("含义") 名称?: unknown,
    @query @doc("弹幕开关") dmSwitch?: boolean,
    @query @doc("智能云屏蔽") aiSwitch?: boolean,
    @query @doc("智能云屏蔽级别") aiLevel?: unknown,
    @query @doc("屏蔽类型-顶部") blocktop?: boolean,
    @query @doc("屏蔽类型-滚动") blockscroll?: boolean,
    @query @doc("屏蔽类型-底部") blockbottom?: boolean,
    @query @doc("屏蔽类型-彩色") blockcolor?: boolean,
    @query @doc("屏蔽类型-特殊") blockspecial?: boolean,
    @query @doc("防挡弹幕（底部15%）") preventshade?: boolean,
    @query @doc("智能防挡弹幕（人像蒙版）") dmask?: boolean,
    @query @doc("弹幕不透明度") opacity?: unknown,
    @query @doc("弹幕显示区域") dmarea?: unknown,
    @query @doc("弹幕速度") speedplus?: unknown,
    @query @doc("字体大小") fontsize?: unknown,
    @query @doc("跟随屏幕缩放比例") screensync?: boolean,
    @query @doc("根据播放倍速调整速度") speedsync?: boolean,
    @query @doc("字体类型？") fontfamily?: string,
    @query @doc("粗体？") bold?: boolean,
    @query @doc("描边类型") fontborder?: unknown,
    @query @doc("渲染类型？") drawType?: string,
  ): ApiResponse<unknown>;
}
