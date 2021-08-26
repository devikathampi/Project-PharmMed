using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication22
{
    public partial class CustomerHelp : System.Web.UI.Page
    {

        DAL.CustomerDAL dl = new DAL.CustomerDAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            int cid = (int)Session["cid"];
            //int cid = 101;
            int oid = Convert.ToInt32(dl.GetIssueID());
            TextBox1.Text = (oid + 1).ToString();
            TextBox2.Text = cid.ToString();
        }      

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Models.help obj = new Models.help();
            obj.issue_id = Convert.ToInt32(TextBox1.Text);
            obj.customer_id = Convert.ToInt32(TextBox2.Text);
            obj.issue = TextBox3.Text;
            obj.description = TextBox4.Text;
            obj.contact_no = Convert.ToInt32(TextBox5.Text);
            obj.status = "UnResolved";
            int val = dl.Addhelp(obj);
            if(val==1)
            {
                Label1.Text = "Ticket submitted";
            }
            else
            {
                Label1.Text = "Failed";
            }
        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("CustomerViewTickets.aspx");
        }
    }
}