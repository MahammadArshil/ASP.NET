using Microsoft.AspNetCore.Mvc;
using Program_33.Models;
using Program_33.Reposotory;

namespace Program_33.Controllers
{
    public class DemoController : Controller
    {

        private readonly Demo1 _demo1=null;
        public DemoController()
        {
            _demo1 = new Demo1();
        }
        public List<Demo> GetAll()
        {
            return _demo1.Get();
        }
        public Demo Get10(int id)
        {
            return _demo1.Get1(id);
        }
        public List<Demo> Get20(string name, string description)
        {
            return _demo1.Get2(name, description);
        }
    }
}
