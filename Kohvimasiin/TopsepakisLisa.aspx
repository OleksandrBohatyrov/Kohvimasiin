<%@ Page Title="Lisa Topsepakis" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Kohvimasiin._Default" %>



<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>   Lisa topsepakis</h2>
<p>   
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="topsepakisId" DataSourceID="SqlDataSource_LisaTopse" DefaultMode="Insert" ForeColor="Black" GridLines="Vertical" Height="50px" Width="125px">
        <AlternatingRowStyle BackColor="White" />
        <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="topsepakisId" HeaderText="topsepakisId" InsertVisible="False" ReadOnly="True" SortExpression="topsepakisId" />
            <asp:BoundField DataField="topsepakis" HeaderText="topsepakis" SortExpression="topsepakis" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource_LisaTopse" runat="server" ConnectionString="<%$ ConnectionStrings:Kohv4ConnectionString1 %>" DeleteCommand="DELETE FROM [TopsepakisSet] WHERE [topsepakisId] = @topsepakisId" InsertCommand="INSERT INTO [TopsepakisSet] ([topsepakis]) VALUES (@topsepakis)" SelectCommand="SELECT * FROM [TopsepakisSet]" UpdateCommand="UPDATE [TopsepakisSet] SET [topsepakis] = @topsepakis WHERE [topsepakisId] = @topsepakisId">
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
</p>

</asp:Content>