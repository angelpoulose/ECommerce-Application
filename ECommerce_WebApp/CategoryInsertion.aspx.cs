using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ECommerce_WebApp
{
    public partial class CategoryInsertion : System.Web.UI.Page
    {
        Class1 objclass = new Class1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string p = "/CategoryImages/" + FileUpload_CatImage.FileName;
            FileUpload_CatImage.SaveAs(MapPath(p));

            string s = "insert into CategoryTable values('" + TB_CatName.Text + "','" + p + "','" + TextBox_CatDesc.Text + "','available')";
            int i = objclass.fun_NonQuery(s);
            if (i == 1) Cat_Ins_Label.Text = "successfully inserted";
            else Cat_Ins_Label.Text = "insertion failed";
        }
    }
}