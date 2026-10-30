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
    public partial class Product_View : System.Web.UI.Page
    {
        Class1 clsobj = new Class1();
        
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int totstock = 0;
                
                string s = "select * from ProductTable where product_id=" + Session["product_id"] + "";
                SqlDataReader dr = clsobj.fun_Reader(s);
                while (dr.Read())
                {
                    Image1.ImageUrl = dr["product_image"].ToString();
                    Label1.Text = dr["product_name"].ToString();
                    Label2.Text = dr["product_price"].ToString();
                    Label3.Text = dr["product_description"].ToString();
                    Label4.Text = dr["product_brand"].ToString();
                    totstock = Convert.ToInt32(dr["product_stock"]);
                    
                }
                DropDownList1.Items.Insert(0, new ListItem("-- Select --", ""));
                DropDownList1.Items[0].Selected = true;
                DropDownList1.Items[0].Attributes.Add("disabled", "disabled");
                
                for (int i = 1; i <= totstock; i++)
                {
                    DropDownList1.Items.Add(i.ToString());
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string date = DateTime.Now.ToString("yyyy-MM-dd");

            string s1 = "select * from ProductTable where product_id=" + Session["product_id"] + "";
            SqlDataReader dr = clsobj.fun_Reader(s1);
            decimal pro_price = 0;
            while (dr.Read())
            {
                pro_price = Convert.ToDecimal(dr["product_price"]);
            }
            
            int quantity = Convert.ToInt32(DropDownList1.SelectedItem.Text);
            decimal subtotal = quantity * pro_price;
            string s = "insert into CartTable values(" + Session["reg_id"] + "," + Session["product_id"] + "," + DropDownList1.SelectedItem.Text + ",'" + date + "'," + subtotal + ",1)";
            int i=clsobj.fun_NonQuery(s);
            if (i == 1)
            {
                Label5.Visible = true;
                Label5.Text = "added to cart";
            }
            else
            {
                Label5.Visible = true;
                Label5.Text = "some error occured while adding";
            }
        }

        protected void ViewCartBt_Click(object sender, EventArgs e)
        {
           
                Response.Redirect("View Cart.aspx");
           
        }
    }
}