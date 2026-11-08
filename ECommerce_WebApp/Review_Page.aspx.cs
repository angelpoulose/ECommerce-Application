using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ECommerce_WebApp
{
    public partial class Review_Page : System.Web.UI.Page
    {
        Class1 clsobj = new Class1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string dt = DateTime.Now.ToString("yyyy-MM-dd");
            string s = "insert into FeedbackTable values(" + Session["reg_id"] + "," + Session["pro_id"] + ",'" + feedbackmsgtb.Text + "','null','" + dt + "','active')";
            int i = clsobj.fun_NonQuery(s);
            if (i == 1)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('review submitted!')", true);
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('error in submitting!')", true);
            }
        }
    }
}