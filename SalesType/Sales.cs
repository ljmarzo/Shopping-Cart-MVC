using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SalesType
{
    public class Sales
    {
        public int sID { get; set; }
        public decimal GrossSales { get; set; }
        public decimal NetSales { get; set; }
        public string iName { get; set; }
        public int Qty { get; set; }
        public float iSRP { get; set; }
        public float Subtotal { get; set; }
        public float iNetPrice { get; set; }
        public float NetTotal { get; set; }
        public DateTime DatePurchased { get; set; }

    }
}
