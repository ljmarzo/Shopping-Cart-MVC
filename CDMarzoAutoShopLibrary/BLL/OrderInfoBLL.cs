using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CDMASType;

namespace CDMarzoAutoShopLibrary.BLL
{
    internal abstract class OrderInfoBLL
    {
        internal bool CreateOrderInfo(CDMAS cdmas)
        {
            try
            {
                return CreateOrderInfoDAL(cdmas);
            }
            catch (Exception ex)
            {
                throw new ApplicationException(ex.Message);
            }
        }
        internal CDMAS ShowOrderInfoByOID(int oID)
        {
            try
            {
                return ShowOrderInfoByOIDDAL(oID);
            }
            catch (Exception ex)
            {
                throw new ApplicationException(ex.Message);
            }
        }
        internal List<CDMAS>ShowOrderInfoByCID(int cID)
        {
            try
            {
                return ShowOrderInfoByCIDDAL(cID);
            }
            catch (Exception ex)
            {
                throw new ApplicationException(ex.Message);
            }
        }
        internal bool UpdateOrderInfo(CDMAS cdmas)
        {
            try
            {
                return UpdateOrderInfoDAL(cdmas);
            }
            catch (Exception ex)
            {
                throw new ApplicationException(ex.Message);
            }
        }

        internal List<CDMAS> RetrieveAllOrderInfo()
        {
            return RetrieveAllOrderInfoDAL();
        }

        internal List<CDMAS> RetrieveOrderInfoByCID()
        {
            return RetrieveOrderInfoByCIDDAL();
        }
        internal bool DeleteOrderInfo(int oID)
        {
            try
            {
                return DeleteOrderInfoDAL(oID);
            }
            catch (Exception ex)
            {
                throw new ApplicationException(ex.Message);
            }
        }

        protected abstract bool CreateOrderInfoDAL(CDMAS cdmas);
        protected abstract CDMAS ShowOrderInfoByOIDDAL(int oID);
        protected abstract List<CDMAS> ShowOrderInfoByCIDDAL(int cID);
        protected abstract bool UpdateOrderInfoDAL(CDMAS cdmas);
        protected abstract List<CDMAS> RetrieveAllOrderInfoDAL();
        protected abstract List<CDMAS> RetrieveOrderInfoByCIDDAL();
        protected abstract bool DeleteOrderInfoDAL(int oID);
    }
}
