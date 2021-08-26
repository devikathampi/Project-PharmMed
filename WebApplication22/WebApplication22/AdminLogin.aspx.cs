using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication22
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        DAL.AdminDAL AdminDAL = new DAL.AdminDAL();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminForgotPW1.aspx");

        }

        protected void LinkButton2_Click1(object sender, EventArgs e)
        {
            Response.Redirect("AdminRegister.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string username = TextBox1.Text.ToString();
            string pwd = TextBox2.Text.ToString();
            Models.Admin obj = AdminDAL.AdminLogin(username, pwd);
            
            if (obj != null)
            {
                Session["a_uname"] = obj.admin_name.ToString();
                Label1.Text = "Login successfull";
                Response.Redirect("AdminHomepage.aspx");
            }
            else
            {
                Label1.Text = "Login unsuccessfull";
            }
        }
    }
}