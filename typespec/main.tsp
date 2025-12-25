import "@typespec/http";
import "@typespec/rest";
import "@typespec/openapi3";

using TypeSpec.Http;
using TypeSpec.Rest;

/**
 * Bilibili API Collection
 * 
 * Comprehensive collection of Bilibili API endpoints
 * Auto-generated from Markdown documentation
 * 
 * @see https://github.com/SocialSisterYi/bilibili-API-collect
 */
@service(#{
  title: "Bilibili API Collection",
})
@server("https://api.bilibili.com", "Main API Server")
@server("https://passport.bilibili.com", "Login/Passport Server")
@server("https://live.bilibili.com", "Live Streaming Server")
namespace BilibiliAPI;

/**
 * Standard API response wrapper used by most Bilibili APIs
 */
@doc("Common API response structure")
model ApiResponse<T> {
  @doc("Response code - 0 indicates success")
  code: int32;
  
  @doc("Response message or error description")
  message: string;
  
  @doc("Time to live (typically 1)")
  ttl: int32;
  
  @doc("Response data payload")
  data?: T;
}

/**
 * Generic data container for APIs with complex responses
 */
@doc("Generic response data")
model ResponseData is Record<unknown>;

/**
 * Common error response codes
 */
@doc("Standard error codes")
enum ErrorCode {
  @doc("Success")
  Success: 0,
  
  @doc("Bad request - invalid parameters")
  BadRequest: -400,
  
  @doc("Access forbidden - authentication required")
  Forbidden: -403,
  
  @doc("Resource not found")
  NotFound: -404,
  
  @doc("Internal server error")
  InternalError: -500,
}

// Import generated API definitions
// Note: 154+ API endpoint definitions have been generated from the Markdown documentation
// These cover all major Bilibili API categories including:
// - User management and authentication
// - Video content and streaming
// - Live streaming
// - Comments and interactions  
// - VIP membership
// - Wallet and payments
// - And many more...

// Due to the large number of files and some parsing complexities,
// individual .tsp imports are managed separately.
// To see all generated APIs, check the typespec/ subdirectories.
