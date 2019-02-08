using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SPA_GetAPI.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            ViewBag.DisplayTest = "Hi!!";
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }

        //https://docs.microsoft.com/en-us/aspnet/mvc/overview/older-versions-1/controllers-and-routing/aspnet-mvc-controllers-overview-cs
        //A Browser request is mapped to a controller
        // [Controller [View] ]
        // This code interacts with the controller
        //MVC controllers are responsible for responding to requests made against an ASP.NET MVC website.
        //A controller exposes controller actions

        // So this is /Home/GetUsers
        //Return a partial view with the API response
        //or
        //Return the HTLM in line 

         //ChildActionOnly ensure this action can only be called from the parent view
        [ChildActionOnly]
        public ActionResult GetUsers()
        {
            //

            //return "Hello World";
            //return null;
            return PartialView();

        }

        private void CallAPI()
        {

        }

    }
}