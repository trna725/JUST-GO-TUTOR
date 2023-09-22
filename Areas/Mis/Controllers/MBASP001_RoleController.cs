using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using X.PagedList;

namespace JUSTGOTUTOR.Areas_Mis_Controllers
{
    public class MBASP001_RoleController : Controller
    {
        /// <summary>
        /// 員工資料初始事件
        /// </summary>
        /// <returns></returns> <summary>
        [Area("Mis")]
        [HttpGet]
        [Login(RoleList = "Mis")]
        public IActionResult Init()
        {
            SessionService.SortColumn = "";
            SessionService.SortDirection = "";
            //返回列表
            return RedirectToAction("Index", ActionService.Controller, new { area = ActionService.Area });
        }

        /// <summary>
        /// 資料列表
        /// </summary>
        /// <param name="page">目前頁數</param>
        /// <param name="searchText">查詢條件</param>
        /// <returns></returns>
        [Area("Mis")]
        [HttpGet]
        [Login(RoleList = "Mis")]
        public IActionResult Index(int page = 1, string searchText = "")
        {
            using var roles = new z_repoRoles(SessionService.SortColumn, SessionService.SortDirection);
            var model = roles.GetDataList().ToPagedList(page, SessionService.PageSize);
            SessionService.SetPageInfo(page, model.PageCount);
            SessionService.SearchText = searchText;
            return View(model);
        }

        /// <summary>
        /// 查詢
        /// </summary>
        /// <returns></returns>
        [Area("Mis")]
        [HttpPost]
        [Login(RoleList = "Mis")]
        public IActionResult Search()
        {
            object obj_text = Request.Form["SearchText"];
            string str_text = (obj_text == null) ? string.Empty : obj_text.ToString();
            return RedirectToAction("Index", ActionService.Controller, new { area = ActionService.Area, searchText = str_text });
        }

        /// <summary>
        /// 欄位排序
        /// </summary>
        /// <param name="id">欄位名稱</param>
        /// <returns></returns>
        [Area("Mis")]
        [HttpGet]
        [Login(RoleList = "Mis")]
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
            return RedirectToAction("Index", ActionService.Controller,
                new
                {
                    area = ActionService.Area,
                    searchText = SessionService.SearchText
                });
        }
    }
}