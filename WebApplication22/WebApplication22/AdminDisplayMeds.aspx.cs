using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication22
{
    public partial class AdminDisplayMeds : System.Web.UI.Page
    {
        DAL.AdminDAL AdminDAL = new DAL.AdminDAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                List<Models.medicine> medfromdb = AdminDAL.DisplayMedicine();
                GridView1.DataSource = medfromdb;
                GridView1.DataBind();
            }

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "edit")
            {
                int ind = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = GridView1.Rows[ind];
                int mid = Convert.ToInt32(row.Cells[0].Text);
                Session["var"] = mid;
                Response.Redirect("AdminUpdateMed.aspx");
            }
            if (e.CommandName == "delete")
            {
                int ind = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = GridView1.Rows[ind];
                int mid = Convert.ToInt32(row.Cells[0].Text);
                Session["var"] = mid;
                Response.Redirect("AdminDeleteMed.aspx");
            }
        }

        protected void NewButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminAddNewMed.aspx");
        }
    }
}
