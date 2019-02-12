using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CDMASType;

namespace CDMarzoAutoShopLibrary.BLL
{
    internal abstract class SalesBLL
    {

        internal List<CDMAS> ShowAllSales()
        {
            return ShowAllSalesDAL();
        }
        internal CDMAS ShowSales()
        {
            try
            {
                return ShowSalesDAL();
            }
            catch (Exception ex)
            {
                throw new ApplicationException(ex.Message);
            }

        }
        internal List<CDMAS> CreateSalesfortheday()
        {
            return CreateSalesforthedayDAL();
        }
        protected abstract List<CDMAS> CreateSalesforthedayDAL();
        protected abstract List<CDMAS> ShowAllSalesDAL();
        protected abstract CDMAS ShowSalesDAL();
    }
}
