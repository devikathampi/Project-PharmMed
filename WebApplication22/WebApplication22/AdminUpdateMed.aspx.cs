using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication22
{
    public partial class AdminUpdateMed : System.Web.UI.Page
    {
        DAL.AdminDAL AdminDAL = new DAL.AdminDAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                int mid = ((int)Session["var"]);

                Models.medicine obj = AdminDAL.EditMedicine(mid);
                TextBox1.Text = Convert.ToString(obj.med_id);
                TextBox2.Text = obj.med_name;
                TextBox3.Text = obj.manufacturer;
                TextBox4.Text = obj.disease;
                TextBox5.Text = obj.mfg_date;
                TextBox6.Text = obj.exp_date;
                TextBox7.Text = Convert.ToString(obj.cost);
                TextBox8.Text = Convert.ToString(obj.avail_qty);
                TextBox1.Enabled = false;
            }
                   
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

            int flag = AdminDAL.UpdateMed(obj);
            if (flag == 1)
            {
                Label1.Text = "Successfully Updated";
            }
            else
            {
                Label1.Text = "Error! Try Again";
            }
        }
    }
}