using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FileUpload.Admin
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if(txtUserId.Text=="admin" && txtPwd.Text=="admin123")
            {
                Response.Redirect("~/Admin/AdminHome.aspx");
            }

            else
            {
                Response.Write("<Script>alert('User Id and Password not valid ,!1! Please try again')</Script>");
            }
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtUserId.Text = "";
            txtPwd.Text = "";
            txtUserId.Focus();
        }
    }
}