using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CDMASType
{
    public class CDMAS
    {
        public int cID { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Address { get; set; }
        public string ContactNo { get; set; }
        public string Email { get; set; }
        public string DelivOption { get; set; }
        public string Status { get; set; }
        public decimal Total { get; set; }
        public decimal tTotal { get; set; }

        public int iID { get; set; }
        public string iName { get; set; }
        public string iDescription { get; set; }
        public float iSRP { get; set; }
        public float iNetPrice { get; set; }
        public int iAQty { get; set; }
        public int iSQty { get; set; }
        public string iCategory { get; set; }

        public int oID { get; set; }
        public DateTime DatePurchased { get; set; }
        public int Qty { get; set; }
        public float Subtotal { get; set; }
        public float NetTotal { get; set; }
      
        public int sID { get; set; }
        public decimal GrossSales { get; set; }
        public decimal NetSales { get; set; }
    }
}
