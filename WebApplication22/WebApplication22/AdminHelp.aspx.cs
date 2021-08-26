using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication22
{
    public partial class AdminHelp : System.Web.UI.Page
    {
        DAL.AdminDAL AdminDAL = new DAL.AdminDAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                IEnumerable<Models.help> help1 = AdminDAL.DisplayHelp();
                GridView1.DataSource = help1;
                GridView1.DataBind();

                foreach(Models.help x in help1)
                {
                    DropDownList1.Items.Add(x.issue_id.ToString());
                }
                
            }

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int flag = AdminDAL.Resolve(Convert.ToInt32(DropDownList1.Text));
            if(flag==1)
            {
                Label1.Text = "Issue marked as Resolved";
            }
            else
            {
                Label1.Text = "Couldnt Resolve Issue";
            }
        }
    }
}