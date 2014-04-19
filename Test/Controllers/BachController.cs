using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Test.Models;

namespace Test.Controllers
{
    public class BachController : Controller
    {
        public BachController()
        {
            using (var dbContext = new DataLayer())
            {
                if (!dbContext.Database.Exists())
                {
                    dbContext.Database.Create();
                    List<Flower> th = new List<Flower>();
                    dbContext.AllFlowers.Add(new Flower { Id = 1, Name = "Agrimony", Description = "", ImagePath = @"../../Images/Flowers/agrimony.jpg", FlowerColor = KnownColor.Silver.ToString() });
                    dbContext.AllFlowers.Add(new Flower { Id = 2, Name = "Aspen", Description = "", ImagePath = @"../../Images/Flowers/aspen.jpg", FlowerColor = KnownColor.Blue.ToString() });
                    dbContext.AllFlowers.Add(new Flower { Id = 3, Name = "Beech", Description = "", ImagePath = @"../../Images/Flowers/beech.jpg", FlowerColor = KnownColor.Fuchsia.ToString() });
                    dbContext.AllFlowers.Add(new Flower { Id = 4, Name = "Centaury", Description = "", ImagePath = @"../../Images/Flowers/centaury.jpg", FlowerColor = KnownColor.Pink.ToString() });
                    dbContext.AllFlowers.Add(new Flower { Id = 5, Name = "Cerato", Description = "", ImagePath = @"../../Images/Flowers/cerato.jpg", FlowerColor = KnownColor.LightSalmon.ToString() });
                    dbContext.AllFlowers.Add(new Flower { Id = 6, Name = "Cherry Plum", Description = "", ImagePath = @"../../Images/Flowers/cherrypl.jpg", FlowerColor = KnownColor.ForestGreen.ToString() });
                    dbContext.AllFlowers.Add(new Flower { Id = 7, Name = "Chestnut Bud", Description = "", ImagePath = @"../../Images/Flowers/chestbud.jpg", FlowerColor = KnownColor.Cornsilk.ToString() });
                    
                    dbContext.AllFlowers.Add(new Flower { Id = 8, Name = "Chicory", Description = "", ImagePath = @"../../Images/Flowers/chicory.jpg", FlowerColor = KnownColor.DarkRed.ToString() });
                    dbContext.AllFlowers.Add(new Flower { Id = 9, Name = "Clematis", Description = "", ImagePath = @"../../Images/Flowers/clematis.jpg", FlowerColor = KnownColor.Blue.ToString() });
                    dbContext.AllFlowers.Add(new Flower { Id = 10, Name = "Crab Apple", Description = "", ImagePath = @"../../Images/Flowers/crabappl.jpg", FlowerColor = KnownColor.Fuchsia.ToString() });
                    dbContext.AllFlowers.Add(new Flower { Id = 11, Name = "Elm", Description = "", ImagePath = @"../../Images/Flowers/elm.jpg", FlowerColor = KnownColor.Pink.ToString() });
                    dbContext.AllFlowers.Add(new Flower { Id = 12, Name = "Gentian", Description = "", ImagePath = @"../../Images/Flowers/gentian.jpg", FlowerColor = KnownColor.LightSalmon.ToString() });
                    dbContext.AllFlowers.Add(new Flower { Id = 13, Name = "Gorse", Description = "", ImagePath = @"../../Images/Flowers/gorse.jpg", FlowerColor = KnownColor.ForestGreen.ToString() });
                    dbContext.AllFlowers.Add(new Flower { Id = 14, Name = "Heather", Description = "", ImagePath = @"../../Images/Flowers/heather.jpg", FlowerColor = KnownColor.Cornsilk.ToString() });
                   
                    dbContext.AllFlowers.Add(new Flower { Id = 15, Name = "Holly", Description = "", ImagePath = @"../../Images/Flowers/holly.jpg", FlowerColor = KnownColor.DarkRed.ToString() });
                    dbContext.AllFlowers.Add(new Flower { Id = 16, Name = "Honeysuckle", Description = "", ImagePath = @"../../Images/Flowers/honeysuc.jpg", FlowerColor = KnownColor.Blue.ToString() });
                    dbContext.AllFlowers.Add(new Flower { Id = 17, Name = "Hornbeam", Description = "", ImagePath = @"../../Images/Flowers/hornbeam.jpg", FlowerColor = KnownColor.Fuchsia.ToString() });
                    dbContext.AllFlowers.Add(new Flower { Id = 18, Name = "Impatients", Description = "", ImagePath = @"../../Images/Flowers/impatien.jpg", FlowerColor = KnownColor.Pink.ToString() });
                    dbContext.AllFlowers.Add(new Flower { Id = 19, Name = "Larch", Description = "", ImagePath = @"../../Images/Flowers/larch.jpg", FlowerColor = KnownColor.LightSalmon.ToString() });
                    dbContext.AllFlowers.Add(new Flower { Id = 20, Name = "Mimulus", Description = "", ImagePath = @"../../Images/Flowers/mimulus.jpg", FlowerColor = KnownColor.ForestGreen.ToString() });
                    dbContext.AllFlowers.Add(new Flower { Id = 21, Name = "Mustard", Description = "", ImagePath = @"../../Images/Flowers/mustard.jpg", FlowerColor = KnownColor.Cornsilk.ToString() });
                    
                    dbContext.AllFlowers.Add(new Flower { Id = 22, Name = "Oak", Description = "", ImagePath = @"../../Images/Flowers/oak.jpg", FlowerColor = KnownColor.DarkRed.ToString() });
                    dbContext.AllFlowers.Add(new Flower { Id = 23, Name = "Olive", Description = "", ImagePath = @"../../Images/Flowers/olive.jpg", FlowerColor = KnownColor.Blue.ToString() });
                    dbContext.AllFlowers.Add(new Flower { Id = 24, Name = "Pine", Description = "", ImagePath = @"../../Images/Flowers/pine.jpg", FlowerColor = KnownColor.Fuchsia.ToString() });
                    dbContext.AllFlowers.Add(new Flower { Id = 25, Name = "Red Chestnut", Description = "", ImagePath = @"../../Images/Flowers/redchest.jpg", FlowerColor = KnownColor.Pink.ToString() });
                    dbContext.AllFlowers.Add(new Flower { Id = 26, Name = "Rock Rose", Description = "", ImagePath = @"../../Images/Flowers/rockrose.jpg", FlowerColor = KnownColor.LightSalmon.ToString() });
                    dbContext.AllFlowers.Add(new Flower { Id = 27, Name = "Rock Water", Description = "", ImagePath = @"../../Images/Flowers/rockwate.jpg", FlowerColor = KnownColor.ForestGreen.ToString() });
                    dbContext.AllFlowers.Add(new Flower { Id = 28, Name = "Sclerantus", Description = "", ImagePath = @"../../Images/Flowers/sclerant.jpg", FlowerColor = KnownColor.Cornsilk.ToString() });
                    
                    dbContext.AllFlowers.Add(new Flower { Id = 29, Name = "Star of Bethlem", Description = "", ImagePath = @"../../Images/Flowers/starbeth.jpg", FlowerColor = KnownColor.DarkRed.ToString() });
                    dbContext.AllFlowers.Add(new Flower { Id = 30, Name = "Sweet Chestnut", Description = "", ImagePath = @"../../Images/Flowers/swchest.jpg", FlowerColor = KnownColor.Blue.ToString() });
                    dbContext.AllFlowers.Add(new Flower { Id = 31, Name = "Vervain", Description = "", ImagePath = @"../../Images/Flowers/vervain.jpg", FlowerColor = KnownColor.Fuchsia.ToString() });
                    dbContext.AllFlowers.Add(new Flower { Id = 32, Name = "Vine", Description = "", ImagePath = @"../../Images/Flowers/vine.jpg", FlowerColor = KnownColor.Pink.ToString() });
                    dbContext.AllFlowers.Add(new Flower { Id = 33, Name = "Walnut", Description = "", ImagePath = @"../../Images/Flowers/walnut.jpg", FlowerColor = KnownColor.LightSalmon.ToString() });
                    dbContext.AllFlowers.Add(new Flower { Id = 34, Name = "Water Violet", Description = "", ImagePath = @"../../Images/Flowers/watervio.jpg", FlowerColor = KnownColor.ForestGreen.ToString() });
                    dbContext.AllFlowers.Add(new Flower { Id = 35, Name = "White Chestnut", Description = "", ImagePath = @"../../Images/Flowers/whiteche.jpg", FlowerColor = KnownColor.Cornsilk.ToString() });
                   
                    dbContext.AllFlowers.Add(new Flower { Id = 36, Name = "Wild Oat", Description = "", ImagePath = @"../../Images/Flowers/wildoat.jpg", FlowerColor = KnownColor.DarkRed.ToString() });
                    dbContext.AllFlowers.Add(new Flower { Id = 37, Name = "Wild Rose", Description = "", ImagePath = @"../../Images/Flowers/wildrose.jpg", FlowerColor = KnownColor.Blue.ToString() });
                    dbContext.AllFlowers.Add(new Flower { Id = 38, Name = "Willow", Description = "", ImagePath = @"../../Images/Flowers/willow.jpg", FlowerColor = KnownColor.Fuchsia.ToString() });
                    dbContext.SaveChanges();
                }
            }        
        }
        public ActionResult Index()
        {
            return View();
        }
        [HttpGet]
        public JsonResult GetFlowers(string Data)
        {
            using (var dbContext = new DataLayer())
            {
                return Json(dbContext.AllFlowers.ToList<Flower>(), JsonRequestBehavior.AllowGet);
            }
        }
        [HttpPost]
        public ActionResult UpdateAllFlowers(List<Flower> Ps)
        {
            using (var ctx = new DataLayer())
            {
                if (ctx.AllFlowers.Count().Equals(Ps.Count))
                {
                    foreach (Flower k in Ps)
                    {
                        ctx.AllFlowers.FirstOrDefault(m => m.Id.Equals(k.Id)).Description = k.Description;
                    }
                    ctx.SaveChanges();
                }
            }
               return Json(new { Result = "Update Successful" });
        }
        [HttpPost]
        public ActionResult UpdateFlower(int Id,string Description)
        {
            using (var ctx = new DataLayer())
            {
                ctx.AllFlowers.FirstOrDefault(m => m.Id.Equals(Id)).Description = Description;
                ctx.SaveChanges();
            }
            return Json(new { Result = "Update Successful" });
        }

	}
}