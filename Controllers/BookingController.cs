using Microsoft.AspNetCore.Localization;
using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;

namespace JUSTGOTUTOR.Controllers
{
    public class BookingController: Controller
    {
        private readonly ILogger<CategoryController> _logger;
        private LanguageService _local;

        public BookingController(ILogger<CategoryController> logger, LanguageService localization)
        {
            _logger = logger;
            _local = localization;
        }

        public IActionResult Index(string id)
        {
            SessionService.CourseNo = id;
            using (var cate3 = new z_repoCategory3s())
            using (var usercate = new z_repoUserCategorys())
            {
                var model = usercate.GetDetailDataList(id);
                SessionService.CourseName = cate3.GetCategoryName(id);
                if(model!=null && model.Count>0) return View(model);
            }
            return RedirectToAction("Index" , "Home" , new {area = ""});
        }
        
        [HttpGet]
        public IActionResult Select(string id)
        {
            using var z_repoUsers = new z_repoUsers();
            var userData = z_repoUsers.GetUserData(id);
            SessionService.TeacherNo = id;
            SessionService.TeacherName = userData.UserName;
            //Demo---
            // SessionService.UserNo = "U005";
            // SessionService.UserName = "楊小風";
            // SessionService.IsLogin = true;
            //Demo---
            vmCourseCase model = new vmCourseCase();
            return View(model); 
        }
        [HttpPost]
        public IActionResult Select(vmCourseCase model)
        {
            using var courseCase = new z_repoCourseCase();
            using var sendEmail = new SendMailService();
            //1.Insert Case
            courseCase.InsertCase(model);
            //2.Send Email To User
            sendEmail.CaseSendToUser();
            //3.Send Email To Teacher
            sendEmail.CaseSendToTeacher();
            //4.Display Message
            TempData["MessageText"] = "本課程預約案件已成立，平台已寄送一封案件確認給您，請記得收取您的信件!!";
            return RedirectToAction("MessageText" , "Booking" , new {area = ""});
        }
        [HttpGet]
        public IActionResult MessageText()
        {
            ViewBag.MessageText = TempData["MessageText"];
            return View();
        }
    }
}