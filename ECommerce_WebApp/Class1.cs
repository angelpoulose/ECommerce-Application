using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
namespace ECommerce_WebApp
{
    public class Class1
    {
        SqlConnection con;
        SqlCommand cmd;

        public Class1()
        {
            con = new SqlConnection(@"server=DESKTOP-7VCI1GB\SQLEXPRESS;database=E-Commerce;integrated security=true");
        }

        public int fun_NonQuery(string s)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            cmd = new SqlCommand(s, con);
            con.Open();
            int i=cmd.ExecuteNonQuery();
            con.Close();
            return i;
        }
        public string fun_scalar(string s)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            cmd = new SqlCommand(s, con);
            con.Open();
            object i = cmd.ExecuteScalar();
            con.Close();
            if (i == null || i == DBNull.Value)
            {
                return "";
            }

            return i.ToString();
        }
        public SqlDataReader fun_Reader(string s)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            cmd = new SqlCommand(s, con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            return dr;
        }
        public DataSet fun_DataAdapterUsingDS(string s)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            SqlDataAdapter da = new SqlDataAdapter(s, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
        public DataTable fun_DataAdapterUsingDT(string s)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            SqlDataAdapter da = new SqlDataAdapter(s, con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
    }
}