using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication21.DAL
{
    public class Customer
    {
        hrb2_dbEntities db = new hrb2_dbEntities();

        public void Register(customer obj)
        {
            db.customers.Add(obj);
            db.SaveChanges();
        }

        public Models.customer Login(string customer_uname, string customer_pw)
        {
            customer obj = db.customers.FirstOrDefault(x => x.customer_uname == customer_uname && x.customer_pw == customer_pw);
            Models.customer obj1 = new Models.customer();
            obj1.customer_id = obj.customer_id;
            obj1.lname = obj.lname;
            obj1.fname = obj.fname;
            obj1.customer_uname = obj.customer_uname;
            obj1.address = obj.address;
            obj1.customer_pw = obj.customer_pw;
            obj1.secqn = obj.secqn;
            obj1.secans = obj.secans;
            obj1.dob = obj.dob;
            obj1.gender = obj.gender;
            obj1.contactno = obj.contactno;
            obj1.emailid = obj.emailid;
            return obj1;
        }
        public string CustomerForgotPW1(string customer_uname)
        {
            var obj = db.customers.Where(x => x.customer_uname == customer_uname).FirstOrDefault();
            string secqn = obj.secqn;
            return secqn;
        }

        public string CustomerForgotPW2(string customer_uname, string secans)
        {
            var obj = db.customers.Where(x => x.customer_uname == customer_uname && x.secans == secans).FirstOrDefault();
            string pwd = obj.customer_pw;
            return pwd;
        }

        public List<Models.Medicines> DisplayMeds()
        {
            List<Models.Medicines> ls = new List<Models.Medicines>();
            List<medicine> ls1 = db.medicines.ToList();
            foreach(medicine x in ls1)
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

        public void AddOrder(med_order obj)
        {
            db.med_order.Add(obj);
            db.SaveChanges();
        }
        public Models.customer FillCustomer(string uname)
        {
            customer obj = db.customers.Where(x=>x.customer_uname == uname).FirstOrDefault();
            Models.customer obj1 = new Models.customer();
            obj1.customer_id = obj.customer_id;
            obj1.lname = obj.lname;
            obj1.fname = obj.fname;
            obj1.customer_uname = obj.customer_uname;
            obj1.address = obj.address;
            obj1.customer_pw = obj.customer_pw;
            obj1.secqn = obj.secqn;
            obj1.secans = obj.secans;
            obj1.dob = obj.dob.ToString();
            obj1.gender = obj.gender;
            obj1.contactno = obj.contactno;
            obj1.emailid = obj.emailid;
            return obj1;
        }

        public void CustomerEdit(string customer_uname, customer obj)
        {
            customer obj1 = db.customers.Where(x => x.customer_uname == customer_uname).FirstOrDefault();
            obj1.customer_id = obj.customer_id;
            obj1.lname = obj.lname;
            obj1.fname = obj.fname;
            obj1.customer_uname = obj.customer_uname;
            obj1.address = obj.address;
            obj1.customer_pw = obj.customer_pw;
            obj1.secqn = obj.secqn;
            obj1.secans = obj.secans;
            obj1.dob = obj.dob;
            obj1.gender = obj.gender;
            obj1.contactno = obj.contactno;
            obj1.emailid = obj.emailid;
            db.SaveChanges();

        }
        public void CustomerHelp(help obj)
        {
            db.helps.Add(obj);
            db.SaveChanges();
        }

    }
}