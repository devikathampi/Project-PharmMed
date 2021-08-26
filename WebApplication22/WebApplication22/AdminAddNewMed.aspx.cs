using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication22
{
    public partial class AdminAddNewMed : System.Web.UI.Page
    {
        DAL.AdminDAL AdminDAL = new DAL.AdminDAL();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox8_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Models.medicine obj = new Models.medicine();
            obj.med_id = Convert.ToInt32(TextBox1.Text);
            obj.med_name = TextBox2.Text;
            obj.manufacturer = TextBox3.Text;
            obj.disease = TextBox4.Text;
            obj.mfg_date = TextBox5.Text;
            obj.exp_date = TextBox6.Text;
            obj.cost = Convert.ToInt32(TextBox7.Text);
            obj.avail_qty = Convert.ToInt32(TextBox8.Text);

            int flag = AdminDAL.AddMedicine(obj);
            if(flag ==1)
            {
                Label1.Text = "Item Added to Database";
            }
            else
            {
                Label1.Text = "Medicine ID already exists. Please use another ID";
            }
        }
    }
}