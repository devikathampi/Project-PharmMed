using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace WebApplication21.Controllers
{
    public class CustomerController : ApiController
    {
        DAL.Customer dl = new DAL.Customer();

        [HttpPost]
        [Route("api/Customer/CustomerRegister")]
        public void CustomerRegister([FromBody] customer obj)
        {
            dl.Register(obj);
        }

        [HttpGet]
        [Route("api/Customer/CustomerLogin/{customer_uname}/{customer_pw}")]
        public Models.customer CustomerLogin(string customer_uname, string customer_pw)
        {
            Models.customer obj = dl.Login(customer_uname, customer_pw);
            return obj;

        }

        [HttpGet]
        [Route("api/Customer/CustomerForgotPW1/{customer_uname}")]
        public string CustomerForgotPW1(string customer_uname)
        {
            string secqn = dl.CustomerForgotPW1(customer_uname);
            return secqn;
        }

        [HttpGet]
        [Route("api/Customer/CustomerForgotPW2/{customer_uname}/{secans}")]
        public string CustomerForgotPW2(string customer_uname, string secans)
        {
            string pwd = dl.CustomerForgotPW2(customer_uname, secans);
            return pwd;
        }

        [HttpGet]
        [Route("api/Customer/DisplayMeds")]
        public IEnumerable<Models.Medicines> DisplayMeds()
        {
            List<Models.Medicines> ls = dl.DisplayMeds();
            return ls;
        }

        [HttpPost]
        [Route("api/Customer/AddOrder")]
        public void AddOrder([FromBody] med_order obj)
        {
            dl.AddOrder(obj);
        }

        [HttpGet]
        [Route("api/Customer/FillCustomer/{uname}")]
        public Models.customer FillCustomer(string uname)
        {
            Models.customer obj = dl.FillCustomer(uname);
            return obj;
        }

        [HttpPut]
        [Route("api/Customer/CustomerUpdate/{customer_uname}")]
        public void CustomerUpdate(string customer_uname,[FromBody] customer obj)
        { 
            dl.CustomerEdit(customer_uname, obj);
        }

        [HttpPost]
        [Route("api/Customer/CustomerHelp")]
        public void CustomerHelp([FromBody] help obj)
        {
            dl.CustomerHelp(obj);
        }

    }
}
