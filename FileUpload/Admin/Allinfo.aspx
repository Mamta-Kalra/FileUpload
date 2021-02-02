<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Allinfo.aspx.cs" Inherits="FileUpload.Admin.Allinfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
      <h1 style="background-color:aliceblue;color:darkred;text-align:center;font-family:Algerian"> Employers Information</h1>
        <div>
            <asp:GridView ID="gv1" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="gv1_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField HeaderText="Id" DataField="Id" />
                    <asp:BoundField HeaderText="Name" DataField="Name" />
                    <asp:BoundField HeaderText="Gender" DataField="Gender" />
                    <asp:BoundField HeaderText="Job" DataField="Job" />
                    <asp:BoundField HeaderText="Mobile" DataField="Mobile" />
                    <asp:BoundField HeaderText="Email" DataField="Email" />
                    <asp:BoundField HeaderText="Address" DataField="Address" />
                    <asp:BoundField HeaderText="A/C Number" DataField="ACNum" />
                    <asp:BoundField HeaderText="IFSC Code" DataField="IFSCCode" />
                    <asp:TemplateField HeaderText="Photo"> 
                        <ItemTemplate>
                        <asp:LinkButton ID="lbPhoto" runat="server" Text="Download" OnClick="lbPhoto_Click"  CommandArgument='<%#Eval("Id") %>' />
                       </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Resume">
                     <ItemTemplate>
                        <asp:LinkButton ID="lbResume" runat="server" Text="Download" />
                       </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Xth">
                         <ItemTemplate>
                        <asp:LinkButton ID="lbXth" runat="server" Text="Download" />
                       </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="XIIth">
                         <ItemTemplate>
                        <asp:LinkButton ID="lbXIIth" runat="server" Text="Download" />
                       </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Graduation">
                         <ItemTemplate>
                        <asp:LinkButton ID="lbGra" runat="server" Text="Download" />
                       </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="AdharCard">
                         <ItemTemplate>
                        <asp:LinkButton ID="lbAdhhar" runat="server" Text="Download" />
                       </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="PanCard">
                         <ItemTemplate>
                        <asp:LinkButton ID="lbPancard" runat="server" Text="Download" />
                       </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Passbook">
                         <ItemTemplate>
                        <asp:LinkButton ID="lbPassbook" runat="server" Text="Download" />
                       </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>

        </div>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
