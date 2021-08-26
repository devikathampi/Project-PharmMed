using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication22
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        
        protected void Button1_Click1(object sender, EventArgs e)
        {
            string username = TextBox1.Text;
            HttpCookie obj1 = new HttpCookie("user");
            obj1.Value = username;
            Response.Cookies.Add(obj1);
            Response.Redirect("CustomerForgotPW2.aspx");

        }
    }
}

