using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace FileUpload.Admin
{
    public partial class Allinfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source = LAPTOP-8SDFL799\\SQLEXPRESS; Initial Catalog = FileDB; User ID = sa; Password = 12345");
            SqlCommand cmd = new SqlCommand("Select  Id, Name,Gender,Job,Mobile,Email,Address,Resume,Xth,XIIth,Graduation,AdharCard,PanCard,PhotoName,PhotoBinary,ACNum,IFSCCode,Passbook  From Register", con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            gv1.DataSource = dr;
            gv1.DataBind();
            con.Close();


        }

        protected void gv1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void lbPhoto_Click(object sender, EventArgs e)
        {
            int Id = int.Parse((sender as LinkButton).CommandArgument);
            byte[] bytes;
            string fileName, contentType;
            using(SqlConnection con = new SqlConnection())
            {
                using(SqlCommand cmd= new SqlCommand())
                {
                    cmd.CommandText = "select Name,Gender,Job,Email,Mobile , Address,ACNum,IFSCCode,Photo,ResumeXth,XIIth,Graduation,Adharcard,Pancard,Passbook from Resgister where Id=@Id ";
                    cmd.Parameters.AddWithValue("@Id",Id);
                    cmd.Connection = con;
                    con.Open();
                    using (SqlDataReader dr=cmd.ExecuteReader())
                    {
                        dr.Read();
                        bytes = (byte[])dr["Photo"];
                        contentType = dr["PhotoType"].ToString();
                        fileName = dr["PhotoName"].ToString();
                    }
                    con.Close();
                }

            }
            Response.Clear();
            Response.Buffer = true;
            Response.Charset = "";
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.ContentType = contentType;
            Response.AppendHeader("Content-Disposition", "attachment; FileName=" + fileName);
            Response.BinaryWrite(bytes);
            Response.Flush();
            Response.End();


        }
    }
}