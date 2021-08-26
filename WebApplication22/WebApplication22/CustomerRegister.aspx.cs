using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication22
{
    public partial class AdminRegister : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            
        }

        Models.Customer customer = new Models.Customer();
        DAL.CustomerDAL CustomerDAL = new DAL.CustomerDAL();
        

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            customer.customer_id = Convert.ToInt32(TextBox1.Text);
            customer.customer_uname = TextBox2.Text;
            customer.fname = TextBox3.Text;
            customer.lname = TextBox4.Text;
            customer.customer_pw = TextBox5.Text;
            if (RadioButton3.Checked == true)
            {
                //string qn = "What is the name of your school?";
                customer.secqn = RadioButton3.Text;
            }
            else if (RadioButton4.Checked == true)
            {
                //string qn = "What is the name of your Favourite movie?";
                customer.secqn = RadioButton4.Text;
            }
            else if (RadioButton5.Checked == true)
            {
                //string qn = "What is the name of your first pet?";
                customer.secqn = RadioButton5.Text;
            }


            customer.secans = TextBox6.Text;
            customer.emailid = TextBox7.Text;
            customer.dob = TextBox8.Text;
            customer.contactno = TextBox9.Text;
            customer.address = TextBox10.Text;
            if (RadioButton1.Checked == true)
            {
                customer.gender = "Female";
            }
            else if (RadioButton2.Checked == true)
            {
                customer.gender = "Male";
            }

            int flag = CustomerDAL.CustomerRegister(customer);
            if (flag == 1)
            {
                Label1.Text = "Registration Successfull. Login Now";
                //Response.Redirect("CustomerLogin.aspx");
            }
            else
            {
                Label1.Text = "Registration Failed";
            }

        }

        protected void RadioButton5_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButton4_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButton3_CheckedChanged(object sender, EventArgs e)
        {

        }
    }
}