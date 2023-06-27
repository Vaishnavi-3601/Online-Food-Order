<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="foods.aspx.cs" Inherits="Food_Order.foods" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <center>
    <asp:datalist runat="server" CellPadding="3" DataKeyField="Id" DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" ForeColor="Black" GridLines="Vertical">
        <AlternatingItemStyle BackColor="#CCCCCC" />
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <ItemTemplate>
            <asp:Image ID="Image1" runat="server" height="300" width="300" ImageUrl='<%#Eval("img","{0}") %>' />
            <br />
           
            Food Name :
            <asp:Label ID="foodnameLabel" runat="server" Text='<%# Eval("foodname") %>' />
            <br />
            Food Price :
            <asp:Label ID="foodpriceLabel" runat="server" Text='<%# Eval("foodprice") %>' />
            <br />
            <hr />

            <form action="single.aspx" method="post">
                <input type="hidden" value="<%#Eval("Id") %>" name="pro" />
            </form>

            <form action="single.aspx" method="POST"> 
                <input type="hidden" value="<%#Eval("Id") %>" name="pro" />
                <input type="submit" value="View" style="width:15%; background-color:coral;height:20px;padding:8px;height:40px;width:100px" />

            </form>
        </ItemTemplate>
 
        <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
 
    </asp:datalist>
        </center>

    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [foods]"></asp:SqlDataSource>

</asp:Content>
