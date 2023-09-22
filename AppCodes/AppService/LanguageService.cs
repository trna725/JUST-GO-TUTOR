using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.Extensions.Localization;
using System.Reflection;

/// <summary>
/// Dummy class to group shared resources
/// </summary>
public class SharedResource { }
public class LanguageService
{
    private readonly IStringLocalizer _localizer;
    public List<SelectListItem> CultureList { get; set; }
    public LanguageService(IStringLocalizerFactory factory)
    {
        var type = typeof(SharedResource);
        var assemblyName = new AssemblyName(type.GetTypeInfo().Assembly.FullName);
        _localizer = factory.Create("SharedResource", assemblyName.Name);
        SetCultureList();
    }
    public LocalizedString Value(string key)
    {
        return _localizer[key];
    }
    public void SetCultureList()
    {
        CultureList = new List<SelectListItem>();
        CultureList.Add(new SelectListItem() { Text = "繁體中文", Value = "zh-TW" });
        CultureList.Add(new SelectListItem() { Text = "English", Value = "en-US" });
    }
    public string GetCurrentCultureName()
    {
        return Thread.CurrentThread.CurrentUICulture.Name;
    }
    public string GetCurrentCultureText()
    {
        return GetCultureText(Thread.CurrentThread.CurrentUICulture.Name);
    }
    public string GetCultureText(string cultureName)
    {
        var data = CultureList.Where(m => m.Value == cultureName).FirstOrDefault();
        if (data != null) return data.Text;
        return "未定義";
    }
}