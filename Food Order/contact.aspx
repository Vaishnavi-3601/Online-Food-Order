<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="Food_Order.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="cont">

        <div class="col01">

            &nbsp;<img src="contactus.jpeg" height="300" width="300" /></div>

        <div class="col01">
            <h1>Submit your queries</h1>

            <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Name"></asp:TextBox><br />
            <asp:TextBox ID="TextBox2" runat="server" type="email" placeholder="Enter Email"></asp:TextBox><br />
            <asp:TextBox ID="TextBox3" runat="server" placeholder="Enter Message"></asp:TextBox><br />
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" /><br /><br />
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>

        </div>

    </div>


</asp:Content>
