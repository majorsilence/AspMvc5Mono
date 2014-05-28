using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Mvc5ExampleSite
{
    public class HomeController : Controller
    {
        //
        // GET: /TestPage/
        public ActionResult Index()
        {
            return View();
        }
    }
}
