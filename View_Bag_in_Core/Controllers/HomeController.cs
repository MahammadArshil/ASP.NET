using Microsoft.AspNetCore.Mvc;
using Program_39.Models;
using System.Diagnostics;
using System.Dynamic;

namespace Program_39.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;

        public HomeController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }

        public IActionResult Index()
        {
            ViewBag.Title = "Arshil";

            dynamic data=new ExpandoObject();
            data.Id = 1;
            data.Name = "Arshil";

            ViewBag.Data = new { Id = 1, Name = "Arshil" };

            ViewBag.Type=new ErrorViewModel() { Id = 2, Name = "Arshil" };

            return View();
        }

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
