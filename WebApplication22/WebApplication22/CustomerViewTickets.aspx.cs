using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication22
{
    public partial class CustomerViewTickets : System.Web.UI.Page
    {
        DAL.AdminDAL AdminDAL = new DAL.AdminDAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                int cid = (int)Session["cid"];
                IEnumerable<Models.help> help1 = AdminDAL.DisplayHelp();
                IEnumerable<Models.help> help2 = help1.Where(x => x.customer_id == cid);
                GridView1.DataSource = help2;
                GridView1.DataBind();
            }
        }
    }
}