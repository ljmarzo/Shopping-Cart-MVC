using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using CDMarzoAutoShopLibrary.Concrete_Class;
using System.Configuration;
using System.Data; // Required for using Dataset , Datatable and Sql
using System.Data.SqlClient; // Required for Using Sql
using CDMASType;

namespace CDMarzoAutoShop.Controllers
{
    public class HomeController : Controller
    {
        CDMarzoAutoShopMethods cdmasm = new CDMarzoAutoShopMethods();
        public ActionResult Index() // CREATE ORDER INFO
        {
            return View() ;
        }
        [HttpPost]
        public ActionResult Index(CDMAS cdmas)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    cdmasm.CreateOrderInfo(cdmas);
                    ModelState.Clear();
                }
            }
            catch
            {
                
            }
           return View();
        }
        public ActionResult About()
        {
            return View();
        }

        //public ActionResult Index()
        //{
        //    return View();
        //}

        //[HttpPost]
        //public ActionResult Index(CustomerInfo customerinfo)
        //{
        //    if (ModelState.IsValid)
        //    {
        //        cdmas.CreateCustomerInfo(customerinfo);
        //        ModelState.Clear();
        //    }
        //    return View();
        //}

        
       

    }
}
