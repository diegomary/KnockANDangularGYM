using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Test.Controllers
{
    public class Thought
    {

        public string text { get; set; }
      //  public string Email { get; set; }
    }
    public class ThoughtwithId
    {
        public int Id { get; set; }
        public string text { get; set; }
        //  public string Email { get; set; }
    }
    public class HomeController : Controller
    {
        //
        // GET: /Home/
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Example1()
        {
            return View();
        }

        public ActionResult Example2()
        {
            return View();
        }

        public ActionResult Example3()
        {
            return View();
        }

        public ActionResult Example4()
        {
            return View();
        }
     

        [HttpGet]
        public JsonResult GetData(string Data)
        {
            List<Thought> th = new List<Thought>();
            th.Add(new Thought { text = "Life is Wonderful if you want it to be" });
            th.Add(new Thought { text = "The blue sky is always motivating" });
            th.Add(new Thought { text = "Practice Practice Practice and you'll get it done" });
            th.Add(new Thought { text = "Peace comes from thinking that nothing can hurt us." });
            th.Add(new Thought { text = "The main reason we need to improve is because we don't want to worsen." });
            return Json(th, JsonRequestBehavior.AllowGet);
        }


        [HttpPost]
        public ActionResult PostData(List<Thought> Ps)
        {
            return Json(new { Result = "Update Successful" });
        }


	}
}