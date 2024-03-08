<%@ Page Title="Lisa Topsejuua" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Kohvimasiin._Default" %>



<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>   Lisa topsejuua</h2>
<p>   
    &nbsp;</p>
<p>   
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="topsejuuaId" DataSourceID="SqlDataSourceLALALALLA" DefaultMode="Insert" ForeColor="Black" GridLines="Vertical" Height="50px" Width="125px">
        <AlternatingRowStyle BackColor="White" />
        <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="topsejuuaId" HeaderText="topsejuuaId" InsertVisible="False" ReadOnly="True" SortExpression="topsejuuaId" />
            <asp:BoundField DataField="topsejuua" HeaderText="topsejuua" SortExpression="topsejuua" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSourceLALALALLA" runat="server" ConnectionString="<%$ ConnectionStrings:Kohv4ConnectionString1 %>" DeleteCommand="DELETE FROM [TopsejuuaSet] WHERE [topsejuuaId] = @topsejuuaId" InsertCommand="INSERT INTO [TopsejuuaSet] ([topsejuua]) VALUES (@topsejuua)" SelectCommand="SELECT * FROM [TopsejuuaSet]" UpdateCommand="UPDATE [TopsejuuaSet] SET [topsejuua] = @topsejuua WHERE [topsejuuaId] = @topsejuuaId">
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
 
 
</asp:Content>