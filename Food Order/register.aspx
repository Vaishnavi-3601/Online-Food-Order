<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="Food_Order.register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="login" style="height:500px">

        <div class="inlogin">
            <h1> Welcome to Register </h1>
            <asp:TextBox ID="TextBox1" runat="server"  required="" placeholder="Enter Name" > </asp:TextBox><br />
            <asp:TextBox ID="TextBox2" runat="server" type="email" required="" placeholder="Enter Email" > </asp:TextBox><br />
            <asp:TextBox ID="TextBox3" runat="server" type="number" required="" placeholder="Enter Mobile" > </asp:TextBox><br />
            <asp:TextBox ID="TextBox4" runat="server" required="" placeholder="Enter City" > </asp:TextBox><br />
            <asp:TextBox ID="TextBox5" runat="server" type="password" required="" placeholder="Enter Password" TextMode="Password" > </asp:TextBox><br />

            <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" />
            <br />
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>


        </div>

    </div>

</asp:Content>
