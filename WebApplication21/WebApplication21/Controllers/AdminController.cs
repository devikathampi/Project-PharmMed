using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using WebApplication21.DAL;

namespace WebApplication21.Controllers
{
    public class AdminController : ApiController
    {
        DAL.Admin dl = new DAL.Admin();

        [HttpPost]
        [Route("api/Admin/AdminRegister")]
        public void AdminRegister([FromBody] admin obj)
        {
            dl.Register(obj);
        }

        [HttpGet]
        [Route("api/Admin/AdminForgotPW1/{admin_uname}")]
        public string AdminForgotPW1(string admin_uname)
        {
            string secqn = dl.AdminForgotPW1(admin_uname);
            return secqn;
        }

        [HttpGet]
        [Route("api/Admin/AdminForgotPW2/{admin_uname}/{secans}")]
        public string AdminForgotPW2(string admin_uname,string secans)
        {
            string pwd = dl.AdminForgotPW2(admin_uname,secans);
            return pwd;
        }

        [HttpGet]
        [Route("api/Admin/AdminLogin/{admin_uname}/{admin_pw}")]

        public admin AdminLogin(string admin_uname, string admin_pw)
        {
            admin obj = dl.Login(admin_uname, admin_pw);
            return obj;
        }

        [HttpGet]
        [Route("api/Admin/FillAdmin/{uname}")]
        public Models.Admin FillAdmin(string uname)
        {
            Models.Admin obj = dl.FillAdmin(uname);
            return obj;
        }

        [HttpPut]
        [Route("api/Admin/AdminUpdate/{admin_uname}")]
        public void AdminUpdate(string admin_uname, [FromBody] admin obj)
        {
            dl.AdminEdit(admin_uname, obj);
        }


        [HttpGet]
        [Route("api/Admin/DisplayMedRec")]
        public IEnumerable<Models.Medicines> DisplayMedRec()
        {
            List<Models.Medicines> ls = dl.DisplayRec();
            return ls;
        }

        [HttpPost]
        [Route("api/Admin/AddMed")]
        public void AddMed([FromBody] medicine obj)
        {
            dl.AddMedicine(obj);
        }

        [HttpPut]
        [Route("api/Admin/UpdMed/{med_id}")]
        public void UpdMed(int med_id,[FromBody] medicine obj)
        {
            dl.UpdateMedicine(med_id, obj);
        }

        [HttpDelete]
        [Route("api/Admin/DelMed/{med_id}")]
        public void DelMed(int med_id)
        {
            dl.DeleteMedicine(med_id);
        }

        [HttpGet]
        [Route("api/Admin/GenerateRep")]
        public IEnumerable<Models.med_order> GenerateRep()
        {
            List<Models.med_order> ls1 = dl.GenRep();
            
            return ls1;
        }

        [HttpGet]
        [Route("api/Admin/DispHelp")]
        public IEnumerable<Models.help> DispHelp()
        {
            List<Models.help> ls2 = dl.DisplayHelp();
            return ls2;
        }

        [HttpPut]
        [Route("api/Admin/HelpStat/{issue_id}")]
        public void HelpStat(int issue_id)
        {
            dl.HelpStatus(issue_id);

        }

    }
}
