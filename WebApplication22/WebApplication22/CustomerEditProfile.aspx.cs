using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication22
{
    public partial class CustomerEditProfile : System.Web.UI.Page
    {
        
        DAL.CustomerDAL CustomerDAL = new DAL.CustomerDAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                string uname = (string)Session["uname"];

                Models.Customer obj = CustomerDAL.FillCustomer(uname);
                TextBox1.Text = obj.customer_id.ToString();
                TextBox2.Text = obj.customer_uname;
                TextBox3.Text = obj.fname;
                TextBox4.Text = obj.lname;
                TextBox5.Text = obj.customer_pw;
                Label2.Text = obj.secqn;
                TextBox6.Text = obj.secans;
                TextBox7.Text = obj.emailid;
                TextBox8.Text = obj.dob;
                TextBox9.Text = obj.contactno;
                TextBox10.Text = obj.address;
                TextBox12.Text = obj.gender;

                TextBox1.Enabled = false;
               
               
            }
            
        }


        
        protected void Button1_Click1(object sender, EventArgs e)
        {
            Models.Customer customer = new Models.Customer();
            customer.customer_id = Convert.ToInt32(TextBox1.Text);
            customer.customer_uname = TextBox2.Text;
            customer.fname = TextBox3.Text;
            customer.lname = TextBox4.Text;
            customer.customer_pw = TextBox5.Text;
            customer.secans = TextBox6.Text;
            customer.emailid = TextBox7.Text;
            customer.dob = TextBox8.Text;
            customer.contactno = TextBox9.Text;
            customer.address = TextBox10.Text;
            customer.secqn = Label2.Text;
            customer.gender = TextBox12.Text;

            int flag = CustomerDAL.UpdateCustomer(customer);
            if (flag == 1)
            {
                Label1.Text = "Update Successfull";
                //Response.Redirect("CustomerHome.aspx");
            }
            else
            {
                Label1.Text = "Update Failed";
            }

        }

    }
}
