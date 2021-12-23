<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewPassword.aspx.cs" Inherits="CityBusManagment.NewPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>New Password</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                 <tr>
                    <td>
                        <asp:Label ID="lbl_newpassword" runat="server" Text="New Password"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="tb_newpassword" TextMode="Password" runat="server" Width="172px"></asp:TextBox>
                    </td>
                  </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbl_connewpassword" runat="server" Text="Confirm New Password"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="tb_connewpassword" TextMode="Password" runat="server" Width="172px"></asp:TextBox>
                    </td>
                  </tr>
                 <tr>
                     <td>

                     </td>
                    <td>
                        <asp:Button ID="btn_change" runat="server" Text="Change" />
                    </td>
                  </tr>
                 <tr>
                     
                    <td>
                        <asp:Label ID="lbl_message2" runat="server" Text=""></asp:Label>
                    </td>
                  </tr>
                 
             
                    
                
            </table>
        </div>
    </form>
</body>
</html>
