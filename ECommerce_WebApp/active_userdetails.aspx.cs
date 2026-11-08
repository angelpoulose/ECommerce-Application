using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ECommerce_WebApp
{
    public partial class active_userdetails : System.Web.UI.Page
    {
        Class1 clsobj = new Class1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) gridbind();
        }
        public void gridbind()
        {
            string s = "select * from usertable where user_status='active'";
            DataSet ds = clsobj.fun_DataAdapterUsingDS(s);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void Button1_Command(object sender, CommandEventArgs e)
        {
            int user_id = Convert.ToInt32(e.CommandArgument);
            string s = "update UserTable set user_status='inactive' where user_id=" + user_id + "";
            int i = clsobj.fun_NonQuery(s);
            if (i == 1) ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('updated!')", true);
            else ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('not updated!')", true);
            gridbind();
        }
    }
}