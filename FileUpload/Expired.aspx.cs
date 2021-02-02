using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FileUpload
{
    public partial class Expired : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int Status = int.Parse(Request.QueryString["Status"]);
            if (Status == 0) { Response.Write("<h1>Your  DocumentationUploadlink is expired.</h1>"); }
            else if (Status == 2) { Response.Write("<h1>Your  DocumentationUploadlink is already used.</h1>"); }

        }
    }
}