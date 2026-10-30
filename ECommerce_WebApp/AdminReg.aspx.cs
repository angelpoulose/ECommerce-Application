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
    public partial class Register : System.Web.UI.Page
    {
        Class1 clsobj1 = new Class1();
        SqlConnection con = new SqlConnection(@"server=DESKTOP-7VCI1GB\SQLEXPRESS;database=E-Commerce;integrated security=true");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string s = "select max(reg_id) from LoginTable";
            string max = clsobj1.fun_scalar(s);
            int reg_id = 0;
            if (max == "")
            {
                reg_id = 1;
            }
            else
            {
                int regid = Convert.ToInt32(max);
                reg_id = regid + 1;
            }
                string reg = "insert into AdminTable values(" + reg_id + ",'" + TextBox_AdminName.Text + "'," + TextBox_AdminPhone.Text + "," + TextBox_AdminAge.Text + ",'" + TextBox_AdminEmail.Text + "')";
                int i = clsobj1.fun_NonQuery(reg);
                if (i == 1)
                {
                    string regtologin = "insert into LoginTable values(" + reg_id + ",'" + TextBox_AdminUsername.Text + "','" + TextBox_AdminPassword.Text + "','admin')";
                    int j = clsobj1.fun_NonQuery(regtologin);
                    if(i==1 && j == 1)
                    {
                        Label7.Visible = true;
                        Label7.Text = "Successfully inserted";
                    }
                }
                else
                {
                    Label7.Visible = true;
                    Label7.Text = "Invalid User";
                }
            
        }

        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {
            string s = "select count(reg_id) from LoginTable where user_name='" + TextBox_AdminUsername.Text + "'";
            SqlCommand cmd = new SqlCommand(s, con);
            con.Open();
            string i = cmd.ExecuteScalar().ToString();
            con.Close();
            if (i == "0")
            {
                Label8.Visible = false;
            }
            else
            {
                Label8.Visible = true;
                Label8.Text = "User name already exists, choose another one";
            }
        }
    }
}