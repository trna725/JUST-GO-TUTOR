
global using project.Models;
using Microsoft.Extensions.Options;
using Newtonsoft.Json.Serialization;
using System.Text.Encodings.Web;
using System.Text.Json;
using System.Text.Unicode;
using Microsoft.EntityFrameworkCore;

namespace project
{
    public class Program
    {
        public static void Main(string[] args)
        {
            var builder = WebApplication.CreateBuilder(args);

            // Add services to the container.
            builder.Services.AddControllersWithViews();

            builder.Services.AddRazorPages()
                .AddJsonOptions(options =>
                {
                    //原本是 JsonNamingPolicy.CamelCase，強制頭文字轉小寫，我偏好維持原樣，設為null
                    options.JsonSerializerOptions.PropertyNamingPolicy = null;
                    //允許基本拉丁英文及中日韓文字維持原字元
                    options.JsonSerializerOptions.Encoder = JavaScriptEncoder.Create(UnicodeRanges.BasicLatin, UnicodeRanges.CjkUnifiedIdeographs);
                });


            var currentDirectory = AppDomain.CurrentDomain.BaseDirectory;
            var environmentName = builder.Environment.EnvironmentName;
            
            builder.Configuration
                .SetBasePath(currentDirectory)
                .AddJsonFile("appsettings.json", optional: true, reloadOnChange: true)
                .AddJsonFile($"appsettings.{environmentName}.json", optional: true, reloadOnChange: true)
                .AddEnvironmentVariables();

            // 設定 Session
            // 需先加入 Nuget Package "Microsoft.AspNetCore.Session"
            // 將 Session 存在 ASP.NET Core 記憶體中
            builder.Services.AddDistributedMemoryCache();
            // 設定加入 AddHttpContextAccessor
            builder.Services.AddHttpContextAccessor();

            // 設定 Session 參數值
            builder.Services.AddSession(option =>
            {
                // 設定 Session 過期時間, 單位為秒 , 20分鐘 = 20*60 = 1,200秒
                //options.IdleTimeout = TimeSpan.FromSeconds(1200);
                // 設定 Session 過期時間, 單位為分鐘

                option.IdleTimeout = TimeSpan.FromMinutes(20);
                // 限制只有在 HTTPS 連線的情況下，才允許使用 Session
                //options.Cookie.SecurePolicy = CookieSecurePolicy.Always;
                option.Cookie.Name = "project";
                // 表示此 Cookie 限伺服器讀取設定，document.cookie 無法存取
                option.Cookie.HttpOnly = true;
            });

            //enable the session-based TempData provider
            builder.Services.AddRazorPages().AddSessionStateTempDataProvider();
            builder.Services.AddControllersWithViews().AddSessionStateTempDataProvider();
            //註冊 HttpContextAccessor DI 物件
            builder.Services.AddSingleton<IHttpContextAccessor, HttpContextAccessor>();

            
            var conn = builder.Configuration.GetConnectionString("dbconn");
            //builder.Services.AddDbContext<dbEntities>(option => option.UseSqlServer(conn));

            var app = builder.Build();

            // Configure the HTTP request pipeline.
            if (!app.Environment.IsDevelopment())
            {
                app.UseExceptionHandler("/Home/Error");
                // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
                app.UseHsts();
            }

            // 設定使用 Session
            app.UseSession();

            app.UseHttpsRedirection();
            app.UseStaticFiles();

            app.UseRouting();

            app.UseAuthorization();

            app.MapControllerRoute(
                name: "default",
                pattern: "{controller=Home}/{action=Index}/{id?}");                
           
            app.Run();
        }
    }
}