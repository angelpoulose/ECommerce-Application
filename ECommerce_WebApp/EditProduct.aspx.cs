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
    public partial class EditProduct : System.Web.UI.Page
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
            string s = "select * from ProductTable";
            DataSet ds = clsobj.fun_DataAdapterUsingDS(s);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            gridBind();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            gridBind();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int row = e.RowIndex;
            int getid = Convert.ToInt32(GridView1.DataKeys[row].Value);
            FileUpload prodimg = (FileUpload)GridView1.Rows[row].FindControl("FileUpload1");
            TextBox proddesc = (TextBox)GridView1.Rows[row].Cells[5].Controls[0];
            TextBox prodprice = (TextBox)GridView1.Rows[row].Cells[6].Controls[0];
            TextBox prodstatus = (TextBox)GridView1.Rows[row].Cells[7].Controls[0];
            TextBox prodstock = (TextBox)GridView1.Rows[row].Cells[8].Controls[0];
            string p = "";
            if (prodimg.HasFile)
            {
                p = "~/ProductImages/" + prodimg.FileName;
                prodimg.SaveAs(Server.MapPath(p));
            }
            string s = "update ProductTable set product_image='" + p + "',Product_description='" + proddesc.Text + "',Product_price="+prodprice.Text+",product_status='" + prodstatus.Text + "',product_stock="+prodstock.Text+" where product_id=" + getid + "";
            int i = clsobj.fun_NonQuery(s);
            GridView1.EditIndex = -1;
            gridBind();

            if (i == 1) Label1.Text = "updated";
            else Label1.Text = "updation failed";
        }
    }
}