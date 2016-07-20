using System.Web.Mvc;

namespace txo.intranet.Controllers
{
    /// <summary>
    /// all TXO controllers should be derived from this class
    /// </summary>
    public class BaseController : Controller
    {
        private entities.txoEntities _db = null;

        protected entities.txoEntities db {
            get {
                if (_db == null)
                    _db = new entities.txoEntities();

                return _db;
            }
        }
        
    }
}