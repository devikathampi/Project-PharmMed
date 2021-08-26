using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication22
{
    public partial class AdminDeleteMed : System.Web.UI.Page
    {
        DAL.AdminDAL AdminDAL = new DAL.AdminDAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                int mid = ((int)Session["var"]);

                Models.medicine obj = AdminDAL.EditMedicine(mid);
                Label1.Text = obj.med_id.ToString();
                Label2.Text = obj.med_name;
                Label3.Text = obj.manufacturer;
                Label4.Text = obj.disease;
                Label5.Text = obj.cost.ToString();

            }

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            int mid = Convert.ToInt32(Label1.Text);
            int flag = AdminDAL.DeleteMed(mid);
            if(flag==1)
            {
                Label6.Text = "Item Deleted";
            }
            else
            {
                Label6.Text = "Error! Try Again";
            }
        }
    }
}