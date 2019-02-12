using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ItemType
{
    public class Item
    {
        public int iID { get; set; }
        public string iName { get; set; }
        public string iDescription { get; set; }
        public float iSRP { get; set; }
        public float iNetPrice { get; set; }
        public int iAQty { get; set; }
        public int iSQty { get; set; }
        public string iCategory { get; set; }
    }
}
