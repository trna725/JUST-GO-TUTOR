using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

namespace project.Controllers
{
    public class BookingController : Controller
    {
        [HttpGet]
        public IActionResult Index()
        {
            return View();
        }


        public IActionResult Class () 
        {
            return View(); 
        
        }

        public IActionResult Booking()
        {
            return View();

        }


    }
}