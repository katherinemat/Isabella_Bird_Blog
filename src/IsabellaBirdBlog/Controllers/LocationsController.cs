using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using IsabellaBirdBlog.Models;
using Microsoft.AspNetCore.Mvc.Rendering;

namespace IsabellaBirdBlog.Controllers
{
    public class LocationsController : Controller
    {
        private IsabellaBirdBlogContext db = new IsabellaBirdBlogContext();
        public IActionResult Index()
        {
            return View(db.Locations.ToList());
        }

        public IActionResult Create()
        {
            List<SelectListItem> geoclasses = new List<SelectListItem>();
            geoclasses.Add(new SelectListItem { Text = "City", Value = "City" });
            geoclasses.Add(new SelectListItem { Text = "Country", Value = "Country" });
            geoclasses.Add(new SelectListItem { Text = "Landmark", Value = "Landmark" });
            geoclasses.Add(new SelectListItem { Text = "Region", Value = "Region" });
            ViewBag.Geoclasses = geoclasses;
            return View();
        }

        [HttpPost]
        public IActionResult Create(Location location)
        {
            db.Locations.Add(location);
            db.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}
