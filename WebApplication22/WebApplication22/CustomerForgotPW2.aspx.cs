using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication22
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        DAL.CustomerDAL CustomerDAL = new DAL.CustomerDAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie obj1 = Request.Cookies["user"];
            string username = obj1.Value.ToString();
            Label1.Text = "Hello " + username;
            string secqn = CustomerDAL.GenerateSecurityQn_Cust(username);
            Label2.Text = secqn;

        }

      
        protected void Button1_Click1(object sender, EventArgs e)
        {
            //HttpCookie obj;
            //obj = Request.Cookies["user"];
            HttpCookie obj1 = Request.Cookies["user"];
            string username = obj1.Value.ToString();
            string secans = TextBox1.Text;
            string customer_pw = CustomerDAL.GeneratePassword(username, secans);
            //string pw = "Your password is " + customer_pw;
            if (customer_pw != null)
            {
                Label3.Text = "Your password is " + customer_pw;
            }
            else
            {
                Label3.Text = "Please enter correct answer.";
            }
            //Label3.Text = pw.ToString();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("CustomerLogin.aspx");
        }
    }
}