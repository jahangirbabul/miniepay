using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace MiniEpay_PaymentGateway.Models
{           
                  //!------Getting started-------!
    public class Cu_step1
    {
       

        [Required(ErrorMessage = "First Name required")]
        [RegularExpression("^([a-zA-Z]{2,50})$", ErrorMessage = "The First Name must be in between 2-50 characters & only alphabetic characters")]
        public string F_Name { get; set; }
        
        [RegularExpression("^([a-zA-Z]{2,50})$", ErrorMessage = "The Last Name must be in between 2-50 characters &  only alphabetic characters")]
        [Required(ErrorMessage = "Last Name required")]
        public string L_Name { get; set; }

        [Required(ErrorMessage = "Email required")]
        [EmailAddress]
        [DataType(DataType.EmailAddress)]
        public string Email_Address { get; set; }

        [Required]
        [DataType(DataType.EmailAddress)]
        [Compare("Email_Address", ErrorMessage = "Email Mismatch")]
        public string Con_Email { get; set; }

        [Required(ErrorMessage = "Date Of Birth required")]
        public string Dob { get; set; }
    }
         

       // !-----------Contact Details----------!
    public class Cu_step2
    {
    [Required(ErrorMessage = "City required")]
    public string City { set; get; }

    public string street_address { set; get; }

    [Required(ErrorMessage = "Postal Code required")]
    public string Postal_code { set; get; }

    }
    //!---------------Security Detail-------------!
    public class Cu_step3
    {
        [Required(ErrorMessage = "User Name required")]
        [StringLength(20,ErrorMessage="The {0} must be between {2} and {1} characters long.",MinimumLength=5)]
        [RegularExpression("^([a-zA-Z0-9]{5,20})$",ErrorMessage="The {0} must contains only alphanumeric characters")]
        public string User_name { set; get; }

        [Required(ErrorMessage = "Password required")]
        [StringLength(50,ErrorMessage="The {0} must be atleast {2} characters long.",MinimumLength=6)]
        [RegularExpression("^([a-zA-Z0-9]{5,20})$", ErrorMessage = "The {0} must contains only alphanumeric characters")]
        [DataType(DataType.Password)]
        public string Password { set; get; }
        
        [DataType(DataType.Password)]
        [Compare("Password", ErrorMessage = "Password Mismatch")]
        public string Con_password { set; get; }

        [Required(ErrorMessage = "Mobile # required")]
        public long Mobile { set; get; }

        [Required(ErrorMessage = "Verification Code required")]
        public string Verify_code { set; get; }

    }
        // !---------------Almost Done------------!
    public class Cu_step4
    {
        [Required(ErrorMessage = " Name required")]
        [RegularExpression("^([a-zA-Z]{2,50})$", ErrorMessage = "The Name must be in between 2-50 characters & only alphabetic characters")]
        public string Name { set; get; }
        
        [Required(ErrorMessage = " CNIC required")]
        public long CNIC { set; get; }
    }
}