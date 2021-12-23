<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CityBusManagment.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login as Admin</title>
	<style>
	    .Login {
            position: absolute;
            
	    }
	</style>
</head>
<body>
    <form id="Login" runat="server">
        <div class="Login">
            <asp:Label ID="lbl_username" runat="server" Text="Username"></asp:Label>
            <br />
          
            <asp:TextBox ID="tb_username" runat="server"></asp:TextBox>
			<br />
            <br />
            <asp:Label ID="lbl_password" runat="server" Text="Password"></asp:Label>
            <br />
            <asp:TextBox  TextMode="Password" ID="tb_password"  runat="server">Password</asp:TextBox>
            <br />
			<br />
            <asp:Label ID="lbl_admincode" runat="server" Text="Admin Code"></asp:Label>
            <br />
            <asp:TextBox ID="tb_admincode" runat="server" OnTextChanged="tb_admincode_TextChanged"></asp:TextBox>
			<br />
			<br />
			<asp:Button Text="Login" runat="server" OnClick="btn_login_Click" ID="btn_login"  />
        </div>
    </form>
</body>
</html>
