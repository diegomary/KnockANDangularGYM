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

        public ActionResult Knockout1()
        {
            return View();
        }

        public ActionResult ShuffleCards()
        {
            return View();
        }

        public ActionResult Angular1()
        {
            return View();
        }

        public ActionResult Knockout3()
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


        [HttpPost]
        [AllowAnonymous]
        public string GetImage(object Pi, string Message) // note that function's  parameters here are not used, it is just passed from the client
        {
            Random r = new Random((int)System.DateTime.Now.Ticks);
            int R = r.Next(0, 256);
            String Rstr = R.ToString("x"); Rstr = Rstr.Length == 1 ? (Rstr = "0" + Rstr) : Rstr;
            int G = r.Next(0, 256);
            String Gstr = G.ToString("x"); Gstr = Gstr.Length == 1 ? (Gstr = "0" + Gstr) : Gstr;
            int B = r.Next(0, 256);
            String Bstr = B.ToString("x"); Bstr = Bstr.Length == 1 ? (Bstr = "0" + Bstr) : Bstr;
            String Completecolor = "#" + Rstr + Gstr + Bstr;
            int t = r.Next(1, 65);
            string img = @"../Images/Kings/" + t.ToString() + ".jpg" + " " + Completecolor.ToString();
            return img;
        }


	}
}