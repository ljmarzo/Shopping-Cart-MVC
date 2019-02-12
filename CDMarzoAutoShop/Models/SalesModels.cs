using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;


namespace CDMarzoAutoShop.Models
{
    public class SalesModels
    {
        [Key]
        public int sID { get; set; }

        [DisplayName("Gross Sales")]
        public decimal GrossSales { get; set; }

        [DisplayName("Net Sales")]
        public decimal NetSales { get; set; }

        [DisplayName("Item Name")]
        public string iName { get; set; }

        [DisplayName("Quantity")]
        public int Qty { get; set; }

        [DisplayName("SRP")]
        public float iSRP { get; set; }

        [DisplayName("Subtotal")]
        public float Subtotal { get; set; }

        [DisplayName("Net Price")]
        public float iNetPrice { get; set; }

        [DisplayName("Net Total")]
        public float NetTotal { get; set; }
    }
}