using Microsoft.AspNetCore.Mvc.Rendering;

public static class HtmlTagHelper
{
     /// <summary>
     /// HttpContextAccessor 物件
     /// </summary>
     /// <returns></returns>
     public static IHttpContextAccessor _contextAccessor { get; set; } = new HttpContextAccessor();
     /// <summary>
     /// HttpContext 物件
     /// </summary>
     public static HttpContext? _context { get { return _contextAccessor.HttpContext; } }
     /// <summary>
     /// 圖片 Html Helper
     /// </summary>
     /// <param name="htmlHelper">htmlHelper 物件</param>
     /// <param name="src">圖片網址</param>
     /// <param name="alt">替代文字</param>
     /// <param name="klass">Class 樣式表名稱</param>
     /// <returns></returns>
     public static TagBuilder Image(this IHtmlHelper htmlHelper, string src, string alt, string klass)
     {
          TagBuilder tb = new("img");
          tb.Attributes.Add("src", src);
          if (!string.IsNullOrEmpty(alt)) tb.Attributes.Add("alt", alt);
          if (!string.IsNullOrEmpty(klass)) tb.Attributes.Add("class", klass);
          return tb;
     }
     /// <summary>
     /// 欄位加入排序功能
     /// </summary>
     /// <param name="htmlHelper">htmlHelper 物件</param>
     /// <param name="columnName">欄位名稱</param>
     /// <param name="dispalyText">欄位標題</param>
     /// <returns></returns>
     public static TagBuilder ColumnSort(this IHtmlHelper htmlHelper, string columnName, string dispalyText)
     {
          string str_area = string.IsNullOrEmpty(ActionService.Area) ? "" : $"/{ActionService.Area}";
          string str_controller = string.IsNullOrEmpty(ActionService.Controller) ? "" : $"/{ActionService.Controller}";
          string str_action = $"/Sort/{columnName}";
          string str_url = $"{ActionService.HttpHost}{str_area}{str_controller}{str_action}";
          string str_text = dispalyText;
          string str_direction = (SessionService.SortDirection.ToLower() == "asc") ? " ▲" : " ▼";
          if (SessionService.SortColumn == columnName)
          {
               str_text += str_direction;
          }
          var location = new Uri(str_url);
          TagBuilder tb = new("a");
          tb.Attributes.Add("href", location.ToString());
          tb.InnerHtml.AppendHtml(str_text);
          return tb;
     }
}