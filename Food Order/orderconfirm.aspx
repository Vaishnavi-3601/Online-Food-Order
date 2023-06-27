<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="orderconfirm.aspx.cs" Inherits="Food_Order.orderconfirm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <center>

    <img src="green-tick.png" height="300" width="300" /><br />

        <h1> Success </h1>
    <asp:Label ID="Label1" runat="server" Text=" "></asp:Label>

    <input type="hidden" id="Hidden1" runat="server" />

        </center>
</asp:Content>
