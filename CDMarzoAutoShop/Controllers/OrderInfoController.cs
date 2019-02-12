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
    public class OrderInfoController : Controller
    {
        CDMarzoAutoShopMethods cdmasm = new CDMarzoAutoShopMethods();

        public ActionResult Index()
        {
            return View();
        }

        //
        // GET: /OrderInfo/Details/5

        public ActionResult Details(int id)
        {
            return View();
        }

        //
        // GET: /OrderInfo/Create

        public ActionResult Create()
        {
            return View();
        } 

        //
        // POST: /OrderInfo/Create

        [HttpPost]
        public ActionResult Create(CDMAS cdmas)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    cdmasm.CreateOrderInfo(cdmas);
                    ModelState.Clear();
                    return RedirectToAction("Cart", "OrderInfo");
                }
            }
            catch
            {
            }
            return View();
        }

        public ActionResult Cart()
        {
            try
            {
                ModelState.Clear();
                return View(cdmasm.RetrieveOrderInfoByCID());
            }
            catch
            {
                return View();
            }
            
        }
       

        //
        // GET: /OrderInfo/Edit/5
 
        public ActionResult Edit(int oID)
        {
            return PartialView("Edit", cdmasm.RetrieveOrderInfoByCID().Find(cdmas => cdmas.oID == oID));
        }
        [HttpPost]
        public ActionResult Edit(int oID, CDMAS cdmas)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    cdmasm.UpdateOrderInfo(cdmas);
                    ModelState.Clear();
                    return RedirectToAction("Cart");
                }
            }
            catch
            {
                
            }
            return View();
        }


        //
        // GET: /OrderInfo/Delete/5
 
        public ActionResult Delete(int oID)
        {
            var cdmas = cdmasm.ShowOrderInfoByOID(oID);
            return PartialView("Delete", cdmas);
        }
        [HttpPost]
        public ActionResult Delete(int oID, CDMAS cdmas)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    cdmasm.DeleteOrderInfo(oID);
                    ModelState.Clear();
                    return RedirectToAction("Cart", "OrderInfo");
                }
            }
            catch
            {
                
            }
            return View();
        }

        public ActionResult Customer()
        {
            return View();
        }
        [HttpPost]
        
        public ActionResult Customer(CDMAS cdmas)
        {
           
            try
            {
                if (ModelState.IsValid)
                {
                    
                    cdmasm.CreateCustomerInfo(cdmas);
                    ModelState.Clear();
                    return RedirectToAction("CheckOutMsg");
                }
            }
            catch
            {
            }
            return View();
           
        }
        public ActionResult CheckOutMsg()
        {
            return PartialView();
        }
    }
}
