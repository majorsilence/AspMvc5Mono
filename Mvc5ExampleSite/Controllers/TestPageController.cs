using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Mvc5ExampleSite
{
    public class TestPageController : Controller
    {
        //
        // GET: /TestPage/
        public ActionResult Index()
        {
            return View();
        }
    }
}
