using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication22
{
    public partial class AdminRegister1 : System.Web.UI.Page
    {
        
        DAL.AdminDAL AdminDAL = new DAL.AdminDAL();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButton3_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButton4_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButton5_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Models.Admin obj = new Models.Admin();
            obj.admin_id = Convert.ToInt32(TextBox1.Text);
            obj.admin_name = TextBox2.Text;
            obj.admin_pw = TextBox5.Text;
            if (RadioButton3.Checked == true)
            {
                //string qn = "What is the name of your school?";
                obj.secqn = RadioButton3.Text;
            }
            else if (RadioButton4.Checked == true)
            {
                //string qn = "What is the name of your Favourite movie?";
                obj.secqn = RadioButton4.Text;
            }
            else if (RadioButton5.Checked == true)
            {
                //string qn = "What is the name of your first pet?";
                obj.secqn = RadioButton5.Text;
            }
            obj.secans = TextBox6.Text;
            obj.emailid = TextBox7.Text;
            obj.dob = TextBox8.Text;
            if (RadioButton1.Checked == true)
            {
                obj.gender = "Female";
            }
            else if (RadioButton2.Checked == true)
            {
                obj.gender = "Male";
            }

            int flag = AdminDAL.AdminRegister(obj);
            if (flag == 1)
            {
                Label1.Text = "Registration Successfull. Login Now";
                //Response.Redirect("AdminLogin.aspx");
            }
            else
            {
                Label1.Text = "Registration Failed. Admin ID should be unqiue. Please try again";
            }
        }
    }
}