using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MVC_Controller_Demo.Controllers
{
    public class HomeController : Controller
    {
        public string Index()
        {
            return "Hello from College";
        }
        public string Name()
        {
            return "My name is Arshil";
        }
    }
}