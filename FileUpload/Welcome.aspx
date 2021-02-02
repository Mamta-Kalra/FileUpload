<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="FileUpload.Welcome"  %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <h2 style="background-color:yellow;color:red;text-align:center">Welcome Employer</h2>
            <table align="center">
                 <tr>
                    <td>Name:</td><td><asp:TextBox ID="txtName" runat="server" Width="201px" /></td><td><asp:RequiredFieldValidator ID="rfName" ControlToValidate="txtName" ForeColor="Red" ErrorMessage="Please Enter Name here" runat="server" SetFocusOnError="true"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td>Email Id:</td><td><asp:TextBox ID="txtEmail" runat="server" Width="201px" /></td><td><asp:RequiredFieldValidator ID="rftxtEmail" ControlToValidate="txtEmail" ForeColor="Red" ErrorMessage="Please Enter Email here" runat="server" SetFocusOnError="true"></asp:RequiredFieldValidator ></td>
 
                </tr>
                <tr><td colspan="2"><asp:Button Text="Click on the Link" ID="txtLink" runat="server" OnClick="txtLink_Click" Width="162px" />
 &nbsp; <asp:Button Text="Cancel" ID="txtCancle" runat="server" Width="162px" OnClick="txtCancle_Click" />
 </td></tr>
                <tr><td colspan="2">
                    
            <asp:HyperLink ID="hlHomePage" runat="server" NavigateUrl="~/HomePage.aspx" Text="Back to Home Page"  />
                    </td></tr>
            </table>
                   </div>
        
    </form>
</body>
</html>
