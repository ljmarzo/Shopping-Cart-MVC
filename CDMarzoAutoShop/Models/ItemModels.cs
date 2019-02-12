using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace CDMarzoAutoShop.Models
{
    public class ItemModels
    {
        //[Key]
        public int iID { get; set; }

        [DisplayName("Item Name")]
        //[StringLength(150)]
        public string iName { get; set; }

        [DisplayName("Item Description")]
        //[StringLength(500)]
        public string iDescription { get; set; }

        [DisplayName("SRP")]
        public float iSRP { get; set; }

        [DisplayName("Net Price")]
        public float iNetPrice { get; set; }

        [DisplayName("Available Quantity")]
        public int iAQty { get; set; }

        [DisplayName("Sold Quantity")]
        public int iSQty { get; set; }

        [DisplayName("Category")]
        //[StringLength(150)]
        public string iCategory { get; set; }

    }
}