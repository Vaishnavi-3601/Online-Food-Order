    <%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="checkout.aspx.cs" Inherits="Food_Order.checkout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1"  runat="server">

    <center>

        <h1>Confirm Your Details</h1>

    <table border="1">

        <tr>
            <td>Email:</td><td><%=Session["User"].ToString() %></td>
        </tr>
        <tr>
            <td>Name:</td><td><%=nm %></td>
        </tr>
        <tr>
            <td>Address:</td><td><%=ad %></td>
        </tr>
        <tr>
            <td>Mobile:</td><td><%=mb %></td>
        </tr>
        <tr>
            <td>City:</td><td><%=city %></td>
        </tr>

        <tr>
            <td>Payment:<input type="radio" checked />COD</td><td>

                <form></form>
                <form action="orderconfirm.aspx">
                    <input type="submit" name="cnf" value="Confirm Order" style="width: 161px" />
                                         </form>
       </td>
        </tr>
    </table>
        <br />

        </center>

</asp:Content>
