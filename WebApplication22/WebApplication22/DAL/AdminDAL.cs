using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Web;

namespace WebApplication22.DAL
{
    public class AdminDAL
    {

        Uri baseaddress = new Uri("https://localhost:44334/api/"); //Give url of your web api for testing
        HttpClient cl;
        
        public AdminDAL()
        {
            cl = new HttpClient();
            cl.BaseAddress = baseaddress;
        }

        public int AdminRegister(Models.Admin admin)
        {
            int flag = 0;
            string data = JsonConvert.SerializeObject(admin); 
            StringContent content = new StringContent(data, Encoding.UTF8, "application/json");
            HttpResponseMessage response = cl.PostAsync(cl.BaseAddress + "Admin/AdminRegister", content).Result;
            if (response.IsSuccessStatusCode)
            {
                flag = 1;
            }

            return flag;

        }

        public string GenerateSecurityQn_Cust(string username)
        {
            string obj = "Error";
            HttpResponseMessage response = cl.GetAsync(cl.BaseAddress + "Admin/AdminForgotPW1/" + username).Result;
            if (response.IsSuccessStatusCode)
            {
                string data = response.Content.ReadAsStringAsync().Result;
                obj = JsonConvert.DeserializeObject<string>(data);

            }

            return obj;
        }

        public string GeneratePassword(string username, string secans)
        {
            string obj = null;
            HttpResponseMessage response = cl.GetAsync(cl.BaseAddress + "Admin/AdminForgotPW2/" + username + "/" + secans).Result;
            if (response.IsSuccessStatusCode)
            {
                string data = response.Content.ReadAsStringAsync().Result;
                obj = JsonConvert.DeserializeObject<string>(data);

            }

            return obj;
        }

        public Models.Admin AdminLogin(string username, string pwd)
        {
            Models.Admin obj = new Models.Admin();
            HttpResponseMessage response = cl.GetAsync(cl.BaseAddress + "Admin/AdminLogin/" + username + "/" + pwd).Result;
            if (response.IsSuccessStatusCode)
            {
                string data = response.Content.ReadAsStringAsync().Result;
                obj = JsonConvert.DeserializeObject<Models.Admin>(data);

            }
            else
            {
                obj = null;
            }

            return obj;
        }

        public Models.Admin FillAdmin(string uname)
        {
            Models.Admin obj = new Models.Admin();
            HttpResponseMessage response = cl.GetAsync(cl.BaseAddress + "Admin/FillAdmin/" + uname).Result;
            if (response.IsSuccessStatusCode)
            {
                string data = response.Content.ReadAsStringAsync().Result;
                obj = JsonConvert.DeserializeObject<Models.Admin>(data);

            }
            return obj;
        }

        public int UpdateAdmin(Models.Admin obj)
        {
            int flag = 0;
            string data = JsonConvert.SerializeObject(obj);
            StringContent content = new StringContent(data, Encoding.UTF8, "application/json");
            HttpResponseMessage response = cl.PutAsync(cl.BaseAddress + "Admin/AdminUpdate/" + obj.admin_name, content).Result;
            if (response.IsSuccessStatusCode)
            {
                flag = 1;
            }
            return flag; ;

        }
        public List<Models.med_order> OrderReport()
        {
            List<Models.med_order> obj = new List<Models.med_order>();
            HttpResponseMessage response = cl.GetAsync(cl.BaseAddress + "Admin/GenerateRep").Result;
            if (response.IsSuccessStatusCode)
            {
                string data = response.Content.ReadAsStringAsync().Result;
                obj = JsonConvert.DeserializeObject<List<Models.med_order>>(data);

            }

            return obj;
        }

        public List<Models.help> DisplayHelp()
        {
            List<Models.help> obj = new List<Models.help>();
            HttpResponseMessage response = cl.GetAsync(cl.BaseAddress + "Admin/DispHelp").Result;
            if (response.IsSuccessStatusCode)
            {
                string data = response.Content.ReadAsStringAsync().Result;
                obj = JsonConvert.DeserializeObject<List<Models.help>>(data);

            }

            return obj;
        }
        public List<Models.medicine> DisplayMedicine()
        {
            List<Models.medicine> ls = new List<Models.medicine>();

            HttpResponseMessage response = cl.GetAsync(cl.BaseAddress + "Admin/DisplayMedRec").Result;
            if (response.IsSuccessStatusCode)
            {
                string data = response.Content.ReadAsStringAsync().Result;
                ls = JsonConvert.DeserializeObject<List<Models.medicine>>(data);
            }
            return ls;

        }
        public Models.medicine EditMedicine(int mid)
        {

            List<Models.medicine> ls = new List<Models.medicine>();
            HttpResponseMessage response = cl.GetAsync(cl.BaseAddress + "Admin/DisplayMedRec").Result;
            if (response.IsSuccessStatusCode)
            {
                string data = response.Content.ReadAsStringAsync().Result;
                ls = JsonConvert.DeserializeObject<List<Models.medicine>>(data);
            }
            Models.medicine obj = ls.Where(x => x.med_id == mid).FirstOrDefault();
            return obj;
        }
        public int UpdateMed(Models.medicine obj)
        {
            string data = JsonConvert.SerializeObject(obj);
            StringContent content = new StringContent(data, Encoding.UTF8, "application/json");
            HttpResponseMessage response = cl.PutAsync(cl.BaseAddress + "Admin/UpdMed/" + obj.med_id, content).Result;
            if (response.IsSuccessStatusCode)
            {
                return 1;
            }
            return 0;
        }

        public int DeleteMed(int mid)
        {
            int flag=0;
            HttpResponseMessage response = cl.DeleteAsync(cl.BaseAddress + "Admin/DelMed/" + mid).Result;
            if (response.IsSuccessStatusCode)
            {
                flag = 1;
            }
            return flag;
        }

        public int AddMedicine(Models.medicine obj)
        {
            int flag = 0;
            string data = JsonConvert.SerializeObject(obj); 
            StringContent content = new StringContent(data, Encoding.UTF8, "application/json");
            HttpResponseMessage response = cl.PostAsync(cl.BaseAddress + "Admin/AddMed", content).Result;
            if (response.IsSuccessStatusCode)
            {
                flag = 1;
            }

            return flag;
        }
        public int Resolve(int issueid)
        {
            string data = JsonConvert.SerializeObject(issueid);
            StringContent content = new StringContent(data, Encoding.UTF8, "application/json");
            HttpResponseMessage response = cl.PutAsync(cl.BaseAddress + "Admin/HelpStat/"+ issueid,content).Result;
            if (response.IsSuccessStatusCode)
            {            
                return 1;
            }
            return 0;
        }
    }
}