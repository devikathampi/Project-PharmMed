using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication22
{
    public partial class CustomerAddtoCart : System.Web.UI.Page
    {
        DAL.CustomerDAL CustomerDAL = new DAL.CustomerDAL();
        List<Models.medicine> ls;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                List<Models.medicine> medfromdb = CustomerDAL.DisplayMeds();
                GridView1.DataSource = medfromdb;
                GridView1.DataBind();


                List<Models.medicine> ls = new List<Models.medicine>();
                Session["Cartlist"] = ls;
            }
            else
            {
                ls = (List<Models.medicine>)Session["Cartlist"];
            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            if (e.CommandName == "add")
            {
                int ind = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = GridView1.Rows[ind];
                Models.medicine obj = new Models.medicine();
                obj.med_id = Convert.ToInt32(row.Cells[0].Text);
                obj.med_name = row.Cells[1].Text;
                obj.manufacturer = row.Cells[2].Text;
                obj.disease = row.Cells[3].Text;
                obj.mfg_date = row.Cells[4].Text;
                obj.exp_date = row.Cells[5].Text;
                obj.cost = Convert.ToInt32(row.Cells[6].Text);
                obj.avail_qty = Convert.ToInt32(row.Cells[7].Text);
                ls.Add(obj);
                Label1.Text = "Item " + obj.med_name + " added to cart";
                Session["Cartlist"] = ls;
                if (ls != null)
                {
                    var cartlist = ls.GroupBy(x => x.med_id).Select(x => new { MedicineID = x.Key, Quantity = x.Distinct().Count() });
                    GridView2.DataSource = cartlist;
                    GridView2.DataBind();
                }
            }
            if (e.CommandName == "remove")
            {
                int ind = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = GridView1.Rows[ind];
                int mid = Convert.ToInt32(row.Cells[0].Text);
                string mname = row.Cells[1].Text;
                Models.medicine obj1 = ls.Where(x => x.med_id == mid).FirstOrDefault();
                ls.Remove(obj1);
                Label1.Text = "Item " + mname + " removed from cart";
                Session["Cartlist"] = ls;
                if (ls != null)
                {
                    var cartlist = ls.GroupBy(x => x.med_id).Select(x => new { MedicineID = x.Key, Quantity = x.Distinct().Count() });
                    GridView2.DataSource = cartlist;
                    GridView2.DataBind();
                }

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("CustomerOrderConfirm.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            List<Models.medicine> medls1 = CustomerDAL.DisplayMeds();
            string med_name = TextBox1.Text.ToString();
            IEnumerable<Models.medicine> medls2 = medls1.Where(x => x.med_name == med_name);
            GridView1.DataSource = medls2;
            GridView1.DataBind();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            List<Models.medicine> medfromdb = CustomerDAL.DisplayMeds();
            GridView1.DataSource = medfromdb;
            GridView1.DataBind();
        }
    }
}