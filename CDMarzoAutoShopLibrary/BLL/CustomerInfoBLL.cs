using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CDMASType;

namespace CDMarzoAutoShopLibrary.BLL
{
    internal abstract class CustomerInfoBLL
    {
        internal bool CreateCustomerInfo(CDMAS cdmas)
        {
            try
            {
                return CreateCustomerInfoDAL(cdmas);
            }
            catch (Exception ex)
            {
                throw new ApplicationException(ex.Message);
            }
        }

        internal List<CDMAS> RetrieveAllCustomerInfo()
        {
            return RetrieveAllCustomerInfoDAL();
        }

        internal CDMAS ShowCustomerInfoByCID(int cID)
        {
            try
            {
                return ShowCustomerInfoByCIDDAL(cID);
            }
            catch (Exception ex)
            {
                throw new ApplicationException(ex.Message);
            }
        }

        internal bool UpdateStatus(CDMAS cdmas)
        {
            try
            {
                return UpdateStatusDAL(cdmas);
            }
            catch (Exception ex)
            {
                throw new ApplicationException(ex.Message);
            }
        }
        internal bool DeleteCustomerInfo(int cID)
        {
            try
            {
                return DeleteCustomerInfoDAL(cID);
            }
            catch (Exception ex)
            {
                throw new ApplicationException(ex.Message);
            }
        }

        protected abstract bool CreateCustomerInfoDAL(CDMAS cdmas);
        protected abstract CDMAS ShowCustomerInfoByCIDDAL(int cID);
        protected abstract bool UpdateStatusDAL(CDMAS cdmas);
        protected abstract List<CDMAS> RetrieveAllCustomerInfoDAL();
        protected abstract bool DeleteCustomerInfoDAL(int cID);

    }
}
