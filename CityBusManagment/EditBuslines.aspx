<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditBuslines.aspx.cs" Inherits="CityBusManagment.EditBuslines" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Edit Buslines</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:FormView ID="fv_busline" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Road" DataSourceID="sds_busline" DefaultMode="Insert" ForeColor="Black" GridLines="Vertical" Height="257px" Width="322px">
            <EditItemTemplate>
                Road:
                <asp:Label ID="RoadLabel1" runat="server" Text='<%# Eval("Road") %>' />
                <br />
                BusPlate:
                <asp:TextBox ID="BusPlateTextBox" runat="server" Text='<%# Bind("BusPlate") %>' />
                <br />
                Fare:
                <asp:TextBox ID="FareTextBox" runat="server" Text='<%# Bind("Fare") %>' />
                <br />
                SpeechTime:
                <asp:TextBox ID="SpeechTimeTextBox" runat="server" Text='<%# Bind("SpeechTime") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
                Road:
                <asp:TextBox ID="RoadTextBox" runat="server" Text='<%# Bind("Road") %>' />
                <br />
                BusPlate:
                <asp:TextBox ID="BusPlateTextBox" runat="server" Text='<%# Bind("BusPlate") %>' />
                <br />
                Fare:
                <asp:TextBox ID="FareTextBox" runat="server" Text='<%# Bind("Fare") %>' />
                <br />
                SpeechTime:
                <asp:TextBox ID="SpeechTimeTextBox" runat="server" Text='<%# Bind("SpeechTime") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                Road:
                <asp:Label ID="RoadLabel" runat="server" Text='<%# Eval("Road") %>' />
                <br />
                BusPlate:
                <asp:Label ID="BusPlateLabel" runat="server" Text='<%# Bind("BusPlate") %>' />
                <br />
                Fare:
                <asp:Label ID="FareLabel" runat="server" Text='<%# Bind("Fare") %>' />
                <br />
                SpeechTime:
                <asp:Label ID="SpeechTimeLabel" runat="server" Text='<%# Bind("SpeechTime") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
        </asp:FormView>
        <asp:SqlDataSource ID="sds_busline" runat="server" ConnectionString="<%$ ConnectionStrings:CityBusConnectionString %>" DeleteCommand="DELETE FROM [Buslines] WHERE [Road] = @Road" InsertCommand="INSERT INTO [Buslines] ([Road], [BusPlate], [Fare], [SpeechTime]) VALUES (@Road, @BusPlate, @Fare, @SpeechTime)" SelectCommand="SELECT [Road], [BusPlate], [Fare], [SpeechTime] FROM [Buslines]" UpdateCommand="UPDATE [Buslines] SET [BusPlate] = @BusPlate, [Fare] = @Fare, [SpeechTime] = @SpeechTime WHERE [Road] = @Road">
            <DeleteParameters>
                <asp:Parameter Name="Road" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Road" Type="String" />
                <asp:Parameter Name="BusPlate" Type="String" />
                <asp:Parameter Name="Fare" Type="Decimal" />
                <asp:Parameter DbType="Time" Name="SpeechTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="BusPlate" Type="String" />
                <asp:Parameter Name="Fare" Type="Decimal" />
                <asp:Parameter DbType="Time" Name="SpeechTime" />
                <asp:Parameter Name="Road" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Road" DataSourceID="sds_busline" Height="339px" Width="794px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Road" HeaderText="Road" ReadOnly="True" SortExpression="Road" />
                <asp:BoundField DataField="BusPlate" HeaderText="BusPlate" SortExpression="BusPlate" />
                <asp:BoundField DataField="Fare" HeaderText="Fare" SortExpression="Fare" />
                <asp:BoundField DataField="SpeechTime" HeaderText="SpeechTime" SortExpression="SpeechTime" />
            </Columns>
        </asp:GridView>
        <asp:Button ID="btn_back1" runat="server" Height="39px" OnClick="btn_back1_Click" Text="Back" Width="110px" />
    </form>
</body>
</html>
