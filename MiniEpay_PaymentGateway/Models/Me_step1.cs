using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace MiniEpay_PaymentGateway.Models
{
    public class Me_step1
    {
       [Required(ErrorMessage="First Name required")]
       [RegularExpression("^([a-zA-Z]{2,50})$", ErrorMessage = "The First Name must be in between 2-50 characters & only alphabetic characters")]
        public string F_name        { set; get; }
        
        [RegularExpression("^([a-zA-Z]{2,50})$", ErrorMessage = "The Last Name must be in between 2-50 characters & only alphabetic characters")]
        [Required(ErrorMessage="Last Name required")]
        public string L_name        { set; get; }

        [Required(ErrorMessage = "Designation required")]
        public string Designation   { set; get; }

        [Required(ErrorMessage = "Company Name required")]
        public string Company_name  { set; get; }

        [Required(ErrorMessage = "Email required")]
        [EmailAddress]
        [DataType(DataType.EmailAddress)]
        public string Company_email { set; get; }

        [Required]
        [DataType(DataType.EmailAddress)]
        [Compare("Company_email", ErrorMessage = "Email Mismatch")]
        public string Con_email     { set; get; }
    }

    public class Me_Step2
    {
       [Required(ErrorMessage = "Street Address required")]
        public string Street_address { set; get; }

        [Required(ErrorMessage = "City required")]
        public string City           { set; get; }

        [Required(ErrorMessage = "Postal Code required")]
        public string Postal_code    { set; get; }

        [Required(ErrorMessage = "Office # required")]
        public string Office_no      { set; get; }
    }
    public class Me_Step3
    {
        [Required(ErrorMessage = "City required")]
        public string User_name      { set; get; }

        [Required(ErrorMessage = "City required")]
        public string Password       { set; get; }

        [Required]
        public string Con_password   { set; get; }

        [Required(ErrorMessage = "Website Link required")]
        public string Website_link   { set; get; }
       // public string Verify_by_link { set; get; }
    }
    public class Me_Step4
    {
        [Required(ErrorMessage = "Please confirm Us that you have read all Terms and Services")]
        public string ab { set; get; }
    }
}