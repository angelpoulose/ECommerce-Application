using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ECommerce_WebApp
{
    public partial class InsertAccount : System.Web.UI.Page
    {
        Class1 objcls = new Class1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string s = "insert into AccountTable values (" + Session["reg_id"] + ",'" + accname_tb.Text + "','" + acc_type_tb.Text + "'," + acc_num_tb.Text + "," + acc_bal_tb.Text + ") ";
            int i = objcls.fun_NonQuery(s);
            if(i==1)
            {
                ClientScript.RegisterStartupScript(
           this.GetType(),
           "alert",
           "alert('Account added');",
           true
       );
            }
            else
            {
                ClientScript.RegisterStartupScript(
           this.GetType(),
           "alert",
           "alert('Couldn't add Account');",
           true
       );
            }
        }

        protected void acc_num_tb_TextChanged(object sender, EventArgs e)
        {
            string s = "select Account_id from AccountTable where Acc_number=" + acc_num_tb.Text + " and user_id="+Session["reg_id"]+"";
            string i = objcls.fun_scalar(s);
            if (i == "") valid_ac_num.Visible = false;
            else
            {
                valid_ac_num.Visible = true;
                valid_ac_num.Text = "Account number already exists, choose another account";
            }
        }
    }
}