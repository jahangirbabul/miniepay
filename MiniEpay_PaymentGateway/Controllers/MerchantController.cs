using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MiniEpay_PaymentGateway.Models;

namespace MiniEpay_PaymentGateway.Controllers
{
    public class MerchantController : Controller
    {
        //
        // GET: /Merchant/

        public ActionResult Index()
        {
            return View();
        }
        public ActionResult ContactDetails(Me_step1 a)
        {
            if (ModelState.IsValid)
                return View();
            else
                return View("Index");
        }
        public ActionResult SecurityDetails(Me_Step2 b)
        {
            if (ModelState.IsValid)
                return View();
            else
                return View("ContactDetails");
        }
        public ActionResult AlmostDone(Me_Step3 c)
        {
            if (ModelState.IsValid)
                return View();
            else
                return View("SecurityDetails");
        }


    }
}
