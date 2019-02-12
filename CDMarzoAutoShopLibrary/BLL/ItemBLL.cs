using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CDMASType;

namespace CDMarzoAutoShopLibrary.BLL
{
    internal abstract class ItemBLL
    {
        internal List<CDMAS> RetrieveAllItem()
        {
            return RetrieveAllItemDAL();
        }

        internal bool UpdateItem(CDMAS cdmas)
        {
            try
            {
                return UpdateItemDAL(cdmas);
            }
            catch (Exception ex)
            {
                throw new ApplicationException(ex.Message);
            }
        }
        protected abstract bool UpdateItemDAL(CDMAS cdmas);
        protected abstract List<CDMAS> RetrieveAllItemDAL();
    }
}
