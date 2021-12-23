<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditDriver.aspx.cs" Inherits="CityBusManagment.EditDriver" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Edit Driver</title>
</head>
<body>
    <form id="editdriver" runat="server">
        <div>
        </div>
        <asp:GridView ID="gv_editdriver" runat="server" Height="392px" Width="953px" ShowFooter="true" AutoGenerateColumns="false" OnRowCommand="gv_editdriver_RowCommand" OnRowEditing="gv_editdriver_RowEditing" OnRowCancelingEdit="gv_editdriver_RowCancelingEdit" 
			            OnRowUpdating="gv_editdriver_RowUpdating"   OnRowDeleting="gv_editdriver_RowDeleting"                 >
             <Columns>

				 <asp:TemplateField HeaderText="DriverID">
					 <ItemTemplate>
						 <asp:Label ID="lbl_id"  runat="server" Text='<%# Eval("DriverID") %>'></asp:Label>
					 </ItemTemplate>
					 <EditItemTemplate>
						 <asp:TextBox ID="tb_id"  Text='<%# Eval("DriverID") %>' runat="server"></asp:TextBox>
					 </EditItemTemplate>
					 <FooterTemplate>
						 <asp:TextBox ID="tb_idfoot"  runat="server"></asp:TextBox>
					 </FooterTemplate>
				 </asp:TemplateField>

				  <asp:TemplateField HeaderText="DriverName">
					 <ItemTemplate>
						 <asp:Label ID="lbl_name"  runat="server" Text='<%# Eval("DriverName") %>'></asp:Label>
					 </ItemTemplate>
					 <EditItemTemplate>
						 <asp:TextBox ID="tb_name"  Text='<%# Eval("DriverName") %>' runat="server"></asp:TextBox>
					 </EditItemTemplate>
					 <FooterTemplate>
						 <asp:TextBox ID="tb_namefoot" runat="server"></asp:TextBox>
					 </FooterTemplate>
				 </asp:TemplateField>

				  <asp:TemplateField HeaderText="BirthDate">
					 <ItemTemplate>
						 <asp:Label ID="lbl_BirthDate"  runat="server" Text='<%# Eval("BirthDate") %>'></asp:Label>
					 </ItemTemplate>
					 <EditItemTemplate>
						 <asp:TextBox ID="tb_BirthDate" TextMode="Date"  Text='<%# Eval("BirthDate") %>' runat="server"></asp:TextBox>
					 </EditItemTemplate>
					 <FooterTemplate>
						 <asp:TextBox ID="tb_BirthDatefoot" TextMode="Date" runat="server"></asp:TextBox>
					 </FooterTemplate>
				 </asp:TemplateField>

				  <asp:TemplateField HeaderText="PhoneNumber">
					 <ItemTemplate>
						 <asp:Label ID="lbl_PhoneNumber"  runat="server" Text='<%# Eval("PhoneNumber") %>'></asp:Label>
					 </ItemTemplate>
					 <EditItemTemplate>
						 <asp:TextBox ID="tb_PhoneNumber" TextMode="Phone" Text='<%# Eval("PhoneNumber") %>' runat="server"></asp:TextBox>
					 </EditItemTemplate>
					 <FooterTemplate>
						 <asp:TextBox ID="tb_PhoneNumberfoot" TextMode="Phone" runat="server"></asp:TextBox>
					 </FooterTemplate>
				 </asp:TemplateField>

				  <asp:TemplateField HeaderText="BusPlate">
					 <ItemTemplate>
						 <asp:Label ID="lbl_BusPlate"  runat="server" Text='<%# Eval("BusPlate") %>'></asp:Label>
					 </ItemTemplate>
					 <EditItemTemplate>
						 <asp:TextBox ID="tb_BusPlate"  Text='<%# Eval("BusPlate") %>' runat="server"></asp:TextBox>
					 </EditItemTemplate>
					 <FooterTemplate>
						 <asp:TextBox ID="tb_BusPlatefoot" runat="server"></asp:TextBox>
					 </FooterTemplate>
				 </asp:TemplateField>

				  <asp:TemplateField HeaderText="BusModel">
					 <ItemTemplate>
						 <asp:Label ID="lbl_BusModel"  runat="server" Text='<%# Eval("BusModel") %>'></asp:Label>
					 </ItemTemplate>
					 <EditItemTemplate>
						 <asp:TextBox ID="tb_BusModel"  Text='<%# Eval("BusModel") %>' runat="server"></asp:TextBox>
					 </EditItemTemplate>
					 <FooterTemplate>
						 <asp:TextBox ID="tb_BusModelfoot" runat="server"></asp:TextBox>
					 </FooterTemplate>
				 </asp:TemplateField>

				



				
						 <asp:TemplateField>
							 <ItemTemplate>
                                 <asp:ImageButton ImageUrl="/Images/edit-icon.png" runat="server" CommandName="Edit" ToolTip="Edit" Height="20px" Width="20px" />
								 <asp:ImageButton ImageUrl="/Images/Editing-Delete-icon.png" runat="server" CommandName="Delete" ToolTip="Delete" Height="20px" Width="20px" />
							 </ItemTemplate>
							 <EditItemTemplate>
								 <asp:ImageButton ImageUrl="/Images/Actions-document-save-icon.png" runat="server" CommandName="Uptade" ToolTip="Uptade" Height="20px" Width="20px" />
								 <asp:ImageButton ImageUrl="/Images/Close-icon.png" runat="server" CommandName="Cancel" ToolTip="Cancel" Height="20px" Width="20px" />
							 </EditItemTemplate>
							 <FooterTemplate>
								  <asp:ImageButton ImageUrl="/Images/Button-Add-icon.png" runat="server" CommandName="AddNew" ToolTip="Add New" Height="20px" Width="20px" />

							 </FooterTemplate>
						 </asp:TemplateField>
                     </Columns>
        </asp:GridView>
    </form>
</body>
</html>
