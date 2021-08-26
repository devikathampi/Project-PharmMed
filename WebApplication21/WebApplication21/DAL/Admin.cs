using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication21.DAL
{
    public class Admin
    {
        hrb2_dbEntities db = new hrb2_dbEntities();
        public void Register(admin obj)
        {
            db.admins.Add(obj);
            db.SaveChanges();
        }

        public string AdminForgotPW1(string admin_uname)
        {
            var obj = db.admins.Where(x => x.admin_name == admin_uname).FirstOrDefault();
            string secqn = obj.secqn;
            return secqn;
        }

        public string AdminForgotPW2(string admin_uname,string secans)
        {
            var obj = db.admins.Where(x => x.admin_name == admin_uname && x.secans == secans).FirstOrDefault();
            string pwd = obj.admin_pw;
            return pwd;
        }

        public admin Login(string admin_uname, string admin_pw)
        {
            var obj = db.admins.FirstOrDefault(x => x.admin_name == admin_uname && x.admin_pw == admin_pw);
            return obj;
        }
        public Models.Admin FillAdmin(string uname)
        {
            admin obj = db.admins.Where(x => x.admin_name == uname).FirstOrDefault();
            Models.Admin obj1 = new Models.Admin();
            obj1.admin_id = obj.admin_id;
            obj1.admin_name = obj.admin_name;
            obj1.admin_pw = obj.admin_pw;
            obj1.dob = obj.dob.ToString();
            obj1.gender = obj.gender;
            obj1.secqn = obj.secqn;
            obj1.secans = obj.secans;
            obj1.emailid = obj.emailid;
            return obj1;
        }
        public List<Models.Medicines> DisplayRec()
        {
            List<Models.Medicines> ls = new List<Models.Medicines>();
            List<medicine> ls1 = db.medicines.ToList();
            foreach (medicine x in ls1)
            {
                Models.Medicines obj = new Models.Medicines();
                obj.med_id = x.med_id;
                obj.med_name = x.med_name;
                obj.manufacturer = x.manufacturer;
                obj.disease = x.disease;
                obj.mfg_date = x.mfg_date;
                obj.exp_date = x.exp_date;
                obj.cost = Convert.ToInt32(x.cost);
                obj.avail_qty = Convert.ToInt32(x.avail_qty);
                ls.Add(obj);
            }
            return ls;
        }

        public void AddMedicine(medicine obj)
        {
            db.medicines.Add(obj);
            db.SaveChanges();
        }
        public void UpdateMedicine(int med_id, medicine obj)
        {
            medicine obj1 = db.medicines.Where(x => x.med_id == med_id).FirstOrDefault();
            obj1.med_id = obj.med_id;
            obj1.med_name = obj.med_name;
            obj1.manufacturer = obj.manufacturer;
            obj1.disease = obj.disease;
            obj1.mfg_date = obj.mfg_date;
            obj1.exp_date = obj.exp_date;
            obj1.cost = obj.cost;
            obj1.avail_qty = obj.avail_qty;
            db.SaveChanges();
        }
        public void DeleteMedicine(int med_id)
        {
            medicine obj1 = db.medicines.Where(x => x.med_id == med_id).FirstOrDefault();
            db.medicines.Remove(obj1);
            db.SaveChanges();

        }
        public List<Models.med_order> GenRep()
        {
            List<Models.med_order> ls = new List<Models.med_order>();
            List<med_order> ls1 = db.med_order.ToList();
            foreach (med_order x in ls1)
            {
                Models.med_order obj = new Models.med_order();
                obj.order_id = x.order_id;
                obj.customer_id = Convert.ToInt32(x.customer_id);
                obj.med_id = x.med_id.ToString();
                obj.amount = Convert.ToInt32(x.amount);
                obj.mode_of_payment = x.mode_of_payment;
                obj.order_date = x.order_date;
                ls.Add(obj);
            }
            return ls;



        }
        public List<Models.help> DisplayHelp()
        {
            List<Models.help> ls = new List<Models.help>();
            List<help> ls1 = db.helps.ToList();
            foreach (help x in ls1)
            {
                Models.help obj = new Models.help();
                obj.issue_id = x.issue_id;
                obj.customer_id = Convert.ToInt32(x.customer_id);
                obj.issue = x.issue;
                obj.description = x.description;
                obj.contact_no = Convert.ToInt32(x.contact_no);
                obj.status = x.status;
                ls.Add(obj);
            }
            return ls;
        }
        public void HelpStatus(int issue_id)
        {
            help obj1 = db.helps.Where(x => x.issue_id == issue_id).FirstOrDefault();
            obj1.status = "Resolved";
            db.SaveChanges();

        }

        public void AdminEdit(string admin_uname, admin obj)
        {
            admin obj1 = db.admins.Where(x => x.admin_name == admin_uname).FirstOrDefault();
            obj1.admin_id = obj.admin_id;
            obj1.admin_name = obj.admin_name;
            obj1.admin_pw = obj.admin_pw;
            obj1.dob = obj.dob;
            obj1.gender = obj.gender;
            obj1.secqn = obj.secqn;
            obj1.secans = obj.secans;
            obj1.emailid = obj.emailid;
            db.SaveChanges();

        }

    }
}