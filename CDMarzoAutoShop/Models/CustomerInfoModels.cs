using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;


namespace CDMarzoAutoShop.Models
{
    public class CustomerInfoModels
    {
        [Key]
        public int cID { get; set; }

        //[Required(ErrorMessage = "Please enter Firt Name")]
        [Required(ErrorMessage="Please enter Firt Name")]
        [DisplayName("First Name")]
        [StringLength(50)]
        public string FirstName { get; set; }

        [Required(ErrorMessage = "Please enter Firt Name")]
        [DisplayName("Last Name")]
        [StringLength(50)]
        public string LastName { get; set; }

        [Required(ErrorMessage = "Please enter Firt Name")]
        [DisplayName("Address")]
        [StringLength(150)]
        public string Address { get; set; }

        [Required(ErrorMessage = "Please enter Firt Name")]
        [DisplayName("Contact Number")]
        [RegularExpression("([0-9]+)", ErrorMessage = "Please enter a valid number")]
        public string ContactNo { get; set; }

        [Required(ErrorMessage = "Please enter Email")]
        [StringLength(50)]
        [DisplayName("Email")]
        [RegularExpression(@"^(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6}$", ErrorMessage = "Invalid Email Address")]  
        public string Email { get; set; }

        [Required(ErrorMessage = "Please choose Delivery Option")]
        [DisplayName("Delivery Option")]
        public string DelivOption { get; set; }

       
        [DisplayName("Status")]
        public string Status { get; set; }

        [DisplayName("Total")]
        public decimal Total { get; set; }

        [DisplayName("Total")]
        public decimal tTotal { get; set; }
    }
}