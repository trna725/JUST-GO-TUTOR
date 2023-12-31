
using Microsoft.AspNetCore.Mvc;
using X.PagedList;

namespace JUSTGOTUTOR.Areas_Mis_Controllers
{
    public class MUSRP001_UserController : Controller
    {  

        //int id=0; 
        
        /// <summary>
        /// 資料初始化事件
        /// </summary>
        /// <returns></returns> <summary>
        [Area("Mis")]
        [Login(RoleList = "Mis")]
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
        [Area("Mis")]
        [Login(RoleList = "Mis")]
        [HttpGet]
        public IActionResult Index(int id = 1)
        {
            using var datas = new z_repoUsers(SessionService.SortColumn, SessionService.SortDirection);
            // var model = datas.GetDataList(SessionService.SearchText)
            //     .ToPagedList(id, SessionService.PageSize);
                //  var model = datas.GetMutipleRoleDataList("User","Student","Teacher", SessionService.SearchText)
                // .ToPagedList(id, SessionService.PageSize);
                 var model = datas.ExcludeRoleDataList("Admin","Mis", SessionService.SearchText)
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
        [Area("Mis")]
        [Login(RoleList = "Mis")]
        [HttpGet]
        public IActionResult CreateEdit(int id = 0)
        {
            SessionService.SetActionInfo(enAction.CreateEdit, enCardSize.Medium);          
            // var model = new vmCreateUser();
            var model = new Users();
            // this.id = id; 
            if (id == 0)
            {
                //新增預設值
                model.IsValid = true;
            }
            else
            {
                //修改資料
                using var datas = new z_repoUsers();
                // model = datas.GetCreateUserData(id);
                model = datas.GetUserData(id);
                if (model == null) return RedirectToAction("Index", ActionService.Controller, new { area = ActionService.Area });
            }
            return View(model);
        }

        /// <summary>
        /// 新增/修改
        /// </summary>
        /// <param name="model">新增/修改資料</param>
        /// <returns></returns>
        [Area("Mis")]
        [Login(RoleList = "Mis")]
        [HttpPost]
        //public IActionResult CreateEdit(Users model)
        // public IActionResult CreateEdit(vmCreateUser model)
        public IActionResult CreateEdit(Users model)
        {
            if (!ModelState.IsValid) return View(model);
            using var datas = new z_repoUsers();

             if (!datas.CheckRegisterUserNo(model.UserNo))
            {
                ModelState.AddModelError("UserNo", "登入帳號重覆註冊!!");
                return View(model);
            }

            // datas.UserEdit(id, model);
            datas.UserEdit(model);
            return RedirectToAction("Index", ActionService.Controller, new { area = ActionService.Area });
        }
      
        /// <summary>
        /// 刪除
        /// </summary>
        /// <param name="id">刪除 Key 值</param>
        /// <returns></returns>
        [Area("Mis")]
        [Login(RoleList = "Mis")]
        [HttpGet]
        public IActionResult Delete(int id = 0)
        {
            using var datas = new z_repoUsers();
            datas.Delete(id);
            return RedirectToAction("Index", ActionService.Controller, new { area = ActionService.Area });
        }

        /// <summary>
        /// 刪除
        /// </summary>
        /// <param name="id">記錄 ID</param>
        /// <returns></returns>
        [Area("Mis")]
        [Login(RoleList = "Mis")]
        [HttpPost]
        public JsonResult DeleteRow(int id = 0)
        {
            //檢查刪除權限
            //if (!PrgService.IsProgramSecurity(enSecurtyMode.Delete))
            //return RedirectToAction(ActionService.Index, ActionService.Controller, new { area = ActionService.Area });

            using (z_repoUsers datas = new z_repoUsers())
            {
                datas.Delete(id);
                dmJsonMessage result = new dmJsonMessage() { Mode = true, Message = "資料已刪除!!" };
                return Json(result);
            }
        }

        /// <summary>
        /// 重新設定密碼
        /// </summary>
        /// <param name="id">記錄 ID</param>
        /// <returns></returns>
        [Area("Mis")]
        [Login(RoleList = "Mis")]
        [HttpPost]
        public JsonResult ResetPasswordRow(int id = 0)
        {
            using (z_repoUsers datas = new z_repoUsers())
            {
                datas.ResetPassword(id);
                dmJsonMessage result = new dmJsonMessage() { Mode = true, Message = "密碼已重設!!" };
                return Json(result);
            }
        }

        /// <summary>
        /// 查詢
        /// </summary>
        /// <returns></returns>
        [Area("Mis")]
        [Login(RoleList = "Mis")]
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
        [Area("Mis")]
        [Login(RoleList = "Mis")]
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


        /// <summary>
        /// 內容描述新編輯功能
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [Area("Mis")]
        [Login(RoleList ="Mis")]
        [HttpGet]
        public IActionResult ContentText(int id)
        {
            using var datas = new z_repoUsers(SessionService.SortColumn, SessionService.SortDirection);
            // var model = datas.GetRoleDataList("Teacher", SessionService.SearchText);

            var model = datas.GetDataList().Where(m=> m.Id == id).FirstOrDefault(); 

            return View(model);
        }

        [Area("Mis")]
        [Login(RoleList ="Mis")]
        [HttpGet]
        public IActionResult ContentTextEdit(int id)
        {
            using var datas = new z_repoUsers(SessionService.SortColumn, SessionService.SortDirection);
            var model = datas.GetDataList().Where(m=> m.Id == id).FirstOrDefault(); 

            return View(model); 
        }

        [Area("Mis")]
        [Login(RoleList ="Mis")]
        [HttpPost]
        public IActionResult ContentTextEdit(Users model)
        {
            using var datas = new z_repoUsers(SessionService.SortColumn, SessionService.SortDirection);
            datas.UpdateContentText(model.Id, model.ContentText); 

            return RedirectToAction("Init", ActionService.Controller, new { area = ActionService.Area }); 
        }        
    }
}