using System.Runtime.InteropServices.WindowsRuntime;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using project.Models.RepositoryModel;
using project.Models.ViewModel;

namespace project.Controllers
{
    public class UserController : Controller
    {
        /// <summary>
        /// 會員登出系統
        /// </summary>
        /// <returns></returns> <summary>
        [HttpGet]
        [Login()]
        public IActionResult MemberLogout()
        {
            SessionService.IsLogin = false;
            return RedirectToAction("MemberLogin", "User", new { area = "" });
        }

        /// <summary>
        /// 會員登入系統
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        // [AllowAnonymous()]
        public IActionResult MemberLogin()
        {
            ActionService.SetActionData("登入", "", "會員");
            vmLogin model = new vmLogin();
            return View(model);
        }

        /// <summary>
        /// 會員登入系統
        /// </summary>
        /// <param name="model">使用者輸入的資料模型</param>
        /// <returns></returns>
        [HttpPost]
        [AllowAnonymous()]
        public IActionResult MemberLogin(vmLogin model)
        {
            if (!ModelState.IsValid) return View(model);
            using var user = new z_repoMember();
            if (!user.CheckLogin(model))
            {
                ModelState.AddModelError("AccountNo", "登入帳號或密碼輸入不正確!!");
                model.AccountNo = "";
                model.Password = "";
                return View(model);
            }

            //判斷使用者角色，進入不同的首頁
            //var data = user.GetData(model.AccountNo);
            //if (data.RoleNo == "Mis" || data.RoleNo == "User")
            //    return RedirectToAction("Index", "Home", new { area = "Admin" });
            //if (data.RoleNo == "Member")
            //    return RedirectToAction("Index", "Home", new { area = "" });

            //角色不正確,引發自定義錯誤,並重新輸入
            ModelState.AddModelError("AccountNo", "登入帳號角色設定不正確!!");
            model.AccountNo = "";
            model.Password = "";
            return View(model);
        }

        /// <summary>
        /// 老師登出系統
        /// </summary>
        /// <returns></returns> <summary>
        [HttpGet]
        [Login()]
        public IActionResult TeacherLogout()
        {
            SessionService.IsLogin = false;
            return RedirectToAction("TeacherLogin", "User", new { area = "" });
        }

        /// <summary>
        /// 老師登入系統
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        // [AllowAnonymous()]
        public IActionResult TeacherLogin()
        {
            ActionService.SetActionData("登入", "", "老師");
            vmLogin model = new vmLogin();
            return View(model);
        }

        /// <summary>
        /// 老師登入系統
        /// </summary>
        /// <param name="model">使用者輸入的資料模型</param>
        /// <returns></returns>
        [HttpPost]
        [AllowAnonymous()]
        public IActionResult TeacherLogin(vmLogin model)
        {
            if (!ModelState.IsValid) return View(model);
            using var user = new z_repoTeacher();
            if (!user.CheckLogin(model))
            {
                ModelState.AddModelError("AccountNo", "登入帳號或密碼輸入不正確!!");
                model.AccountNo = "";
                model.Password = "";
                return View(model);
            }

            //判斷使用者角色，進入不同的首頁
            //var data = user.GetData(model.AccountNo);
            //if (data.RoleNo == "Mis" || data.RoleNo == "User")
            //    return RedirectToAction("Index", "Home", new { area = "Admin" });
            //if (data.RoleNo == "Member")
            //    return RedirectToAction("Index", "Home", new { area = "" });

            //角色不正確,引發自定義錯誤,並重新輸入
            ModelState.AddModelError("AccountNo", "登入帳號角色設定不正確!!");
            model.AccountNo = "";
            model.Password = "";
            return View(model);
        }

        /// <summary>
        /// 管理者登出系統
        /// </summary>
        /// <returns></returns> <summary>
        [HttpGet]
        [Login()]
        public IActionResult AdminLogout()
        {
            SessionService.IsLogin = false;
            return RedirectToAction("AdminLogin", "User", new { area = "" });
        }

        /// <summary>
        /// 管理者登入系統
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        // [AllowAnonymous()]
        public IActionResult AdminLogin()
        {
            ActionService.SetActionData("登入", "", "管理者");
            vmLogin model = new vmLogin();
            return View(model);
        }

        /// <summary>
        /// 管理者登入系統
        /// </summary>
        /// <param name="model">使用者輸入的資料模型</param>
        /// <returns></returns>
        [HttpPost]
        [AllowAnonymous()]
        public IActionResult AdminLogin(vmLogin model)
        {
            if (!ModelState.IsValid) return View(model);
            using var user = new z_repoAdmin();
            if (!user.CheckLogin(model))
            {
                ModelState.AddModelError("AccountNo", "登入帳號或密碼輸入不正確!!");
                model.AccountNo = "";
                model.Password = "";
                return View(model);
            }

            //判斷使用者角色，進入不同的首頁
            //var data = user.GetData(model.AccountNo);
            //if (data.RoleNo == "Mis" || data.RoleNo == "User")
            //    return RedirectToAction("Index", "Home", new { area = "Admin" });
            //if (data.RoleNo == "Member")
            //    return RedirectToAction("Index", "Home", new { area = "" });

            //角色不正確,引發自定義錯誤,並重新輸入
            ModelState.AddModelError("AccountNo", "登入帳號角色設定不正確!!");
            model.AccountNo = "";
            model.Password = "";
            return View(model);
        }
    }
}