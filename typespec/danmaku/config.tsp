import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Danmaku;

/**
 * 修改弹幕个人配置（web端）
 */
@route("/x/v2/dm/web/config")
@tag("Danmaku")
interface 修改弹幕个人配置web端 {
  @post
  @doc("修改弹幕个人配置（web端）")
  修改弹幕个人配置web端(
    @body @doc("APP登录Token") access_key: string,
    @body @doc("弹幕开关") dm_switch: boolean,
    @body @doc("屏蔽类型-滚动") blockscroll: boolean,
    @body @doc("屏蔽类型-顶部") blocktop: boolean,
    @body @doc("屏蔽类型-底部") blockbottom: boolean,
    @body @doc("屏蔽类型-彩色") blockcolor: boolean,
    @body @doc("屏蔽类型-特殊") blockspecial: boolean,
    @body @doc("是否打开智能云屏蔽") ai_switch: boolean,
    @body @doc("智能云屏蔽等级") ai_level: int64,
    @body @doc("防挡弹幕（底部15%）") preventshade: boolean,
    @body @doc("智能防挡弹幕（人像蒙版）") dmask: boolean,
    @body @doc("弹幕不透明度") opacity: int64,
    @body @doc("弹幕显示区域") dmarea: int64,
    @body @doc("弹幕速度") speedplus: int64,
    @body @doc("字体大小") fontsize: int64,
    @body @doc("跟随屏幕缩放比例") screensync: boolean,
    @body @doc("根据播放倍速调整速度") speedsync: boolean,
    @body @doc("字体类型") fontfamily: string,
    @body @doc("粗体") bold: boolean,
    @body @doc("描边类型") fontborder: int64,
    @body @doc("渲染类型") drawType: string,
    @body @doc("当前时间戳") ts: int64,
    @body @doc("CSRF Token（位于cookie）") csrf: string,
    @body @doc("返回值") code?: int64,
    @body @doc("错误信息") message?: string,
    @body @doc("1") ttl?: int64,
  ): ApiResponse<unknown>;
}
