using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using IsabellaBirdBlog.Models;

namespace IsabellaBirdBlog.Controllers
{
    public class LocationsController : Controller
    {
        private IsabellaBirdBlogContext db = new IsabellaBirdBlogContext();
        public IActionResult Index()
        {
            return View(db.Locations.ToList());
        }
    }
}
