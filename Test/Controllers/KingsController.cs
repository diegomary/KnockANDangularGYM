using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Test.Models;
using System.Drawing;

namespace Test.Controllers
{
    public class KingsController : Controller
    {       
        public ActionResult Index()
        {
            return View();
        }
        [HttpGet]
        public JsonResult GetKings(string Data)
        {
            List<King> th = new List<King>();
            th.Add(new King { Id = 1, Name = "The Creative",Description="The Full power of Heaven", ImagePath = @"../../Images/kings/1.jpg",KingColor= KnownColor.DarkRed.ToString() });
            th.Add(new King { Id = 2, Name = "The Receptive", Description = "The earth and is strength as nurturer", ImagePath = @"../../Images/kings/2.jpg", KingColor = KnownColor.Blue.ToString() });
            th.Add(new King { Id = 3, Name = "Difficulty at the Beginning", Description = "Things that are at the inception", ImagePath = @"../../Images/kings/3.jpg", KingColor=KnownColor.Fuchsia.ToString() });
            th.Add(new King { Id = 4, Name = "Youthful Folly", Description = "The folly of inexperience", ImagePath = @"../../Images/kings/4.jpg", KingColor = KnownColor.Pink.ToString() });
            th.Add(new King { Id = 5, Name = "Waiting", Description = "Waiting in peace", ImagePath = @"../../Images/kings/5.jpg", KingColor = KnownColor.LightSalmon.ToString() });
            th.Add(new King { Id = 6, Name = "Conflict", Description = "", ImagePath = @"../../Images/kings/6.jpg", KingColor = KnownColor.ForestGreen.ToString() });
            th.Add(new King { Id = 7, Name = "The Army", Description = "", ImagePath = @"../../Images/kings/7.jpg", KingColor = KnownColor.Cornsilk.ToString() });
            return Json(th, JsonRequestBehavior.AllowGet);
        }
        [HttpPost]
        public ActionResult PostKing(List<King> Ps)
        {
            return Json(new { Result = "Update Successful" });
        }

	}
}