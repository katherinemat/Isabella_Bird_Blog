using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using IsabellaBirdBlog.Models;

// For more information on enabling MVC for empty projects, visit http://go.microsoft.com/fwlink/?LinkID=397860

namespace IsabellaBirdBlog.Controllers
{
    public class ExperiencesController : Controller
    {
        private IsabellaBirdBlogContext db = new IsabellaBirdBlogContext();
        public IActionResult Index()
        {
            return View(db.Experiences.ToList());
        }
    }
}
