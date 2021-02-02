<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="FileUpload.Admin.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <h1 style="background-color:azure;color:brown;text-align:center;font-family:Arial"> Login Page</h1>
    <form id="form1" runat="server">
        <div>

            <table align="center">
<caption>Login Form</caption>
<tr>
<td align="right">User Id:</td>
<td><asp:TextBox ID="txtUserId" runat="server" Width="150px"/></td>
</tr>
<tr>
<td align="right">Password:</td>
<td><asp:TextBox ID="txtPwd" runat="server" TextMode="Password" Width="150px" /></td>
</tr>

<tr>
<td  align="center" colspan="2"><asp:Button ID="btnLogin" runat="server" Text="Login" Width="75px" OnClick="btnLogin_Click" />
<asp:Button ID="btnReset" runat="server" Text="Reset" Width="75px" OnClick="btnReset_Click" /></td>
</tr>
<tr><td colspan="2" align="center">
    
            <asp:HyperLink ID="hlHomePage" runat="server" NavigateUrl="~/HomePage.aspx" Text="Back to Home Page"  />
    </td></tr>
</table>

        </div>
    </form>
</body>
</html>
