<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard1.aspx.cs" Inherits="CityBusManagment.Dashboard1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>City Bus Managment</title>
	<style>
		.Grid {
			position: absolute;
			left: 14%;
			margin-right: 100px;
			top: 80px;
		}

		.Busline {
			position: absolute;
			top: 40%;
		}

		.Driver{
			position: absolute;
			top: 14%;
		}
		</style>
</head>
<body>
    <form id="form1" runat="server">
        	<asp:Panel ID="pnl_menu" runat="server" BackColor="#FF9933" Height="700px" style="margin-top: 0px" Width="168px">
			<asp:Panel ID="pnl_top" runat="server" BackColor="#FF9933" Height="62px" Width="1518px">
                
				
			</asp:Panel>
            <div class ="Driver">
				<asp:Button ID="btn_showdriver1" runat="server" Top="20px" BackColor="#CC6600" Height="54px" Text="Show Drivers" Width="166px" OnClick="btn_showdriver1_Click" />
            </div>

            <div class="Busline">
				<asp:Button ID="btn_showbusline1" runat="server" BackColor="#CC6600" Height="54px" Text="Show Bus Lines" Width="166px" OnClick="btn_showbusline1_Click" />

            </div>
			</asp:Panel>
			
			
			 <div class ="Grid">
				 
				 <asp:GridView ID="gw_drivers" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Height="200px" style="margin-left: 0px" Width="1314px"   >
					
					 <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
					 <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
					 <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
					 <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
					 <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
					 <SortedAscendingCellStyle BackColor="#FFF1D4" />
					 <SortedAscendingHeaderStyle BackColor="#B95C30" />
					 <SortedDescendingCellStyle BackColor="#F1E5CE" />
					 <SortedDescendingHeaderStyle BackColor="#93451F" />
					 
				 </asp:GridView>
			

        </div>
			
    </form>
</body>
</html>
