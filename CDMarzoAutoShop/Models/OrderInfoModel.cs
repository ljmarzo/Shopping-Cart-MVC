using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.ComponentModel.DataAnnotations;

namespace CDMarzoAutoShop.Models
{
    public class OrderInfoModel
    {
        [Key]
        public int oID { get; set; }

        [Display(Name="Date Purchased")]
        public DateTime DatePurchased { get; set; }

        [Display(Name="Quantity")]
        public int Qty { get; set; }

        [Display(Name = "Subtotal")]
        public float Subtotal { get; set; }

        [Display(Name = "Net Total")]
        public float NetTotal { get; set; }

        public int cID { get; set; }
        public int iID { get; set; }

        [Display(Name = "Item Name")]
        public string iName { get; set; }

        [Display(Name = "Category")]
        public string iCategory { get; set; }

        [Display(Name = "First Name")]
        public string FirstName { get; set; }

        [Display(Name = "Last Name")]
        public string LastName { get; set; }
    }
}