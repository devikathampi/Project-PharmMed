using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication22
{
    public partial class CustomerViewOrders : System.Web.UI.Page
    {
        DAL.AdminDAL AdminDAL = new DAL.AdminDAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            int cid = (int)Session["cid"];
            IEnumerable<Models.med_order> order = AdminDAL.OrderReport();
            IEnumerable<Models.med_order> ls = order.Where(x => x.customer_id == cid);
            GridView1.DataSource = ls;
            GridView1.DataBind();
        }
    }
}