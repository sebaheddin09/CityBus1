<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Loginascustomer.aspx.cs" Inherits="CityBusManagment.Loginascustomer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login as Customer</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
              <asp:Label ID="lbl_username1" runat="server" Text="Username"></asp:Label>
            <br />
          
            <asp:TextBox ID="tb_username1" runat="server"></asp:TextBox>
			<br />
            <br />
            <asp:Label ID="lbl_password1" runat="server" Text="Password"></asp:Label>
            <br />
            <asp:TextBox  TextMode="Password" ID="tb_password1"  runat="server">Password</asp:TextBox>
            <br />
			<br />
            <asp:Button Text="Login" runat="server" OnClick="btn_login1_Click" ID="btn_login1"  />
            <br />
            <br />
              <asp:Label ID="lbl_register" runat="server" Text="Don't you have any account?"></asp:Label>
            <br />
              <asp:Button ID="btn_register" runat="server" Text="Register" Height="27px" OnClick="btn_register_Click" Width="77px" />
             <br />
            <br />
              <asp:Label ID="lbl_resetpassword" runat="server" Text="Forgot password?"></asp:Label>
            <br />
              <asp:Button ID="btn_resetpassword" runat="server" Text="Reset Password" Height="27px"  Width="109px" OnClick="btn_resetpassword_Click" />
             
        </div>
      
    </form>
</body>
</html>
