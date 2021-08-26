using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication22
{
    public partial class AdminEditProfile : System.Web.UI.Page
    {
        DAL.AdminDAL AdminDAL = new DAL.AdminDAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                string uname = (string)Session["a_uname"];

                Models.Admin obj = AdminDAL.FillAdmin(uname);
                TextBox1.Text = obj.admin_id.ToString();
                TextBox2.Text = obj.admin_name;
                TextBox3.Text = obj.admin_pw;
                Label2.Text = obj.secqn;
                TextBox4.Text = obj.secans;
                TextBox5.Text = obj.emailid;
                TextBox6.Text = obj.dob.ToString();
                TextBox7.Text = obj.gender;
                //Label1.Text = "Status";
                TextBox1.Enabled = false;
            }
            

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Models.Admin obj = new Models.Admin();
            obj.admin_id = Convert.ToInt32(TextBox1.Text);
            obj.admin_name = TextBox2.Text;
            obj.admin_pw = TextBox3.Text;
            obj.secqn = Label2.Text;
            obj.secans = TextBox4.Text;
            obj.emailid = TextBox5.Text;
            obj.dob = TextBox6.Text;
            obj.gender = TextBox7.Text;
            int flag = AdminDAL.UpdateAdmin(obj);
            if (flag == 1)
            {
                Label1.Text = "Update Successfull";
            }
            else
            {
                Label1.Text = "Update Failed";
            }
        }
    }
}