using Microsoft.AspNetCore.Localization;
using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;

namespace JUSTGOTUTOR.Controllers
{
    public class CategoryController: Controller
    {
        private readonly ILogger<CategoryController> _logger;
        private LanguageService _local;

        public CategoryController(ILogger<CategoryController> logger, LanguageService localization)
        {
            _logger = logger;
            _local = localization;
        }

        public IActionResult Index(string id)
        {
            using (var cate2 = new z_repoCategory2s())
            {
                var model = cate2.GetDataList(id , "");
                if (model != null && model.Count > 0) return View(model);
            }
            return RedirectToAction("Index" , "Home" , new {area = ""});
        }
    }
}