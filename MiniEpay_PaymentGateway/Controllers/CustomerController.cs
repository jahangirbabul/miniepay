using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MiniEpay_PaymentGateway.Models;

namespace MiniEpay_PaymentGateway.Controllers
{
    public class CustomerController : Controller
    {
        //
        // GET: /Customer/

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult ContactDetails(Cu_step1 a)
        {
            if (ModelState.IsValid)
                return View();
            else
                return View("Index");
        }
        public ActionResult SecurityDetails(Cu_step2 b)
        {
            if (ModelState.IsValid)
                return View();
            else
                return View("ContactDetails");
        }
       
        public ActionResult AlmostDone(Cu_step3 c)
        {
            if (ModelState.IsValid)
                return View();
            else
                return View("SecurityDetails");
        }
         
      
        public ActionResult Confirmation(Cu_step4 d)
        {
            if (ModelState.IsValid)
                return View();
            else
               return View("AlmostDone");
        }



    }
}
