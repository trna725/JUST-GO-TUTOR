using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Filters;

[AttributeUsage(AttributeTargets.Class | AttributeTargets.Method)]
public class LoginAttribute : ActionFilterAttribute
{
     /// <summary>
     /// 角色列表, 如 User,Admin
     /// </summary>
     /// <value></value>
     public string RoleList { get; set; } = "";

     /// <summary>
     /// 覆寫驗證程式
     /// </summary>
     /// <param name="context"></param>
     public override void OnActionExecuting(ActionExecutingContext context)
     {
          bool bln_value = false;
          // 檢查是否允許匿名呼叫 [AllowAnonymous]
          var allowAnonymous = context.ActionDescriptor.EndpointMetadata.OfType<AllowAnonymousAttribute>().Any();
          if (allowAnonymous || string.IsNullOrEmpty(RoleList))
               bln_value = true;
          else
          {
               //檢查角色清單是否符合登入角色
               List<string> roles = RoleList.Split(',').ToList();
               var data = roles.Where(m => m.Equals(SessionService.RoleNo)).FirstOrDefault();
               if (data != null) bln_value = true;
          }

          // 檢查是否已登入且有設定角色的話角色在允許列表中
          if (bln_value && SessionService.IsLogin) return;

          //驗證失敗則自動導向到登入頁
          // controller 自動設定為 UserController / action 設定為 Login 類似 Action("User", "Login", new {area =""})
          context.Result = new RedirectToRouteResult(
              new RouteValueDictionary
              {
                            { "controller", "User" },
                            { "action", "Login" },
                            { "area" , ""}
              });

          //驗證失敗引發錯誤 401 驗證不通過訊息，可應用在 WebAPI 專案
          //context.Result = new JsonResult(new { message = "Unauthorized" }) { StatusCode = StatusCodes.Status401Unauthorized };
     }
}