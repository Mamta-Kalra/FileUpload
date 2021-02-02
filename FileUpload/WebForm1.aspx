<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="FileUpload.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>How to check file size in file upload control</h2>
            <b>Selected File :</b> <asp:FileUpload ID="fileUpload1" runat="server" /><br />
            <asp:Button ID="button1"  runat="server" Text="Upload" OnClick="button1_Click"/><br />
            <asp:Label ID="Label1" runat="server" ForeColor="Red" />
        </div>
    </form>
</body>
</html>
