using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FileUpload
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void button1_Click(object sender, EventArgs e)
        {
            if(fileUpload1.HasFile)
            {
                if(fileUpload1.PostedFile.ContentLength>0)
                {
                    fileUpload1.SaveAs(Server.MapPath("~/Images/") + fileUpload1.FileName);
                    Label1.Text = "Image Uploaded Successfully !!!";
                }
                else
                {
                    Label1.Text = "Image size must be lessthan  !!!";
                }
            }
            else
            {
                Label1.Text = "Image not selected..Please select the image !!!";
            }
        }
    }
}