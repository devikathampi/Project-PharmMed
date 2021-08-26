using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication22
{
    public partial class CustomerLogin : System.Web.UI.Page
    {
        DAL.CustomerDAL CustomerDAL = new DAL.CustomerDAL();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            string username = TextBox1.Text.ToString();
            string pwd = TextBox2.Text.ToString();
            Models.Customer obj = CustomerDAL.CustomerLogin(username, pwd);         
            
            if(obj == null)
            {
                Label1.Text = "Login unsuccessfull";
            }
            if (obj != null)
            {
                Session["uname"] = obj.customer_uname.ToString();
                Session["cid"] = obj.customer_id;
                Label1.Text = "Login successfull";
                Response.Redirect("CustomerHome.aspx");
            }
        }

        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("CustomerForgotPW1.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("CustomerRegister.aspx");
        }
    }
}