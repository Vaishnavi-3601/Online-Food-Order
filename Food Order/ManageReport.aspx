<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ManageReport.aspx.cs" Inherits="Food_Order.ManageReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="report">

        <center><h1>Reports</h1></center>

        <div class="row">

            <div class="col31">
                <img src="customerlogo.png" height="200" width="200" />
                <h1>Total customers : <%=i %></h1>
            </div>
           
            <div class="col32">
                <img src="foodlogo.jpg" height="200" width="200" />
                <h1>Total Products : <%=k %></h1>
            </div>
             <div class="col33">
                 <img src="totalorders.png" height="200" width="200" />
                <h1>Total Orders : <%=j %></h1>
            </div>
        </div>

    </div>

</asp:Content>
