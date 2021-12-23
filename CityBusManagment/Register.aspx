<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="CityBusManagment.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
    <style type="text/css">
        .auto-style1 {
            height: 27px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="lbl_fullname" runat="server" Text="Full Name"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="tb_fullname" runat="server"></asp:TextBox>
                    </td>
                </tr>
                     <tr>
                    <td >
                        <asp:Label ID="lbl_email" runat="server" Text="E-mail"></asp:Label>
                    </td>
                    <td colspan="2" >
                        <asp:TextBox ID="tb_email" TextMode="Email" runat="server"></asp:TextBox>
                    </td>
                </tr>
                     <tr>
                    <td>
                        <asp:Label ID="lbl_username" runat="server" Text="Username"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="tb_username" runat="server"></asp:TextBox>
                        <asp:Label ID="lbl_design" runat="server" Text="*" ForeColor="Red">  </asp:Label>
                    </td>
                </tr>
                     <tr>
                    <td>
                        <asp:Label ID="lbl_password" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="tb_password" TextMode="Password" runat="server"></asp:TextBox>
                         <asp:Label ID="lbl_design1" runat="server" Text="*" ForeColor="Red">  </asp:Label>
                    </td>
                </tr>
                     <tr>
                    <td>
                        <asp:Label ID="lbl_confirmpassword" runat="server" Text="Confirm Password"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="tb_confirmpassword" TextMode="Password" runat="server"></asp:TextBox>
                    </td>
                </tr>
                    <tr>
                    <td>
                        
                    </td>
                    <td colspan="2">
                        <asp:Button ID="btn_submit" runat="server" Text="Submit" OnClick="btn_submit_Click" />
                    </td>
                </tr>
                    <tr>
                    <td>
                        
                    </td>
                    <td colspan="2">
                        <asp:Label Text="" ID="lbl_message"  runat="server" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
