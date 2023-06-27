<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="forgot.aspx.cs" Inherits="Food_Order.forgot" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <center>

    <h1>Reset Password</h1>
    <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Your Email"></asp:TextBox><br />
    <asp:Button ID="Button1" runat="server" Text="Reset" OnClick="Button1_Click" /><br />
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label><br />

        </center>
</asp:Content>
