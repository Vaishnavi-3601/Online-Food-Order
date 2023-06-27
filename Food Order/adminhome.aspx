<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminhome.aspx.cs" Inherits="Food_Order.adminhome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>

        <h1>Welcome to Admin !</h1>

    <asp:Button ID="Button1" runat="server" Text="Manage customer" OnClick="Button1_Click" />
    <asp:Button ID="Button2" runat="server" Text="Manage food" OnClick="Button2_Click" /><br /><br />
    <asp:Button ID="Button3" runat="server" Text="Manage billing" OnClick="Button3_Click" />
    <asp:Button ID="Button4" runat="server" Text="Manage report" OnClick="Button4_Click" /><br /><br />
        <asp:Button ID="Button5" runat="server" Text="View Contact Details" OnClick="Button5_Click"></asp:Button><br /><br />
    </center>
</asp:Content>
