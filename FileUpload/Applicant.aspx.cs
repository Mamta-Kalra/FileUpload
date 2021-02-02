using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Data.Linq;
using System.Data.SqlClient;
namespace FileUpload
{
      public partial class Applicant : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
              /*  int? Status = null; 
                string Uid = Request.QueryString["key"];
                FileDBDataContext dc = new FileDBDataContext();
                dc.Link_IsValid(Guid.Parse(Uid), ref Status);
                if (Status == 0 || Status == 2)
                {
                    Response.Redirect("~/Expired.aspx?Status=" + Status);
                }*/
            }


        }
        public void Clear()
        {
            txtName.Text = txtAddress.Text = txtMobile.Text = "";
            ddlGender.SelectedIndex = ddlJob.SelectedIndex = 0;
            Session["PhotoName"] = Session["PhotoBinary"] = null;

            txtName.Focus();

        }

        protected void bttn_Send_Click(object sender, EventArgs e)
        {
            int? Count = null;
            HttpPostedFile fileRe = fileResume.PostedFile;
            string fileRExt = Path.GetExtension(fileRe.FileName);

            //Filename code here
            string fileRN = Path.GetFileName(fileResume.PostedFile.FileName);




            HttpPostedFile fileX = file10.PostedFile; string fileXExt = Path.GetExtension(fileX.FileName);
            HttpPostedFile fileXII = file12.PostedFile; string fileXIIExt = Path.GetExtension(fileXII.FileName);
            HttpPostedFile fileGra = fileGraduation.PostedFile; string fileGraExt = Path.GetExtension(fileGra.FileName);
            HttpPostedFile fileAd = fileAdhar.PostedFile; string fileAdExt = Path.GetExtension(fileAd.FileName);
            HttpPostedFile fileP = filePan.PostedFile; string filePExt = Path.GetExtension(fileP.FileName);
            HttpPostedFile filePass = filePassbook.PostedFile; string filePassExt = Path.GetExtension(fileP.FileName);

            Stream resumeStream = fileRe.InputStream;
            BinaryReader br1 = new BinaryReader(resumeStream);

            Stream XthStream = fileX.InputStream;
            BinaryReader br2 = new BinaryReader(XthStream);

            Stream XIIthStream = fileXII.InputStream;
            BinaryReader br3 = new BinaryReader(XIIthStream);

            Stream GraStream = fileGra.InputStream;
            BinaryReader br4 = new BinaryReader(GraStream);

            Stream AdharStream = fileAd.InputStream;
            BinaryReader br5 = new BinaryReader(AdharStream);
            
            Stream PanStream = fileP.InputStream;
            BinaryReader br6 = new BinaryReader(PanStream);

            Stream PassbookStream = fileP.InputStream;
            BinaryReader br7 = new BinaryReader(PassbookStream);

            HttpPostedFile SelectedFile = fileImage.PostedFile;
            string fileExt = Path.GetExtension(SelectedFile.FileName);


            try
            {
                FileDBDataContext dc = new FileDBDataContext();
                if (fileRExt == ".pdf" || fileRExt == ".doc" && fileXExt == ".pdf" || fileXExt == ".doc" && fileXIIExt == ".pdf" || fileXIIExt == ".doc" && fileGraExt == ".pdf" || fileGraExt == ".doc" && fileAdExt == ".pdf" || fileAdExt == ".doc" && filePExt == ".pdf" || filePExt == ".doc" &&  fileExt == ".jpg" || fileExt == ".png" )
                {
                    string imgName = SelectedFile.FileName;  
                    
                    string folderPath = Server.MapPath("~/Images/");
                    if (Directory.Exists(folderPath) == false)                      
                    {
                        Directory.CreateDirectory(folderPath);      
                    }
                    SelectedFile.SaveAs(folderPath + imgName);        
                    imagePhoto.ImageUrl = "~/Images/" + imgName;
                    // binary conversion of photo by using Binaryreader class

                    BinaryReader br = new BinaryReader(SelectedFile.InputStream);
                    byte[] imgData = br.ReadBytes(SelectedFile.ContentLength);

                    string contentType = fileImage.PostedFile.ContentType;
                    

                    var count = dc.Register_Insert(txtName.Text, ddlGender.SelectedValue, ddlJob.SelectedValue, txtMobile.Text, txtEmail.Text, txtAddress.Text,
                      br1.ReadBytes((Int32)resumeStream.Length),
                      br2.ReadBytes((Int32)XthStream.Length),
                      br3.ReadBytes((Int32)XIIthStream.Length),
                      br4.ReadBytes((Int32)GraStream.Length),
                      br5.ReadBytes((Int32)AdharStream.Length),
                      br6.ReadBytes((Int32)PanStream.Length),contentType,imgName,imgData,txtACNum.Text,txtIFSC.Text,br7.ReadBytes((Int32)PassbookStream.Length), ref Count);


                    Response.Redirect("https://localhost:44393/SendMail.aspx");
                }
                else
                {                    
                        Response.Write("<script>alert('Selected file format is not supported.')</script>");

                }
                
            }
            catch(Exception ex)
            {
                Response.Write("You are getting error "+ ex+" Please try again ..");
            }
           
               
          
           
        
        }

       /* public void SendRequestMail(string Email, string Name)
        {
            string from = "kalramamta123@gmail.com";

            StringBuilder mailBody = new StringBuilder();
            mailBody.Append("Hello " + txtName.Text);
            mailBody.Append("<br /><br />");
            mailBody.Append("Response recorded");
            mailBody.Append("<br />");
            mailBody.Append("https://localhost:44393/SendMail.aspx");
            mailBody.Append("<br /><br />");
            mailBody.Append("Regards");
            mailBody.Append("<br /><br />");
            mailBody.Append("Hr Executive.");

            MailMessage MailMsg = new MailMessage(from,Email);
            MailMsg.IsBodyHtml = true; MailMsg.Subject = "FileUpload Link"; MailMsg.Body = mailBody.ToString();

            SmtpClient MailSender = new SmtpClient("smtp.gmail.com", 587);
            MailSender.Credentials = new NetworkCredential(from, "B#mamt@123");
            MailSender.EnableSsl = true; MailSender.Send(MailMsg);

        }*/



        protected void btnClear_Click(object sender, EventArgs e)
        {
            Clear();
        }

         }
}

    
