<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<CDMASType.CDMAS>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Customer
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validation-unobtrusive/3.2.6/jquery.validate.unobtrusive.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validation-unobtrusive/3.2.6/jquery.validate.unobtrusive.min.js"></script>
    <link href="../../Content/MyStyle.css" rel="stylesheet" type="text/css" />
    <link href="../../Content/Site.css" rel="stylesheet" type="text/css" />

 <ul id="menu">              
                    | <li><%: Html.ActionLink("Home", "Index", "Home")%></li> | 
                    <li><%: Html.ActionLink("About","About","Home") %></li> | 
                    <li><%: Html.ActionLink("Shopping Cart", "Cart", "OrderInfo")%></li> | 
                </ul>
                <br />
                <br />

    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>
<div style="padding: 0px 500px 0px 475px">
        <fieldset>
            <legend>Customer Info</legend>

            
            <label for="FirstName">First Name</label><label style="color:Red"> *</label>

            <div class="editor-field" style=" display: inline-block; padding: 0px 53px; margin: 8px 0;">
              <%--  <%: Html.TextBoxFor(model => model.FirstName, new { @class = "inputType" })%>--%>
              <input type = "text" class="inputType" name="FirstName" required />
                <%: Html.ValidationMessageFor(model => model.FirstName) %>
            </div>
            <br />
            <label for="LastName">Last Name</label><label style="color:Red"> *</label>
            <div class="editor-field" style=" display: inline-block; padding: 0px 55px; margin: 8px 0">
              <%--  <%: Html.TextBoxFor(model => model.LastName, new { @class = "inputType" })%>--%>
              <input type="text" class="inputType" name="LastName" required />
                <%: Html.ValidationMessageFor(model => model.LastName) %>
            </div>
             <br /> 
             <label for="Address">Address</label><label style="color:Red"> *</label>
            <div class="editor-field"style=" display: inline-block; padding: 0px 70px; margin: 8px 0">
                 <input type="text" class="inputType" name="Address" required />
                <%: Html.ValidationMessageFor(model => model.Address) %>
            </div><br />
            
            <label for="ContactNo">Contact Number</label><label style="color:Red"> *</label>
            <div class="editor-field"style=" display: inline-block; padding: 0px 20px; margin: 8px 0">
              <input type="number" class="inputType" name="ContactNo" required />
                <%--<%: Html.TextBoxFor(model => model.ContactNo, new { @class = "inputType" })%>--%>
                <%: Html.ValidationMessageFor(model => model.ContactNo) %>
            </div>
            <br />
           <label for="Email">Email</label><label style="color:Red"> *</label>
            <div class="editor-field"style=" display: inline-block; padding: 0px 85px; margin: 8px 0">
                <input type="email" class="inputType" name="Email" required />
                <%: Html.ValidationMessageFor(model => model.Email) %>
            </div>
             <br />
           <label for="DelivOption">Delivery Option</label><label style="color:Red"> *</label>
             <div class="editor-field"style=" display: inline-block; padding: 12px 20px; margin: 8px 0">
           <input type ="radio" name="DelivOption" id="Pick-Up" value ="Pick-Up" required />Pick-Up<br />
            <input type ="radio" name="DelivOption" id="COD" value ="Cash-On-Delivery" required />Cash-On-Delivery
           
                <%: Html.ValidationMessageFor(model => model.DelivOption) %>
            </div>
              
        <div>
   <%-- <%:Html.ActionLink("Confirm Check Out", "CheckOutMsg", "OrderInfo", new { @class = "modal"}, new{ @InputType ="submit" })%>--%>
              <input type = "submit" style="float:right" value ="Confirm Checkout" class="button_2" onclick="OpenCreatePopup()" />
           <%-- <button id="myBtn" class="button_2">Confirm Checkout</button>--%>
          </div>

         </fieldset>
     <%--<div id="Div1" class="modal">
  <div class="modal-content">
    <span class="close">&times;</span>
    <p>  Thank you for shopping with us! 
                                Please wait for our confirmation call/text within 24 hours and have your order within 48 hours. 
                                God Bless.</p>
                                <button type="submit" onclick="javascript:window.location='http://localhost:15593/Home/Index';" class="button_2">Ok</button>
  </div>

</div>--%>

          
       <div id="DivToAppendPartialView" style="height: 94px; text-align: center">
    </div>

    
   
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
    <script src="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/jquery-ui.js" type="text/javascript"></script>
    <link href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/themes/blitzer/jquery-ui.css"
        rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        $.ajaxSetup({ cache: false });
        function OpenCreatePopup() {
            var div = $("#DivToAppendPartialView");
            div.load("/OrderInfo/CheckOutMsg", function () {
                div.dialog({
                    modal: true,
                    width: 500,
                    height: 438,
                    resizable: false
                });
            });
        }

        $(function () {
            $('#DivToAppendPartialView').dialog({
                autoOpen: false,
                width: 300,
                resizable: false,
                modal: true
            });

            $('.modal').click(function () {
                $('#DivToAppendPartialView').load(this.href, function () {
                    $(this).dialog('open');
                });
                return false;
            });


        });
        </script>
        
       
   <% } %>
   
</asp:Content>

