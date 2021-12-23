<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditDrivers1.aspx.cs" Inherits="CityBusManagment.EditBusLines" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Edit Drivers</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:FormView ID="fv_driver" runat="server" DataKeyNames="DriverID" DataSourceID="sds_driver" DefaultMode="Insert" Height="257px" Width="322px" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
            <EditItemTemplate>
                DriverID:
                <asp:Label ID="DriverIDLabel1" runat="server" Text='<%# Eval("DriverID") %>' />
                <br />
                DriverName:
                <asp:TextBox ID="DriverNameTextBox" runat="server" Text='<%# Bind("DriverName") %>' />
                <br />
                BirthDate:
                <asp:TextBox ID="BirthDateTextBox"  runat="server" Text='<%# Bind("BirthDate") %>' />
                <br />
                PhoneNumber:
                <asp:TextBox ID="PhoneNumberTextBox" runat="server" Text='<%# Bind("PhoneNumber") %>' />
                <br />
                BusPlate:
                <asp:TextBox ID="BusPlateTextBox" runat="server" Text='<%# Bind("BusPlate") %>' />
                <br />
                BusModel:
                <asp:TextBox ID="BusModelTextBox" runat="server" Text='<%# Bind("BusModel") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
                DriverID:
                <asp:TextBox ID="DriverIDTextBox" runat="server" Text='<%# Bind("DriverID") %>' />
                <br />
                DriverName:
                <asp:TextBox ID="DriverNameTextBox" runat="server" Text='<%# Bind("DriverName") %>' />
                <br />
                BirthDate:
                <asp:TextBox ID="BirthDateTextBox" runat="server" Text='<%# Bind("BirthDate") %>' />
                <br />
                PhoneNumber:
                <asp:TextBox ID="PhoneNumberTextBox" runat="server" Text='<%# Bind("PhoneNumber") %>' />
                <br />
                BusPlate:
                <asp:TextBox ID="BusPlateTextBox" runat="server" Text='<%# Bind("BusPlate") %>' />
                <br />
                BusModel:
                <asp:TextBox ID="BusModelTextBox" runat="server" Text='<%# Bind("BusModel") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                DriverID:
                <asp:Label ID="DriverIDLabel" runat="server" Text='<%# Eval("DriverID") %>' />
                <br />
                DriverName:
                <asp:Label ID="DriverNameLabel" runat="server" Text='<%# Bind("DriverName") %>' />
                <br />
                BirthDate:
                <asp:Label ID="BirthDateLabel" runat="server" Text='<%# Bind("BirthDate") %>' />
                <br />
                PhoneNumber:
                <asp:Label ID="PhoneNumberLabel" runat="server" Text='<%# Bind("PhoneNumber") %>' />
                <br />
                BusPlate:
                <asp:Label ID="BusPlateLabel" runat="server" Text='<%# Bind("BusPlate") %>' />
                <br />
                BusModel:
                <asp:Label ID="BusModelLabel" runat="server" Text='<%# Bind("BusModel") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
        </asp:FormView>
        <div>
        </div>
        <asp:SqlDataSource ID="sds_driver" runat="server" ConnectionString="<%$ ConnectionStrings:CityBusConnectionString %>" DeleteCommand="DELETE FROM [Drivers] WHERE [DriverID] = @DriverID" InsertCommand="INSERT INTO [Drivers] ([DriverID], [DriverName], [BirthDate], [PhoneNumber], [BusPlate], [BusModel]) VALUES (@DriverID, @DriverName, @BirthDate, @PhoneNumber, @BusPlate, @BusModel)" SelectCommand="SELECT [DriverID], [DriverName], [BirthDate], [PhoneNumber], [BusPlate], [BusModel] FROM [Drivers]" UpdateCommand="UPDATE [Drivers] SET [DriverName] = @DriverName, [BirthDate] = @BirthDate, [PhoneNumber] = @PhoneNumber, [BusPlate] = @BusPlate, [BusModel] = @BusModel WHERE [DriverID] = @DriverID">
            <DeleteParameters>
                <asp:Parameter Name="DriverID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="DriverID" Type="Int32" />
                <asp:Parameter Name="DriverName" Type="String" />
                <asp:Parameter DbType="Date" Name="BirthDate" />
                <asp:Parameter Name="PhoneNumber" Type="Int32" />
                <asp:Parameter Name="BusPlate" Type="String" />
                <asp:Parameter Name="BusModel" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="DriverName" Type="String" />
                <asp:Parameter DbType="Date" Name="BirthDate" />
                <asp:Parameter Name="PhoneNumber" Type="Int32" />
                <asp:Parameter Name="BusPlate" Type="String" />
                <asp:Parameter Name="BusModel" Type="String" />
                <asp:Parameter Name="DriverID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="gv_drivers1" runat="server" AutoGenerateColumns="False" DataKeyNames="DriverID" DataSourceID="sds_driver" Height="339px" Width="794px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="DriverID" HeaderText="DriverID" ReadOnly="True" SortExpression="DriverID" />
                <asp:BoundField DataField="DriverName" HeaderText="DriverName" SortExpression="DriverName" />
                <asp:BoundField DataField="BirthDate" HeaderText="BirthDate" SortExpression="BirthDate" />
                <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
                <asp:BoundField DataField="BusPlate" HeaderText="BusPlate" SortExpression="BusPlate" />
                <asp:BoundField DataField="BusModel" HeaderText="BusModel" SortExpression="BusModel" />
            </Columns>
        </asp:GridView>
        <asp:Button ID="btn_back" runat="server" Height="39px" OnClick="btn_back_Click" Text="Back" Width="110px" />
    </form>
</body>
</html>
