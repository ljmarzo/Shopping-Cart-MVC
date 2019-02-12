using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CDMASType;

namespace CDMarzoAutoShopLibrary.Interfaces
{
    public interface CDMarzoAutoShopInterfaces
    {
        bool CreateCustomerInfo(CDMAS cdmas);
        List<CDMAS> RetrieveAllCustomerInfo();
        bool DeleteCustomerInfo (int cID);
        bool UpdateStatus(CDMAS cdmas);
        CDMAS ShowCustomerInfoByCID(int cID);

        bool CreateOrderInfo(CDMAS cdmas);
        List<CDMAS> RetrieveAllOrderInfo();
        List<CDMAS> RetrieveOrderInfoByCID();
        bool DeleteOrderInfo(int oID);
        bool UpdateOrderInfo(CDMAS cdmas);
        CDMAS ShowOrderInfoByOID(int oID);
        List<CDMAS> ShowOrderInfoByCID(int cID);

        bool UpdateItem(CDMAS cdmas);
        List<CDMAS> RetrieveAllItem();

        List<CDMAS> ShowAllSales();
        List<CDMAS> CreateSalesfortheday();
        CDMAS ShowSales();

    }
}
