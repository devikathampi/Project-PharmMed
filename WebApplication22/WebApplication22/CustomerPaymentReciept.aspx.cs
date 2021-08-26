using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication22
{
    public partial class CustomerPaymentReciept : System.Web.UI.Page
    {
        DAL.CustomerDAL CustomerDAL = new DAL.CustomerDAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                List<Models.FinalCart> ls = Session["FinalCartList"] as List<Models.FinalCart>;
                GridView1.DataSource = ls;
                GridView1.DataBind();
                
                Label2.Text = DateTime.Now.ToString();
                int amt = (int)Session["amt"];
                Label3.Text = amt.ToString();
            }
            
        }
    }
}