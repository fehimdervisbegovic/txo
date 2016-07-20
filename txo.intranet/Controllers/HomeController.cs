using System.Web.Mvc;

namespace txo.intranet.Controllers
{
    public class HomeController : BaseController
    {
        public ActionResult Index()
        {
            //return View();

            return RedirectToAction("Index", "Suppliers");
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
    }
}