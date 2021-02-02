using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Text;
using System.Net.Mail;
using System.Data.SqlClient;
using System.Data;

namespace FileUpload
{
    public partial class Welcome : System.Web.UI.Page
    {
        
        Guid g = Guid.NewGuid();
        DateTime d = DateTime.Now;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                Clear();

             } 

        }
        public  void SendRequestMail(string email,string name,string key)
        {


            string from = "singhabhiyuda123@gmail.com";
            
            StringBuilder mailBody = new StringBuilder();
            mailBody.Append("Hello " + name);
            mailBody.Append("<br /><br />");
            mailBody.Append("Click on the link and fill the form:");
            mailBody.Append("<br />");
            mailBody.Append($"https://localhost:44393/Applicant.aspx?Key={key}");
            mailBody.Append("<br /><br />");
            mailBody.Append("Note: Please Upload Your documents in .pdf or .doc type..");
            mailBody.Append("<br /><br />");
            mailBody.Append("Regards");
            mailBody.Append("<br /><br />");
            mailBody.Append("Hr Executive.");

            MailMessage MailMsg = new MailMessage(from,email);
            MailMsg.IsBodyHtml = true; MailMsg.Subject = "FileUpload Link";
            MailMsg.Body = mailBody.ToString();

            SmtpClient MailSender = new SmtpClient("smtp.gmail.com", 587);
            MailSender.Credentials = new NetworkCredential(from,"K#Monik@123");
            MailSender.EnableSsl = true; 

            MailSender.Send(MailMsg);
        }

         protected void txtLink_Click(object sender, EventArgs e)
        {
            string guid = g.ToString();
           
            //Response.Write(d.ToString());

            
            SendRequestMail(txtEmail.Text, txtName.Text,guid);

            

         }

        protected void txtCancle_Click(object sender, EventArgs e)
        {
            Clear();
        }

        public void Clear()
        {
            txtName.Text = txtEmail.Text = "";

            txtName.Focus();
        }
    }
}