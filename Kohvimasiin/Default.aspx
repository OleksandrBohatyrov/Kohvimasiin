<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Kohvimasiin._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>   Kohviautomaat</h2>
 
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="kohvi_Id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." Height="200px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="429px" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="kohvi_Id" HeaderText="kohvi_Id" InsertVisible="False" ReadOnly="True" SortExpression="kohvi_Id" />
                    <asp:BoundField DataField="jooginimi" HeaderText="jooginimi" SortExpression="jooginimi" />
                    <asp:BoundField DataField="topsejuua" HeaderText="topsejuua" SortExpression="topsejuua" />
                    <asp:BoundField DataField="topsepakis" HeaderText="topsepakis" SortExpression="topsepakis" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Kohv4ConnectionString1 %>" DeleteCommand="DELETE FROM [KohviautomaatSet] WHERE [kohvi_Id] = @kohvi_Id" InsertCommand="INSERT INTO [KohviautomaatSet] ([jooginimi], [Topsejuua_topsejuuaId], [Topsepakis_topsepakisId]) VALUES (@jooginimi, @Topsejuua_topsejuuaId, @Topsepakis_topsepakisId)" SelectCommand="SELECT KohviautomaatSet.kohvi_Id, KohviautomaatSet.jooginimi, TopsejuuaSet.topsejuua, TopsepakisSet.topsepakis FROM KohviautomaatSet INNER JOIN TopsejuuaSet ON KohviautomaatSet.Topsejuua_topsejuuaId = TopsejuuaSet.topsejuuaId INNER JOIN TopsepakisSet ON KohviautomaatSet.Topsepakis_topsepakisId = TopsepakisSet.topsepakisId" UpdateCommand="UPDATE [KohviautomaatSet] SET [jooginimi] = @jooginimi, [Topsejuua_topsejuuaId] = @Topsejuua_topsejuuaId, [Topsepakis_topsepakisId] = @Topsepakis_topsepakisId WHERE [kohvi_Id] = @kohvi_Id">
                <DeleteParameters>
                    <asp:Parameter Name="kohvi_Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="jooginimi" Type="String" />
                    <asp:Parameter Name="Topsejuua_topsejuuaId" Type="Int32" />
                    <asp:Parameter Name="Topsepakis_topsepakisId" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="jooginimi" Type="String" />
                    <asp:Parameter Name="Topsejuua_topsejuuaId" Type="Int32" />
                    <asp:Parameter Name="Topsepakis_topsepakisId" Type="Int32" />
                    <asp:Parameter Name="kohvi_Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
 
    <br />
    <br />
 
</asp:Content>
