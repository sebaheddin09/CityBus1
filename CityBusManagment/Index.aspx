<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="CityBusManagment.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Main</title>
	<style>
		.Login {
			padding: 10px 10px;
			width: 1027px;
			left: 100%;
			bottom: 100%;
			background-color: orange;
			
		}
	</style>
	<link href="Style.css" rel="stylesheet" />
</head>
<body>
    <form id="Main" runat="server">
		<section>
			
			<div class ="Login">
				
				<asp:Button ID="btn_loginadmin" runat="server" OnClick="btn_loginadmin_Click" Text="Login as Admin" />
				<br />
				<br />
				<asp:Button ID="btn_logincustomer" Text="Login as Customer" runat="server" OnClick="btn_logincustomer_Click" />

				
				

			</div>
			
			
           
			<img src="Images/city-bus-vector-3395251.jpg" class ="panel" />
			
						
           
       </section>


        <div class ="Main">
			
			
           
        </div>
    </form>
</body>
</html>
