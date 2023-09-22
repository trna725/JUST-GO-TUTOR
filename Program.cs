global using JUSTGOTUTOR.Models;
using Microsoft.AspNetCore.Localization;
using Microsoft.AspNetCore.Mvc.Razor;
using System.Globalization;
using System.Text.Encodings.Web;
using System.Text.Unicode;

var builder = WebApplication.CreateBuilder(args);

builder.Services.AddSingleton<CssService>();

#region 設定多國語系
builder.Services.AddSingleton<LanguageService>();
builder.Services.AddLocalization(options => options.ResourcesPath = "Resources");
builder.Services.AddMvc()
    .AddViewLocalization(LanguageViewLocationExpanderFormat.Suffix)
    .AddDataAnnotationsLocalization();
builder.Services.Configure<RequestLocalizationOptions>(options =>
{
    var supportedCultures = new List<CultureInfo> {
        new CultureInfo("zh-TW"),
        new CultureInfo("en-US")
    };
    options.DefaultRequestCulture = new RequestCulture(culture: "zh-TW", uiCulture: "zh-TW");
    options.SupportedCultures = supportedCultures;
    options.SupportedUICultures = supportedCultures;
    options.RequestCultureProviders.Insert(0, new QueryStringRequestCultureProvider());
});
#endregion

builder.Services.AddRazorPages()
        .AddJsonOptions(options =>
        {
            //原本是 JsonNamingPolicy.CamelCase，強制頭文字轉小寫，我偏好維持原樣，設為null
            options.JsonSerializerOptions.PropertyNamingPolicy = null;
            //允許基本拉丁英文及中日韓文字維持原字元
            options.JsonSerializerOptions.Encoder =
                JavaScriptEncoder.Create(UnicodeRanges.BasicLatin, UnicodeRanges.CjkUnifiedIdeographs);
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
builder.Services.AddSession(options =>
    {
        // 設定 Session 過期時間, 單位為秒 , 20分鐘 = 20*60 = 1,200秒
        //options.IdleTimeout = TimeSpan.FromSeconds(1200);
        // 設定 Session 過期時間, 單位為分鐘
        options.IdleTimeout = TimeSpan.FromMinutes(20);
        // 限制只有在 HTTPS 連線的情況下，才允許使用 Session
        //options.Cookie.SecurePolicy = CookieSecurePolicy.Always;
        options.Cookie.Name = "multilanguagedemo";
        // 表示此 Cookie 限伺服器讀取設定，document.cookie 無法存取
        options.Cookie.HttpOnly = true;
    });

//enable the session-based TempData provider
builder.Services.AddRazorPages().AddSessionStateTempDataProvider();
builder.Services.AddControllersWithViews().AddSessionStateTempDataProvider();
//註冊 HttpContextAccessor DI 物件
builder.Services.AddSingleton<IHttpContextAccessor, HttpContextAccessor>();

// Add services to the container.
builder.Services.AddControllersWithViews();

var app = builder.Build();

// Configure the HTTP request pipeline.
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Home/Error");
    // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
    app.UseHsts();
}

// 設定多國語系
var supportedCultures = new[] { "en-US", "zh-TW" };
var localizationOptions = new RequestLocalizationOptions().SetDefaultCulture("zh-TW")
    .AddSupportedCultures(supportedCultures)
    .AddSupportedUICultures(supportedCultures);
app.UseRequestLocalization(localizationOptions);

app.UseHttpsRedirection();
app.UseStaticFiles();

app.UseRouting();

// 設定使用 Session
app.UseSession();

app.UseAuthentication();

app.UseAuthorization();

app.MapControllerRoute(
    name: "AdminArea",
    pattern: "{area:exists}/{controller=Home}/{action=Index}/{id?}");

app.MapControllerRoute(
    name: "default",
    pattern: "{controller=Home}/{action=Index}/{id?}");

app.Run();
