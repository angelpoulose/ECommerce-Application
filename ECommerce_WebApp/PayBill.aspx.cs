using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace ECommerce_WebApp
{
    public partial class PayBill : System.Web.UI.Page
    {
        Class1 objcls = new Class1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string s = "select * from AccountTable where user_id=" + Session["reg_id"] + "";
                DataSet ds = objcls.fun_DataAdapterUsingDS(s);
                DD_SelectAcc.DataSource = ds;
                DD_SelectAcc.DataTextField = "Acc_number";
                DD_SelectAcc.DataValueField = "Account_id";
                DD_SelectAcc.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            balanceservice.ServiceClient obj = new balanceservice.ServiceClient();
            int acc_no = Convert.ToInt32(DD_SelectAcc.SelectedItem.Text);
            decimal balance = obj.Balance(acc_no);
            decimal gr_total = Convert.ToDecimal(Session["grand_total"]);
            if (balance < gr_total)
            {
                ClientScript.RegisterStartupScript(
           this.GetType(),
           "alert",
           "alert('Insufficient balance');",
           true
       );
            }
            else
            {
                int i = obj.updateBalance(balance, gr_total, Convert.ToInt32(DD_SelectAcc.SelectedItem.Text),Convert.ToInt32(Session["reg_id"]));
                if(i==1)
                {
                    string upd_BillStatus = "update InvoiceTable set status='paid' where user_id=" + Session["reg_id"] + " and bill_id=" + Session["bill_id"] + "";
                    int up_bilSt = objcls.fun_NonQuery(upd_BillStatus);
                    if (up_bilSt == 1)
                    {
                        string s = "select product_id from OrderTable where user_id=" + Session["reg_id"] + " and bill_id=" + Session["bill_id"] + " and order_status='order'";
                        SqlDataReader dr = objcls.fun_Reader(s);
                        List<int> pidlist = new List<int>();
                        while (dr.Read())
                        {
                            pidlist.Add(Convert.ToInt32(dr["product_id"]));
                        }
                        foreach (int pid in pidlist)
                        {

                            string s1 = "update OrderTable set order_status='paid' where user_id=" + Session["reg_id"] + " and bill_id=" + Session["bill_id"] + " and product_id=" + pid + "";
                            int up_ord = objcls.fun_NonQuery(s1);
                            if (up_ord == 1)
                            {
                                string prod_details = "select pro.product_stock,o.order_quantity from ProductTable as pro join OrderTable as o on pro.product_id=o.product_id where o.user_id="+Session["reg_id"]+" and o.bill_id="+Session["bill_id"]+" and o.product_id="+pid+"";
                                SqlDataReader dr2 = objcls.fun_Reader(prod_details);
                                int quantity = 0;
                                int stock = 0;
                                while (dr2.Read())
                                {
                                    quantity = Convert.ToInt32(dr2["order_quantity"]);
                                    stock= Convert.ToInt32(dr2["product_stock"]);
                                }
                                string up_stock_cmd = "update ProductTable set product_stock=" + stock + "-" + quantity + " where product_id=" + pid + "";
                                int up_stock = objcls.fun_NonQuery(up_stock_cmd);
                                if (up_stock == 1)
                                {
                                    ClientScript.RegisterStartupScript(
                                    this.GetType(),
                                    "alert",
                                    "alert('Hurray! Payment Successfull, Order Confirmed');",
                                     true);
                                }
                            }
                        }  
                    }
                }
                else
                {
                    ClientScript.RegisterStartupScript(
           this.GetType(),
           "alert",
           "alert('Payment not successfull');",
           true
       );
                }
            }
        }
    }
}
