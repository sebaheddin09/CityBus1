<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResetPassword.aspx.cs" Inherits="CityBusManagment.ResetPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reset Password</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="pnl_email" runat="server">
            <table>
                 <tr>
                    <td>
                        <asp:Label ID="lbl_email" runat="server" Text="E-mail"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="tb_email" TextMode="Email" runat="server" Width="172px"></asp:TextBox>
                    </td>
                      <td>
                          <asp:Button ID="btn_send" runat="server" Text="Send" OnClick="btn_send_Click" />
                    </td>
                 
             
                    
                </tr>
            </table>

            </asp:Panel>
            <br />
            <asp:Panel ID="pnl_verificationcode" runat="server" Visible="False">
                <table>
                     <tr>
                    <td>
                        <asp:Label ID="lbl_verification" runat="server" Text="Enter verification code"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="tb_verificationcode"  runat="server"></asp:TextBox>
                    </td>
                      <td>
                          <asp:Button ID="btn_confirm" runat="server" Text="Confirm" OnClick="btn_confirm_Click" />
                    </td>
                </tr>
                </table>
            </asp:Panel>
            <br />
            <asp:Panel ID="pnl_changepassword" runat="server" Visible="False">

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
                        <asp:Button ID="btn_change" runat="server" Text="Change" OnClick="btn_change_Click" />
                    </td>
                  </tr>
                  <tr>
                     <td>

                     </td>
                    <td>
                        <asp:Button ID="btn_gotologin" runat="server" Text="Go To Login"  Visible="False" OnClick="btn_gotologin_Click" />
                    </td>
                  </tr>
             
                    
                
            </table>
            </asp:Panel>
                    <asp:Label ID="lbl_message1" runat="server" Text=""></asp:Label>

        </div>
    </form>
</body>
</html>
