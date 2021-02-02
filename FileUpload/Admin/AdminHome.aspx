<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="FileUpload.Admin.AdminHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
       
              <h1 style="background-color:aliceblue;color:darkred;text-align:center;font-family:Algerian"> Admin Home Page</h1>
        <div>
        
            <asp:HyperLink ID="hlAdHome" runat="server"  NavigateUrl="~/Admin/Allinfo.aspx" Text=" Employers Information " ></asp:HyperLink><br />
            <asp:HyperLink ID="hlAdLogout" runat="server"  NavigateUrl="~/Admin/AdminLogin.aspx" Text="Logout" ></asp:HyperLink>
         </div>
   
      
    </form>
</body>
</html>
