<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userhome.aspx.cs" Inherits="Food_Order.userhome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
        <div class="uh">


        <h1>Welcome to Userhome !</h1>



    <asp:Button ID="Button1" runat="server" Text="View Booked Order" OnClick="Button1_Click" />
    <asp:Button ID="Button2" runat="server" Text="View Profile" OnClick="Button2_Click" /><br /><br />
            
        </div>

    </center>
</asp:Content>
