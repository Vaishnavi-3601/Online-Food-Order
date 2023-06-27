<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="Food_Order.cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="hk">
        <center>
            <h1>Products in your cart<br /></h1>
            <table border="1">
                <tr>
                <th>Sr. No</th>
                <th>Name</th>
                <th>Qty</th>
                <th>Rate</th>
                <th>Amount</th>
                 </tr>

                <%for (int s = 0; s <= k; s++)
                    {
                        %>

<% if ((Session["pname'" + s + "'"]) != null)
    {
     %>

                <tr>
                    <td>
                        <%=s %>
                    </td>
                    <td>
                        <%=Session["pname'" + s + "'"] %>
                    </td>
                    <td>
                        <%=Session["qty'" + s + "'"] %>
                    </td>
                    <td>
                        <%=Session["rate'" + s + "'"] %>
                    </td>

                    <td>
                        <%am = Convert.ToDouble(Session["qty'" + s + "'"]) * Convert.ToDouble(Session["rate'" + s + "'"]);
                tot = tot + am;     %>

                        <%=am %>
                    </td>
               </tr>



                <%  } }
                     %>

                <tr>
                    <td></td>
                    <td></td>
                    <td></td><td>Total</td>
                    <td><%=tot %></td>
                </tr>

            </table>

            <form action="checkout.aspx" method="post">
                <input type="hidden" />
            </form>

            <form action="checkout.aspx" method="post">
                <input type="hidden" />
                <input type="hidden" value="<%=tot %>" name="amt" />
                <br />
                <input type="submit" value="Checkout" style="width: 15% ; background-color: coral; height: 20px; padding: 8px; height: 40px; width: 100px;" name="check" />
            </form>

        </center>

        </div>

</asp:Content>
