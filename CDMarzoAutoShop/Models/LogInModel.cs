using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace CDMarzoAutoShop.Models
{
    public class LogInModel
    {
        [Required]
        [DisplayName("User ID: ")]
        public string UserID { get; set; }

        [Required]
        [DataType(DataType.Password)]
        [DisplayName("Password: ")]
        public string Password { get; set; }
    }
}