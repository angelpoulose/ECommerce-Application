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
    public partial class ProductInsertion : System.Web.UI.Page
    {
        Class1 csobj = new Class1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string s = "select cat_id,cat_name from CategoryTable where cat_status='available'";
                DataSet ds = csobj.fun_DataAdapterUsingDS(s);
                DropDownList_Category.DataSource = ds;
                DropDownList_Category.DataTextField = "cat_name";
                DropDownList_Category.DataValueField = "cat_id";
                DropDownList_Category.DataBind();
            }
           
        }

        
        protected void Button1_Click(object sender, EventArgs e)
        {
            string p = "~/ProductImages/" + FileUp_prod_image.FileName;
            FileUp_prod_image.SaveAs(MapPath(p));

            string prod_ins = "insert into ProductTable values(" + DropDownList_Category.SelectedItem.Value + ",'" + TextBox_Prod_Name.Text + "','" + p + "','" + TextBox_prod_desc.Text + "'," + TextBox_Prod_price.Text + ",'" + TextBox_Prod_Brand.Text + "','available',"+TextBox_Prod_Stock.Text+")";
            
            int i = csobj.fun_NonQuery(prod_ins);
            if (i == 1) Label_Prod_Insertion.Text = "successfully inserted";
            else Label_Prod_Insertion.Text = "insertion failed";
        }
    }
}