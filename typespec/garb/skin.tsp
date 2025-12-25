import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Garb;

/**
 * 获取主题及加载动画
 */
@route("/x/resource/show/skin")
@tag("Garb")
interface 获取主题及加载动画 {
  @get
  @doc("获取主题及加载动画")
  获取主题及加载动画(
    @query @doc("APP登录Token") access_key: string,
    @query @doc("APP密钥") appkey: string,
    @query @doc("版本") build: int64,
    @query @doc("当前时间戳") ts: int64,
    @query @doc("APP签名") sign: string,
    @query @doc("返回值") code?: int64,
    @query @doc("错误信息") message?: string,
    @query @doc("信息本体") data?: Record<unknown>,
    @query @doc("个性主题信息") user_equip?: Record<unknown>,
    @query @doc("主题颜色列表") skin_colors?: unknown[],
    @query @doc("加载动画信息") load_equip?: Record<unknown>,
    @query @doc("装扮id") id?: int64,
    @query @doc("装扮名称") name?: string,
    @query @doc("装扮封面url") preview?: string,
    @query @doc("装扮版本") ver?: int64,
    @query @doc("装扮包url") package_url?: string,
    @query @doc("装扮包md5校验值") package_md5?: string,
    @query @doc("装扮配置") data?: Record<unknown>,
    @query @doc("颜色模式") color_mode: string,
    @query @doc("前景色？") color: string,
    @query @doc("背景色？") color_second_page: string,
    @query @doc("底边栏颜色") tail_color: string,
    @query @doc("底边栏颜色(选择时)") tail_color_selected: string,
    @query @doc("有无底边栏动画") tail_icon_ani: boolean,
    @query @doc("底边栏动画循环播放") tail_icon_ani_mode: string,
    @query @doc("我的页面头图（视频）循环") head_myself_mp4_play: string,
    @query @doc("底栏改图标或改颜色") tail_icon_mode: string,
    @query @doc("侧边栏颜色") side_bg_color: string,
    @query @doc("侧边栏线条颜色？") side_line_color: string,
    @query @doc("底栏图标颜色") tail_icon_color: string,
    @query @doc("底栏图标颜色(夜间模式)") tail_icon_color_dark: string,
    @query @doc("底栏图标颜色(选择时)") tail_icon_color_selected: string,
    @query @doc("底栏图标颜色(选择时)(夜间模式)") tail_icon_color_selected_dark: string,
    @query @doc("内容") 项?: unknown,
    @query @doc("主题颜色1") field_0?: Record<unknown>,
    @query @doc("主题颜色(n+1)") n?: Record<unknown>,
    @query @doc("……") __?: Record<unknown>,
    @query @doc("颜色id") id?: int64,
    @query @doc("颜色名称") name?: string,
    @query @doc("是否免费") is_free?: boolean,
    @query @doc("价格") price?: int64,
    @query @doc("是否已购买") is_bought?: boolean,
    @query @doc("状态") status?: int64,
    @query @doc("购买时间") buy_time?: int64,
    @query @doc("到期时间") due_time?: int64,
    @query @doc("颜色类型名称") color_name?: string,
    @query @doc("是否已到期") is_overdue?: boolean,
    @query @doc("装扮id") id?: int64,
    @query @doc("装扮名称") name?: string,
    @query @doc("装扮版本") ver?: int64,
    @query @doc("加载动画图标url") loading_url?: string,
  ): ApiResponse<Data>;
}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("个性主题信息")
  user_equip?: Record<unknown>;

  @doc("主题颜色列表")
  skin_colors?: unknown[];

  @doc("加载动画信息")
  load_equip?: Record<unknown>;

}

/**
 * user_equip 对象
 */
@doc("user_equip 数据模型")
model User_equip {
  @doc("装扮id")
  id?: int64;

  @doc("装扮名称")
  name?: string;

  @doc("装扮封面url")
  preview?: string;

  @doc("装扮版本")
  ver?: int64;

  @doc("装扮包url")
  package_url?: string;

  @doc("装扮包md5校验值")
  package_md5?: string;

  @doc("装扮配置")
  data?: Record<unknown>;

}

/**
 * data 对象
 */
@doc("data 数据模型")
model DataModel {
  @doc("颜色模式")
  color_mode?: string;

  @doc("前景色？")
  color?: string;

  @doc("背景色？")
  color_second_page?: string;

  @doc("底边栏颜色")
  tail_color?: string;

  @doc("底边栏颜色(选择时)")
  tail_color_selected?: string;

  @doc("有无底边栏动画")
  tail_icon_ani?: boolean;

  @doc("底边栏动画循环播放")
  tail_icon_ani_mode?: string;

  @doc("我的页面头图（视频）循环")
  head_myself_mp4_play?: string;

  @doc("底栏改图标或改颜色")
  tail_icon_mode?: string;

  @doc("侧边栏颜色")
  side_bg_color?: string;

  @doc("侧边栏线条颜色？")
  side_line_color?: string;

  @doc("底栏图标颜色")
  tail_icon_color?: string;

  @doc("底栏图标颜色(夜间模式)")
  tail_icon_color_dark?: string;

  @doc("底栏图标颜色(选择时)")
  tail_icon_color_selected?: string;

  @doc("底栏图标颜色(选择时)(夜间模式)")
  tail_icon_color_selected_dark?: string;

  @doc("内容")
  项?: unknown;

  @doc("主题颜色1")
  field_0?: Record<unknown>;

  @doc("主题颜色(n+1)")
  n?: Record<unknown>;

  @doc("……")
  __?: Record<unknown>;

  @doc("颜色id")
  id?: int64;

  @doc("颜色名称")
  name?: string;

  @doc("是否免费")
  is_free?: boolean;

  @doc("价格")
  price?: int64;

  @doc("是否已购买")
  is_bought?: boolean;

  @doc("状态")
  status?: int64;

  @doc("购买时间")
  buy_time?: int64;

  @doc("到期时间")
  due_time?: int64;

  @doc("颜色类型名称")
  color_name?: string;

  @doc("是否已到期")
  is_overdue?: boolean;

}

/**
 * load_equip 对象
 */
@doc("load_equip 数据模型")
model Load_equip {
  @doc("装扮id")
  id?: int64;

  @doc("装扮名称")
  name?: string;

  @doc("装扮版本")
  ver?: int64;

  @doc("加载动画图标url")
  loading_url?: string;

}
