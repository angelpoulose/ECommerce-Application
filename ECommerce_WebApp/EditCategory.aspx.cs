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
    public partial class EditCategory : System.Web.UI.Page
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
            string s = "select * from CategoryTable";
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
            int getid = Convert.ToInt32(GridView1.DataKeys[0].Value);
            FileUpload catimg = (FileUpload)GridView1.Rows[row].FindControl("FileUpload1");
            TextBox catdesc = (TextBox)GridView1.Rows[row].Cells[4].Controls[0];
            TextBox catstatus = (TextBox)GridView1.Rows[row].Cells[5].Controls[0];
            string p = "";
            if (catimg.HasFile)
            {
                p = "~/CategoryImages/" + catimg.FileName;
                catimg.SaveAs(Server.MapPath(p));
            }
            string s = "update CategoryTable set cat_image='"+p+ "',cat_description='" + catdesc.Text+"',cat_status='"+catstatus.Text+"' where cat_id="+getid+"";
            int i = clsobj.fun_NonQuery(s);
            GridView1.EditIndex = -1;
            gridBind();

            if (i == 1) Label1.Text = "updated";
            else Label1.Text = "updation failed";

        }
    }
}