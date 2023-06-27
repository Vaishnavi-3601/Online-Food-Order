<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Food_Order.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="login">

        <div class="inlogin">

            <h1> Welcome to Login</h1>
            <asp:TextBox ID="TextBox1" runat="server" type="email" required="" placeholder="Enter email"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="TextBox2" runat="server" type="password" required="" placeholder="Enter password" TextMode="Password"></asp:TextBox>
            <br />
            <br />
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>Select Type</asp:ListItem>
                <asp:ListItem>User</asp:ListItem>
                <asp:ListItem>Admin</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
            <br />
            <a href="forgot.aspx"> Forgot Password</a>
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </div>
    </div>
</asp:Content>
