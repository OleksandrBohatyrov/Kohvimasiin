<%@ Page Title="Topsejuua" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Kohvimasiin.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>&nbsp;Topsejuua</h2>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="topsejuuaId" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." Height="200px" Width="400px" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="topsejuuaId" HeaderText="topsejuuaId" ReadOnly="True" SortExpression="topsejuuaId" />
                <asp:BoundField DataField="topsejuua" HeaderText="topsejuua" SortExpression="topsejuua" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Kohv4ConnectionString1 %>" DeleteCommand="DELETE FROM [TopsejuuaSet] WHERE [topsejuuaId] = @topsejuuaId" InsertCommand="INSERT INTO [TopsejuuaSet] ([topsejuua]) VALUES (@topsejuua)" ProviderName="<%$ ConnectionStrings:Kohv4ConnectionString1.ProviderName %>" SelectCommand="SELECT [topsejuuaId], [topsejuua] FROM [TopsejuuaSet]" UpdateCommand="UPDATE [TopsejuuaSet] SET [topsejuua] = @topsejuua WHERE [topsejuuaId] = @topsejuuaId">
            <DeleteParameters>
                <asp:Parameter Name="topsejuuaId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="topsejuua" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="topsejuua" Type="Int32" />
                <asp:Parameter Name="topsejuuaId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
</asp:Content>
