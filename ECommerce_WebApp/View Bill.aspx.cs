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
    public partial class View_Bill : System.Web.UI.Page
    {
        Class1 objcls = new Class1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string s = "select bill.bill_id,usr.user_name,usr.address,usr.user_Phone,product.product_id,product.product_name,product.product_image,ord.order_quantity,product.product_price,ord.order_subtotal,bill.Grand_Total from ProductTable as product join OrderTable as ord on product.product_id=ord.product_id join InvoiceTable as bill on ord.bill_id=bill.bill_id join UserTable as usr on bill.user_id=usr.user_id WHERE usr.user_id = " + Session["reg_id"] + " and bill.bill_id=" + Session["bill_id"] + "";
                DataSet ds = objcls.fun_DataAdapterUsingDS(s);
                GridView1.DataSource = ds;
                GridView1.DataBind();

                SqlDataReader dr = objcls.fun_Reader(s);
                string date = DateTime.Now.ToString("yyyy-MM-dd");
                while (dr.Read())
                {
                    billnoLabel.Text = dr["bill_id"].ToString();
                    Session["bill_id"] = dr["bill_id"];
                    Label_billDate.Text = date;
                    Label_userName.Text= dr["user_name"].ToString();
                    Label_Address.Text= dr["address"].ToString();
                    Label_phone.Text= dr["user_Phone"].ToString();
                    label_subtotal.Text= dr["Grand_Total"].ToString();
                    Total_Label.Text= dr["Grand_Total"].ToString();
                    Session["grand_total"]= dr["Grand_Total"];
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string s = "select Account_id from AccountTable where user_id=" + Session["reg_id"] + "";
            string i = objcls.fun_scalar(s);
            if (i == "") {
                Response.Redirect("InsertAccount.aspx");
            }
            else
            {
                Response.Redirect("PayBill.aspx");
            }
        }
    }
}
