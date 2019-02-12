using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CDMarzoAutoShopLibrary.Interfaces;
using CDMarzoAutoShopLibrary.DAL;
using CDMarzoAutoShopLibrary.BLL;
using CDMASType;

namespace CDMarzoAutoShopLibrary.Concrete_Class
{
    public class CDMarzoAutoShopMethods : CDMarzoAutoShopInterfaces
    {
        private CustomerInfoBLL customerinfobll;
        private ItemBLL itembll;
        private OrderInfoBLL orderinfobll;
        private SalesBLL salesbll;

        public CDMarzoAutoShopMethods()
        {
            customerinfobll = new CustomerInfoDAL();
            itembll = new ItemDAL();
            orderinfobll = new OrderInfoDAL();
            salesbll = new SalesDAL();
        }
        public bool CreateCustomerInfo(CDMAS cdmas)
        {
            try
            {
                return customerinfobll.CreateCustomerInfo(cdmas);
            }
            catch (Exception ex)
            {
                throw new ApplicationException(ex.Message);
            }
        }
        public CDMAS ShowCustomerInfoByCID(int cID)
        {
            return customerinfobll.ShowCustomerInfoByCID(cID);
        }
        public bool DeleteCustomerInfo(int cID)
        {
            try
            {
                return customerinfobll.DeleteCustomerInfo(cID);
            }
            catch (Exception ex)
            {
                throw new ApplicationException(ex.Message);
            }
        }
        public bool UpdateStatus(CDMAS cdmas)
        {
            try
            {
                return customerinfobll.UpdateStatus(cdmas);
            }
            catch (Exception ex)
            {
                throw new ApplicationException(ex.Message);
            }
        }
        public List<CDMAS> RetrieveAllCustomerInfo()
        {
            return customerinfobll.RetrieveAllCustomerInfo();
        }

        public bool UpdateItem(CDMAS cdmas)
        {
            try
            {
                return itembll.UpdateItem(cdmas);
            }
            catch (Exception ex)
            {
                throw new ApplicationException(ex.Message);
            }
        }
        public List<CDMAS> RetrieveAllItem()
        {
            return itembll.RetrieveAllItem();
        }

        public bool CreateOrderInfo(CDMAS cdmas)
        {
            try
            {
                return orderinfobll.CreateOrderInfo(cdmas);
            }
            catch (Exception ex)
            {
                throw new ApplicationException(ex.Message);
            }
        }
        public CDMAS ShowOrderInfoByOID(int oID)
        {
            return orderinfobll.ShowOrderInfoByOID(oID);
        }
        public List<CDMAS>ShowOrderInfoByCID(int cID)
        {
            return orderinfobll.ShowOrderInfoByCID(cID);
        }
        public bool UpdateOrderInfo(CDMAS cdmas)
        {
            try
            {
                return orderinfobll.UpdateOrderInfo(cdmas);
            }
            catch (Exception ex)
            {
                throw new ApplicationException(ex.Message);
            }
        }
        public bool DeleteOrderInfo(int oID)
        {
            try
            {
                return orderinfobll.DeleteOrderInfo(oID);
            }
            catch (Exception ex)
            {
                throw new ApplicationException(ex.Message);
            }
        }
        public List<CDMAS> RetrieveAllOrderInfo()
        {
            return orderinfobll.RetrieveAllOrderInfo();
        }
        public List<CDMAS> RetrieveOrderInfoByCID()
        {
            return orderinfobll.RetrieveOrderInfoByCID();
        }

        public List<CDMAS> ShowAllSales()
        {
            return salesbll.ShowAllSales();
        }
        public CDMAS ShowSales()
        {
            return salesbll.ShowSales();
        }
        public List<CDMAS> CreateSalesfortheday()
        {
            return salesbll.CreateSalesfortheday();
        }
    }
}
