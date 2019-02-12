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
    public class ItemController : Controller
    {
        CDMarzoAutoShopMethods cdmasm = new CDMarzoAutoShopMethods();
        public ActionResult Index()
        {
            ModelState.Clear();
            return View(cdmasm.RetrieveAllItem());
        }
        public ActionResult Edit(int iID)
        {
            return View(cdmasm.RetrieveAllItem().Find(item => item.iID == iID));
        }

        [HttpPost]
        public ActionResult Edit(int iID, CDMAS cdmas)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    cdmasm.UpdateItem(cdmas);
                    ModelState.Clear();
                    return RedirectToAction("Index");
                }
            }
            catch
            {
                
            
            }return View();
        }
    }
}
