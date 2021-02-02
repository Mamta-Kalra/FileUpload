<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="FileUpload.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1 style="background-color:aliceblue;color:darkred;text-align:center;font-family:Algerian"> Inner Work Solution</h1>
        <div>
            <asp:HyperLink ID="hlWelcome" runat="server" NavigateUrl="~/Welcome.aspx" Text="Employer Welcome Page"  /> <br />
            <asp:HyperLink ID="hlAdmin" runat="server"  NavigateUrl="~/Admin/AdminLogin.aspx" Text="Admin Login" ></asp:HyperLink>
         </div>
    </form>
</body>
</html>
