import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace BilibiliAPI.Misc;

/**
 * LaTeX
 */
@route("/x/web-frontend/mathjax/tex")
@tag("Misc")
interface Latex {
  @get
  @doc("LaTeX")
  latex(
    @query @doc("公式") formula: string,
  ): ApiResponse<unknown>;
}
