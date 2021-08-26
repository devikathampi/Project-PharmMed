using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication22
{
    public partial class AdminForgotPW2 : System.Web.UI.Page
    {
        DAL.AdminDAL AdminDAL = new DAL.AdminDAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie obj1 = Request.Cookies["user"];
            string username = obj1.Value.ToString();
            Label1.Text = "Hello " + username;
            string secqn = AdminDAL.GenerateSecurityQn_Cust(username);
            Label2.Text = secqn;
        }

     
        protected void Button1_Click1(object sender, EventArgs e)
        {
            HttpCookie obj1 = Request.Cookies["user"];
            string username = obj1.Value.ToString();
            string secans = TextBox1.Text;
            string admin_pw = AdminDAL.GeneratePassword(username, secans);
            if(admin_pw != null)
            {
                Label3.Text = "Your password is " + admin_pw;
            }
            else
            {
                Label3.Text = "Please enter correct answer.";
            }
            
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminLogin.aspx");
        }
    }
}