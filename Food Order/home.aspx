<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Food_Order.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <!-- Start WOWSlider.com HEAD section -->
<link rel="stylesheet" type="text/css" href="engine1/style.css" />
<script type="text/javascript" src="engine1/jquery.js"></script>
<!-- End WOWSlider.com HEAD section -->

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Start WOWSlider.com BODY section -->
<div id="wowslider-container1">
<div class="ws_images"><ul>
		<li><img src="data1/images/chienese.jpg" alt="chienese" title="chienese" id="wows1_0"/></li>
		<li><a href="http://wowslider.net"><img src="data1/images/italian.jpg" alt="image slider" title="italian" id="wows1_1"/></a></li>
		<li><img src="data1/images/beverages.jpg" alt="beverages" title="beverages" id="wows1_2"/></li>
	</ul></div>
	<div class="ws_bullets"><div>
		<a href="#" title="chienese"><span><img src="data1/tooltips/chienese.jpg" alt="chienese"/>1</span></a>
		<a href="#" title="italian"><span><img src="data1/tooltips/italian.jpg" alt="italian"/>2</span></a>
		<a href="#" title="beverages"><span><img src="data1/tooltips/beverages.jpg" alt="beverages"/>3</span></a>
	</div></div><div class="ws_script" style="position:absolute;left:-99%"><a href="http://wowslider.net">bootstrap image slider</a> by WOWSlider.com v9.0</div>
<div class="ws_shadow"></div>
</div>	
<script type="text/javascript" src="engine1/wowslider.js"></script>
<script type="text/javascript" src="engine1/script.js"></script>
<!-- End WOWSlider.com BODY section -->
    <div class="">
        <h3 style="text-align:center;">Get your food in the discount of 15%</h3>
    </div>

    <div class="row">

        <div class="col1">

            <img src="fooddel.jpg" height="300" width="300" />

        </div>

        <div class="col1">
            <h1>About Us</h1>
            <p> Our technology platform connects customers, 
            restaurant partners and delivery partners, 
             serving their multiple needs. </p>
          <p>  Customers use our platform to search and 
            discover restaurants,read and write customer generated
         reviews and view and upload photos, 
          order food delivery, book a table  
         and make payments while dining-out at restaurants.</p>
        </div>

    </div>
    <br /><br /><br />

    <div class="row">

        <div class="col2">

            <img src="indian1.jpg" height="300" width="300" />

        </div>

        <div class="col2">

            <img src="chinese1.jpg" height="300" width="300" />

        </div>

        <div class="col2">

            <img src="italian1.jpeg" height="300" width="300" />

        </div>

        <div class="col2">

            <img src="beverages1.jpeg" height="300" width="300" />

        </div>
    </div>

</asp:Content>
