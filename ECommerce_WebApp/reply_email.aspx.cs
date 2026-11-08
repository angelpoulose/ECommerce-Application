using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ECommerce_WebApp
{
    public partial class reply_email : System.Web.UI.Page
    {
        Class1 clsobj = new Class1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public static void SendEmail2(string yourName, string yourGmailUserName, string yourGmailPassword, string toName, string toEmail, string subject, string body)

        {
            string to = toEmail; //To address    
            string from = yourGmailUserName; //From address    
            MailMessage message = new MailMessage(from, to);

            string mailbody = body;
            message.Subject = subject;
            message.Body = mailbody;
            message.BodyEncoding = Encoding.UTF8;
            message.IsBodyHtml = true;
            SmtpClient client = new SmtpClient("smtp.gmail.com", 587); //Gmail smtp    
            System.Net.NetworkCredential basicCredential1 = new
            System.Net.NetworkCredential(yourGmailUserName, yourGmailPassword);
            client.EnableSsl = true;
            client.UseDefaultCredentials = true;
            client.Credentials = basicCredential1;
            try
            {
                client.Send(message);
            }

            catch (Exception ex)
            {
                throw ex;
            }

        }

        protected void sent_email_Click(object sender, EventArgs e)
        {
            string s = "select user_name from UserTable where user_email='" + Session["user_email"] + "'";
            string emailname = clsobj.fun_scalar(s);
            SendEmail2("Furni Admin","angelpoulose636@gmail.com", "jcgt iypd bwln ddkd",emailname, Session["user_email"].ToString() , subjectlb.Text,bodytb.Text);
            string s2 = "update FeedbackTable set reply='" + bodytb.Text + "',feedback_status='inactive' where feedback_id=" + Session["feedback_id"] + "";
            int i = clsobj.fun_NonQuery(s2);
            if (i == 1)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Mail sent! updated feedback table!')",true);
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('some error in updating!')",true);
            }
        }
    }
}