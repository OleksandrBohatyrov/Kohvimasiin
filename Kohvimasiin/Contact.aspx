<%@ Page Title="Topsepakis" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Kohvimasiin.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Topsepakis    </h2><asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="topsepakisId" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." Height="200px" Width="700px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="topsepakisId" HeaderText="topsepakisId" ReadOnly="True" SortExpression="topsepakisId" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Kohv4ConnectionString1 %>" DeleteCommand="DELETE FROM [TopsepakisSet] WHERE [topsepakisId] = @topsepakisId" InsertCommand="INSERT INTO [TopsepakisSet] ([topsepakis]) VALUES (@topsepakis)" ProviderName="<%$ ConnectionStrings:Kohv4ConnectionString1.ProviderName %>" SelectCommand="SELECT [topsepakisId], [topsepakis] FROM [TopsepakisSet]" UpdateCommand="UPDATE [TopsepakisSet] SET [topsepakis] = @topsepakis WHERE [topsepakisId] = @topsepakisId">
            <DeleteParameters>
                <asp:Parameter Name="topsepakisId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="topsepakis" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="topsepakis" Type="Int32" />
                <asp:Parameter Name="topsepakisId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

</asp:Content>
