using System.Reflection.PortableExecutable;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using X.PagedList;

namespace JUSTGOTUTOR.Areas_Mis_Controllers
{
    public class USYSP001_CourseCaseController : Controller
    {  /// <summary>
        /// 資料初始化事件
        /// </summary>
        /// <returns></returns> <summary>
        [Area("User")]
        [Login(RoleList = "User")]
        [HttpGet]
        public IActionResult Init()
        {
            SessionService.SetPrgInit();
            return RedirectToAction("Index", ActionService.Controller, new { area = ActionService.Area });
        }

        /// <summary>
        /// 資料列表
        /// </summary>
        /// <param name="page">目前頁數</param>
        /// <param name="searchText">查詢條件</param>
        /// <returns></returns>
        [Area("User")]
        [Login(RoleList = "User")]
        [HttpGet]
        public IActionResult Index(int id = 1)
        {
            using var datas = new z_repoCourseCase(SessionService.SortColumn, SessionService.SortDirection);
            var model = datas.GetDataList(SessionService.SearchText)
                .ToPagedList(id, SessionService.PageSize);
            SessionService.SetPageInfo(id, model.PageCount);
            SessionService.SetActionInfo(enAction.Index, enCardSize.Max, id, "");
            return View(model);
        }

        /// <summary>
        /// 新增/修改
        /// </summary>
        /// <param name="id">新增/修改 Key 值</param>
        /// <returns></returns>
        [Area("User")]
        [Login(RoleList = "User")]
        [HttpGet]
        public IActionResult CreateEdit(int id = 0)
        {
            SessionService.SetActionInfo(enAction.CreateEdit, enCardSize.Medium);
            var model = new CourseCase();
            if (id == 0)
            {
                //新增預設值
            }
            else
            {
                //修改資料
                using var datas = new z_repoCourseCase();
                model = datas.GetData(id);
                // ViewBag.TimeList =datas.TimeData(model.TimeSection); 
               
                if (model == null) return RedirectToAction("Index", ActionService.Controller, new { area = ActionService.Area });
            }
            return View(model);
        }

        /// <summary>
        /// 新增/修改
        /// </summary>
        /// <param name="model">新增/修改資料</param>
        /// <returns></returns>
        [Area("User")]
        [Login(RoleList = "User")]
        [HttpPost]
        public IActionResult CreateEdit(CourseCase model)
        {
            if (!ModelState.IsValid) return View(model);
            using var datas = new z_repoCourseCase();
            using var sendEmail = new SendMailService();           
           
            if (!datas.CheckTeacherNoCompareCourseNo(model.TeacherNo, model.CourseNo))
            {
                using var usercate = new z_repoUserCategorys(); 
                var cates = usercate.GetUserCourseList(model.TeacherNo); 
                string course = "("; 

                foreach(var cate in cates)
                {
                    course += cate.CategoryName;
                    course +="/"; 
                };

                course +=")"; 

                ModelState.AddModelError("TeacherNo", $"此老師並未教授所選課程，請參閱此老師以下課程再做選擇：{course}!!");
                ViewBag.TimeSection = datas.GetData(model.Id).TimeSection; 
                ViewBag.WeekSection = datas.GetData(model.Id).WeekSection; 
                ViewBag.UserMemo =  datas.GetData(model.Id).UserMemo;
                return View(model);
            }

            datas.CreateEdit(model);
             sendEmail.CaseSendToUserByBackend(model);
             sendEmail.CaseSendToTeacherByBackend(model);
            return RedirectToAction("Index", ActionService.Controller, new { area = ActionService.Area });
        }
      
        /// <summary>
        /// 刪除
        /// </summary>
        /// <param name="id">刪除 Key 值</param>
        /// <returns></returns>
        [Area("User")]
        [Login(RoleList = "User")]
        [HttpGet]
        public IActionResult Delete(int id = 0)
        {
            using var datas = new z_repoCourseCase();
            datas.Delete(id);
            return RedirectToAction("Index", ActionService.Controller, new { area = ActionService.Area });
        }

        /// <summary>
        /// 刪除
        /// </summary>
        /// <param name="id">記錄 ID</param>
        /// <returns></returns>
        [Area("User")]
        [Login(RoleList = "User")]
        [HttpPost]
        public JsonResult DeleteRow(int id = 0)
        {
            //檢查刪除權限
            //if (!PrgService.IsProgramSecurity(enSecurtyMode.Delete))
            //return RedirectToAction(ActionService.Index, ActionService.Controller, new { area = ActionService.Area });

            using (z_repoCourseCase datas = new z_repoCourseCase())
            {
                datas.Delete(id);
                dmJsonMessage result = new dmJsonMessage() { Mode = true, Message = "資料已刪除!!" };
                return Json(result);
            }
        }

        /// <summary>
        /// 查詢
        /// </summary>
        /// <returns></returns>
        [Area("User")]
        [Login(RoleList = "User")]
        [HttpPost]
        public IActionResult Search()
        {
            object obj_text = Request.Form["SearchText"];
            string str_text = (obj_text == null) ? string.Empty : obj_text.ToString();
            SessionService.SearchText = str_text;
            return RedirectToAction("Index", ActionService.Controller, new { area = ActionService.Area });
        }

        /// <summary>
        /// 欄位排序
        /// </summary>
        /// <param name="id">欄位名稱</param>
        /// <returns></returns>
        [Area("User")]
        [Login(RoleList = "User")]
        [HttpGet]
        public IActionResult Sort(string id)
        {
            if (SessionService.SortColumn == id)
            {
                SessionService.SortDirection = (SessionService.SortDirection == "asc") ? "desc" : "asc";
            }
            else
            {
                SessionService.SortColumn = id;
                SessionService.SortDirection = "asc";
            }
            return RedirectToAction("Index", ActionService.Controller, new { area = ActionService.Area });
        }
    }
}