using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace OrderInfoTye
{
    public class OrderInfo
    {
        public int oID { get; set; }
        public DateTime DatePurchased { get; set; }
        public int Qty { get; set; }
        public float Subtotal { get; set; }
        public float NetTotal { get; set; }
        public int cID { get; set; }
        public int iID { get; set; }
        public string iName { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
    }
}
