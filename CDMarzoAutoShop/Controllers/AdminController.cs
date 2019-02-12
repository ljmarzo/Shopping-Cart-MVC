using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Configuration;
using System.Data; // Required for using Dataset , Datatable and Sql
using System.Data.SqlClient; // Required for Using Sql
using CDMarzoAutoShopLibrary.Concrete_Class;
using CDMarzoAutoShop.Models;
using CDMASType;



namespace CDMarzoAutoShop.Controllers
{
    public class AdminController : Controller
    {
        CDMarzoAutoShopMethods cdmasm = new CDMarzoAutoShopMethods();
        public ActionResult Index()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Index(LogInModel model)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    if ((model.UserID == "admin") && (model.Password == "admin"))
                    {
                        return RedirectToAction("Index", "Item");
                    }
                    else
                    {
                        ModelState.AddModelError("", "User Name or Password is invalid.");
                    } 
                    
                } 
                return View(model);
            }
            catch
            {
                return View();
            }
          
        }

        #region CustomerInfo
        public ActionResult Customers()
        {
            ModelState.Clear();
            return View(cdmasm.RetrieveAllCustomerInfo());
        }

        public ActionResult Edit(int cID)
        {
            return View(cdmasm.RetrieveAllCustomerInfo().Find(customerinfo => customerinfo.cID == cID));
        }

        [HttpPost]
        public ActionResult Edit(int cID, CDMAS cdmas)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    cdmasm.UpdateStatus(cdmas);
                    ModelState.Clear();
                   
                } 
                return RedirectToAction("Customers");
            }
            catch
            {
                return View();
            }
        }

        public ActionResult Details(int cID)
        {
            var orderinfo = cdmasm.ShowOrderInfoByCID(cID);

            return PartialView("Details", orderinfo);
        }
        public ActionResult Delete(int cID)
        {
            var customerinfo = cdmasm.ShowCustomerInfoByCID(cID);
            return PartialView("Delete",customerinfo);
        }
        [HttpPost]
        public ActionResult Delete(int cID, CDMAS cdmas)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    cdmasm.DeleteCustomerInfo(cID);
                    ModelState.Clear();
                    //return RedirectToAction("Category");
                   
                } 
                 return RedirectToAction("Customers");
            }
            catch
            {
                return View();
            }
        }
        #endregion

        #region OrderInfo
        public ActionResult Orders()
        {
            ModelState.Clear();
            return View(cdmasm.RetrieveAllOrderInfo());
        } 
        public ActionResult DeleteOrder(int oID)
        {
            var orderinfo = cdmasm.ShowOrderInfoByOID(oID);
            return PartialView("Delete", orderinfo);
        }
        [HttpPost]
        public ActionResult DeleteOrder(int oID, CDMAS cdmas)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    cdmasm.DeleteOrderInfo(oID);
                    ModelState.Clear();
                    //return RedirectToAction("Category");
                }
                return RedirectToAction("Orders");
            }
            catch
            {
                return View();
            }
        }
        #endregion

        #region Sales
        public ActionResult Sales()
        {
            try
            {
                ModelState.Clear();
            }
            catch
            {
            }
            return View(cdmasm.ShowAllSales());
        }
        public ActionResult ShowSales()
        {
            try
            {
                var sales = cdmasm.ShowSales();
                return PartialView("ShowSales", sales);
            }
            catch
            {
            }
            return PartialView();
            
        }
        public ActionResult TodaysSales()
        {
            try
            {
                ModelState.Clear();
            }
            catch
            {
            }
            return View(cdmasm.CreateSalesfortheday());
        }
#endregion

    }
}
