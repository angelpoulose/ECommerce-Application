using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ECommerce_WebApp
{
    public partial class Profile_display : System.Web.UI.Page
    {
        Class1 clsobj = new Class1();
        protected void Page_Load(object sender, EventArgs e)
        {
            string s = "select * from UserTable where user_id=" + Session["reg_id"] + "";
            SqlDataReader dr = clsobj.fun_Reader(s);
            while (dr.Read())
            {
                namelb.Text = dr["user_name"].ToString();
                namelb2.Text = dr["user_name"].ToString();
                agelb.Text = dr["user_age"].ToString();
                addresslb.Text = dr["address"].ToString();
                genderlb.Text = dr["user_gender"].ToString();
                emaillb.Text = dr["user_email"].ToString();
                emaillb2.Text = dr["user_email"].ToString();
                phonelb.Text = dr["user_phone"].ToString();
                userphoto.ImageUrl = dr["user_photo"].ToString();
                
                
            }
        }
    }
}