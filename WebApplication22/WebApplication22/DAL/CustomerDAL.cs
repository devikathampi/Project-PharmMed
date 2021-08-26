using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Web;

namespace WebApplication22.DAL
{
    public class CustomerDAL
    {
        Uri baseaddress = new Uri("https://localhost:44334/api/"); //Give url of your web api for testing
        HttpClient cl;

        public CustomerDAL()
        {
            cl = new HttpClient();
            cl.BaseAddress = baseaddress;
        }
        public int CustomerRegister(Models.Customer customer)
        {
            int flag = 0;
            string data = JsonConvert.SerializeObject(customer); // Install Newtonsoft.Json pkg
            StringContent content = new StringContent(data, Encoding.UTF8, "application/json");
            HttpResponseMessage response = cl.PostAsync(cl.BaseAddress + "Customer/CustomerRegister", content).Result;
            if (response.IsSuccessStatusCode)
            {
                flag = 1;
            }

            return flag;

        }
        public Models.Customer CustomerLogin(string username, string pwd)
        {
            Models.Customer obj = new Models.Customer();
            HttpResponseMessage response = cl.GetAsync(cl.BaseAddress + "Customer/CustomerLogin/" + username + "/" + pwd).Result;
            if (response.IsSuccessStatusCode)
            {
                string data = response.Content.ReadAsStringAsync().Result;
                obj = JsonConvert.DeserializeObject<Models.Customer>(data);

            }
            else
            {
                obj = null;
            }

            return obj;
        }

        public string GenerateSecurityQn_Cust(string username)
        {
            string obj = "Error";
            HttpResponseMessage response = cl.GetAsync(cl.BaseAddress + "Customer/CustomerForgotPW1/" + username).Result;
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
            HttpResponseMessage response = cl.GetAsync(cl.BaseAddress + "Customer/CustomerForgotPW2/" + username + "/" + secans).Result;
            if (response.IsSuccessStatusCode)
            {
                string data = response.Content.ReadAsStringAsync().Result;
                obj = JsonConvert.DeserializeObject<string>(data);

            }

            return obj;
        }
        public Models.Customer FillCustomer(string uname)
        {
            Models.Customer obj = new Models.Customer();
            HttpResponseMessage response = cl.GetAsync(cl.BaseAddress + "Customer/FillCustomer/" + uname).Result;
            if (response.IsSuccessStatusCode)
            {
                string data = response.Content.ReadAsStringAsync().Result;
                obj = JsonConvert.DeserializeObject<Models.Customer>(data);

            }

            return obj;
        }

        public int UpdateCustomer(Models.Customer obj)
        {
            int flag =0;
            string data = JsonConvert.SerializeObject(obj);
            StringContent content = new StringContent(data, Encoding.UTF8, "application/json");
            HttpResponseMessage response = cl.PutAsync(cl.BaseAddress + "Customer/CustomerUpdate/" + obj.customer_uname, content).Result;
            if (response.IsSuccessStatusCode)
            {
                flag = 1;
            }
            return flag; ;

        }

        public List<Models.medicine> DisplayMeds()
        {
            List<Models.medicine> obj = new List<Models.medicine>();
            HttpResponseMessage response = cl.GetAsync(cl.BaseAddress + "Customer/DisplayMeds").Result;
            if (response.IsSuccessStatusCode)
            {
                string data = response.Content.ReadAsStringAsync().Result;
                obj = JsonConvert.DeserializeObject<List<Models.medicine>>(data);

            }

            return obj;
        }
        public Models.medicine GetMedsForCart(int medid)
        {
            List<Models.medicine> obj = new List<Models.medicine>();
            HttpResponseMessage response = cl.GetAsync(cl.BaseAddress + "Customer/DisplayMeds").Result;
            if (response.IsSuccessStatusCode)
            {
                string data = response.Content.ReadAsStringAsync().Result;
                obj = JsonConvert.DeserializeObject<List<Models.medicine>>(data);

            }
            var obj1 = obj.Where(x => x.med_id == medid).FirstOrDefault();
            return obj1;
        }

        public int GetOrderID()
        {
            int id = 0;
            List<Models.med_order> obj = new List<Models.med_order>();
            HttpResponseMessage response = cl.GetAsync(cl.BaseAddress + "Admin/GenerateRep").Result;
            if (response.IsSuccessStatusCode)
            {
                string data = response.Content.ReadAsStringAsync().Result;
                obj = JsonConvert.DeserializeObject<List<Models.med_order>>(data);
                id = obj[obj.Count - 1].order_id;
            }

            return id;
        }
        public int GetIssueID()
        {
            int id = 0;
            List<Models.help> obj = new List<Models.help>();
            HttpResponseMessage response = cl.GetAsync(cl.BaseAddress + "Admin/DispHelp").Result;
            if (response.IsSuccessStatusCode)
            {
                string data = response.Content.ReadAsStringAsync().Result;
                obj = JsonConvert.DeserializeObject<List<Models.help>>(data);
                id = obj[obj.Count - 1].issue_id;
            }

            return id;
        }

        public int AddOrder(Models.med_order obj)
        {
            int val = 0;
            string data = JsonConvert.SerializeObject(obj);
            StringContent content = new StringContent(data, Encoding.UTF8, "application/json");
            HttpResponseMessage response = cl.PostAsync(cl.BaseAddress + "Customer/AddOrder", content).Result;
            if (response.IsSuccessStatusCode)
            {
                val = 1;
            }
            return val;
        }

        public int Addhelp(Models.help obj)
        {
            int val = 0;
            string data = JsonConvert.SerializeObject(obj);
            StringContent content = new StringContent(data, Encoding.UTF8, "application/json");
            HttpResponseMessage response = cl.PostAsync(cl.BaseAddress + "Customer/CustomerHelp", content).Result;
            if (response.IsSuccessStatusCode)
            {
                val = 1;
            }
            return val;
        }
    }
}