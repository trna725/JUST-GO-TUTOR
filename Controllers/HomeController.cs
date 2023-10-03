using System.Dynamic;
using Microsoft.AspNetCore.Localization;
using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;

namespace JUSTGOTUTOR.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private LanguageService _local;

        public HomeController(ILogger<HomeController> logger, LanguageService localization)
        {
            _logger = logger;
            _local = localization;
        }

        public IActionResult Index()
        {
            ViewBag.WelcomeMessage = _local.Value("WelcomeMessage");
            return View();
        }

        public IActionResult Privacy()
        {
            return View();
        }

        [HttpGet]
        public IActionResult Contact()
        {
            vmContact model = new vmContact();
            return View(model);
        }

        [HttpPost]
        public IActionResult Contact(vmContact model)
        {
            if (!ModelState.IsValid) return View(model);
            
                //寄出驗證信
                using var sendEmail = new SendMailService(); 
                var mailObject = new MailObject();
                mailObject.ToName = model.ContactorName; 
                mailObject.ToEmail = model.ContactorEmail; 
                mailObject.FromName = AppService.AdminName;
                mailObject.MailSubject = model.ContactorSubject; 
                mailObject.MailContent =model.ContactorMessage; 

                var str_message = sendEmail.ContactUs(mailObject);
                if (string.IsNullOrEmpty(str_message))
                {
                    str_message = "您的訊息已傳送，我們會請專人盡快回復您!!";
                }

                TempData["MessageText"] = str_message;
                return RedirectToAction("MessageResult", "Web", new { area = "" });
            // return RedirectToAction("Index", "Home", new { area = "" });
        }

        public IActionResult ChangeLanguage(string culture)
        {
            Response.Cookies.Append(CookieRequestCultureProvider.DefaultCookieName,
                CookieRequestCultureProvider.MakeCookieValue(
                    new RequestCulture(culture)),
                    new CookieOptions()
                    {
                        Expires = DateTimeOffset.UtcNow.AddYears(1)
                    });
            return Redirect(Request.Headers["Referer"].ToString());
        }

        [HttpGet]
        public IActionResult About()
        {
            
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}