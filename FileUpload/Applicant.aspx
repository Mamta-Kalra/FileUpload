<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Applicant.aspx.cs" Inherits="FileUpload.Applicant" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <style type="text/css">
        .auto-style1 {
            width: 169px;
        }
          .auto-style2 {
              width: 169px;
              height: 52px;
          }
          .auto-style3 {
              height: 52px;
          }
          .auto-style4 {
              width: 710px;
          }
    </style>

</head>
<body>
     <h2 style="background-color:yellow;color:red;text-align:center">Applicant From</h2>
    <form id="form1" runat="server">
             <table border="0" cellpadding="0" cellspacing="0" align="center" class="auto-style4">
                <tr>
                    <td>Name:
                    </td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server" Width="195px" Height="22px"></asp:TextBox>
                    </td>
                     <td rowspan="3" >
                        <asp:Image ID="imagePhoto" runat="server"  Width="223px" heiht="200" Height="174px"/>
                    </td>
                </tr>
 
                <tr>
                    <td >Gender:
                    </td>
                    <td>
                        <asp:Dropdownlist ID="ddlGender" runat="server" Width="205px">
                            <asp:ListItem Value="0">-Select-</asp:ListItem>
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:Dropdownlist>
                    </td>
                  
                </tr>
                  <tr>
                    <td class="auto-style1"> Job Type:
                    </td>
                     <td><asp:DropDownList ID="ddlJob" runat="server" Width="206px" >
                         <asp:ListItem Value="0">-Select-</asp:ListItem>
                         <asp:ListItem>.Net Developer</asp:ListItem>
                         <asp:ListItem>Java Developer</asp:ListItem>
                         <asp:ListItem>Python Developer</asp:ListItem>
                         <asp:ListItem>Web Developer</asp:ListItem>
                         </asp:DropDownList>
                     </td>
                </tr>
                
 
               <tr>
                    <td class="auto-style1">Mobile Number:
                    </td>
                    <td>
                        <asp:TextBox ID="txtMobile" runat="server" Width="197px" TextMode="Number" Height="27px"></asp:TextBox>
                    </td>
                     <td><asp:FileUpload ID="fileImage" runat="server" Width="200px" /></td>
                </tr>
                 <tr>
                 <td class="auto-style2">Email Id::
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtEmail" runat="server" Width="195px" TextMode="Email"></asp:TextBox>
                    </td>
                  
                </tr>
                <tr>
                    <td align="top" class="auto-style1">Address:
                         </td>
                    <td>
                        <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Height="50px" Width="200px"></asp:TextBox>
                    </td>
                   </tr>   
                 <tr>
                  <td class="auto-style1">Bank Account Number: </td>
                    <td>
                        <asp:TextBox ID="txtACNum" runat="server" />
                    </td>
                </tr>
                 <tr>
                   <td class="auto-style1"> IFSC Code: </td>
                    <td>
                        <asp:TextBox ID="txtIFSC" runat="server" />
                    </td>
                </tr>
                      <tr>
                    <td class="auto-style1">10th Marksheet: </td>
                    <td>
                        <asp:FileUpload ID="file10" runat="server" />
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style1">12th Marksheet: </td>
                    <td>
                        <asp:FileUpload ID="file12" runat="server" />
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style1">Graduation Marksheet: </td>
                    <td>
                        <asp:FileUpload ID="fileGraduation" runat="server" />
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style1">Resume: </td>
                    <td>
                        <asp:FileUpload ID="fileResume" runat="server"/>
                    </td>
                </tr>
                
                 <tr>
                    <td class="auto-style1">Adhar Card: </td>
                    <td>
                        <asp:FileUpload ID="fileAdhar" runat="server" />
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style1">Pan Card: </td>
                    <td>
                        <asp:FileUpload ID="filePan" runat="server" />
                    </td>
                </tr>
                
                 <tr>
                   <td>Passbook of Bank Accounts: </td>
                    <td>
                        <asp:FileUpload ID="filePassbook" runat="server" />
                    </td>
                </tr>
                  <tr>
                    <td colspan="3" align="center">
                        <asp:Button ID="bttn_Send" Text="Send" runat="server" OnClick="bttn_Send_Click" />
      <asp:Button ID="btnClear" runat="server" Text="Reset Form" Width="100" OnClick="btnClear_Click" />
                    </td>
                </tr>
            </table>

 
       
        
    </form>
</body>
</html>
