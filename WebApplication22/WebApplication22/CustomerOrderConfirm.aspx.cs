using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication22
{
    public partial class CustomerOrderConfirm : System.Web.UI.Page
    {
        DAL.CustomerDAL CustomerDAL = new DAL.CustomerDAL();
        int amount_payable;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["CartList"] != null)
            {
                List<Models.medicine> ls = Session["CartList"] as List<Models.medicine>;               
                var cartlist = ls.GroupBy(x => x.med_id).Select(x => new { MedicineID= x.Key, Quantity = x.Distinct().Count() });              
                amount_payable = 0;
                List<Models.FinalCart> FinalCartls = new List<Models.FinalCart>();
                foreach (var x in cartlist)
                {
                    Models.FinalCart obj = new Models.FinalCart();
                    obj.med_id = x.MedicineID;
                    var prod = CustomerDAL.GetMedsForCart(x.MedicineID);
                    obj.med_name = prod.med_name.ToString();
                    obj.price = Convert.ToInt32(prod.cost);
                    obj.quantity = x.Quantity;
                    obj.total_price = x.Quantity * obj.price;
                    FinalCartls.Add(obj);
                    amount_payable = amount_payable + obj.total_price;
                }
                GridView1.DataSource = FinalCartls;
                GridView1.DataBind();
                Session["FinalCartList"] = FinalCartls;
                Label1.Text = " " + amount_payable.ToString();
                Session["amt"] = amount_payable;
            }
            if(!Page.IsPostBack)
            {
                DropDownList1.Items.Add("UPI");
                DropDownList1.Items.Add("Net Banking");
                DropDownList1.Items.Add("Cash on Delivery");
            }
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }


        protected void Button1_Click1(object sender, EventArgs e)
        {
            int c_id = (int)Session["cid"];
            Models.med_order order = new Models.med_order();
            int oid = CustomerDAL.GetOrderID();
            order.order_id = oid + 1;
            order.customer_id = c_id; //fetch value from session variable
            string value = null;
            foreach (GridViewRow row in GridView1.Rows)
            {
                value = value + " " + row.Cells[0].Text;
            }
            order.med_id = value;
            order.amount = amount_payable;
            order.mode_of_payment = DropDownList1.Text;
            order.order_date = DateTime.Now.ToString();
            int val = CustomerDAL.AddOrder(order);
            if (val == 1)
            {
                Response.Redirect("CustomerPaymentReciept.aspx");
            }
            else
            {
                Label2.Text = "Payment Failed. Try Again";
            }
            Session["order_id"] = order.order_id;
        }
    }
}