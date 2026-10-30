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
    public partial class View_Category : System.Web.UI.Page
    {
        Class1 clsobj = new Class1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                    gridBind();
            }
        }

        public void gridBind()
        {
            string s = "select cart.*,pro.product_name,pro.product_image,pro.product_price,cart.cart_subtotal as sub_Total from CartTable as cart join ProductTable as pro on cart.product_id=pro.product_id where cart.user_id=" + Session["reg_id"] + " and cart_status=1";
            DataTable dt = clsobj.fun_DataAdapterUsingDT(s);
            GridView_Cart.DataSource = dt;
            GridView_Cart.DataBind();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int row = e.RowIndex;
            int getid = Convert.ToInt32(GridView_Cart.DataKeys[row].Value);
            TextBox pro_qua = (TextBox)GridView_Cart.Rows[row].Cells[5].Controls[0];
            string upd = "UPDATE CartTable SET quantity = " + pro_qua.Text +
             ", cart_subtotal = " + pro_qua.Text + " * pro.Product_price " +
             "FROM CartTable AS cart " +
             "JOIN ProductTable AS pro ON cart.product_id = pro.product_id " +
             "WHERE cart.Cart_id = " + getid;

            int i = clsobj.fun_NonQuery(upd);
            if (i == 1)
            {
                Upd_Label.Visible = true;
                Upd_Label.Text = "updated successfully";
            }
            else
            {
                Upd_Label.Visible = true;
                Upd_Label.Text = "Updation Unsuccessfull";
            }

            GridView_Cart.EditIndex = -1;
            gridBind();
        }

        protected void GridView_Cart_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView_Cart.EditIndex = e.NewEditIndex;
            gridBind();
        }

        protected void GridView_Cart_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView_Cart.EditIndex = -1;
            gridBind();
        }

        protected void GridView_Cart_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int row = e.RowIndex;
            int getid= Convert.ToInt32(GridView_Cart.DataKeys[row].Value);
            string del = "DELETE FROM CartTable WHERE Cart_id = " + getid +
                 " AND user_id = " + Session["reg_id"];
            int i = clsobj.fun_NonQuery(del);
            if (i == 1)
            {
                Upd_Label.Visible = true;
                Upd_Label.Text = "Deleted successfully";
            }
            else
            {
                Upd_Label.Visible = true;
                Upd_Label.Text = "Deleted successfully";
            }

            gridBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string s = "select product_id from CartTable where user_id=" + Session["reg_id"] + " and cart_status=1";
            SqlDataReader dr = clsobj.fun_Reader(s);
            List<int> pidlist = new List<int>();
            while (dr.Read())
            {
                pidlist.Add(Convert.ToInt32(dr["product_id"]));
            }
            foreach(int pid in pidlist)
            {
                string dt = DateTime.Now.ToString("yyyy-MM-dd");
                string s1 = "select quantity,cart_subtotal from CartTable where product_id=" + pid + " and cart_status=1";
                SqlDataReader dr2 = clsobj.fun_Reader(s1);
                int quan = 0;
                decimal subtotal = 0;
                while (dr2.Read())
                {
                    quan = Convert.ToInt32(dr2["quantity"]);
                    subtotal = Convert.ToDecimal(dr2["cart_subtotal"]);
                }
                string ordIns = "insert into OrderTable (user_id,product_id,order_quantity,order_subtotal,order_status,order_date) values(" + Session["reg_id"] + "," + pid + "," + quan + "," + subtotal + ",'order','" + dt + "')";
                int i = clsobj.fun_NonQuery(ordIns);
                string upCart = "update CartTable set cart_status=0 where user_id=" + Session["reg_id"] + " and product_id=" + pid + " and cart_status=1";
                int j = clsobj.fun_NonQuery(upCart);
                if(i==1 && j==1)
                {
                    Panel1.Visible = true;
                }
                else Upd_Label.Text = "order unsuccess";

                
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string dt = DateTime.Now.ToString("yyyy-MM-dd");
            string grandtotal = "select sum(order_subtotal) from OrderTable where user_id=" + Session["reg_id"] + " and order_status='order' and bill_id is null";
            decimal grandtot = Convert.ToDecimal(clsobj.fun_scalar(grandtotal));
            string InsBill = "insert into InvoiceTable values(" + Session["reg_id"] + "," + grandtot + ",'" + paymentModeRB.SelectedItem.Text + "','not paid','" + dt + "'); select SCOPE_IDENTITY();";
            string bill_id = clsobj.fun_scalar(InsBill);
            string upOrder = "update OrderTable set bill_id=" + bill_id + " where user_id=" + Session["reg_id"] + " and order_status='order' and bill_id is null";
            int i = clsobj.fun_NonQuery(upOrder);
            if (i > 0)
            {
                Session["bill_id"] = bill_id;
                Response.Redirect("View Bill.aspx");
            }
            else Upd_Label.Text = "insertion failed";

        }

        
    }
}
