<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="single.aspx.cs" Inherits="Food_Order.single" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="r">
        <div class="c1" style="background-color:white ; padding-left: 80px">
            &nbsp;<img src="<%= img %>" height="360" width="360" /></div>
        <div class="c2" style="padding-bottom:40px ; padding-left:80px">

            <h1>Food Details</h1>
            <h2>
                <hr />
                <b>Name:</b>  <%=name %><hr />
                <b>Price:</b>
                <%=price %><hr />
                <b>Description:</b>
                <%=description %>
                <hr />

                Select Your Quantity
                <form action="single.aspx" method="post"> 

                    <input type="hidden" name="pro" value="<%=Id %>" />
                    
                    <input type="hidden" name="proname" value="<%=nm2 %>" />
                    <input type="hidden" name="proqty" value="<%=sp %>" />

                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                    </asp:DropDownList>
                    <br /><hr />
                    
                    <input type="submit" name="add" value="Add to Cart" />
                    <br /> <asp:Label ID="Label1" runat="server" Text=""></asp:Label>

                             </form> </h2>
        </div>

    </div>

</asp:Content>
