<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<CDMASType.CDMAS>" %>

<link href="../../Content/MyStyle.css" rel="stylesheet" type="text/css" />
        <link href="../../Content/Site.css" rel="stylesheet" type="text/css" />
    <h3>Are you sure you want to remove this from cart?</h3>
   <%-- <fieldset>
        <legend></legend>
        
        <label for ="iName">Item Name: </label>
        <b><%: Html.Encode(Model.iName)%></b>
        <br />
        <label for ="Qty">Quantity: </label>
       <b> <%: Html.Encode(Model.Qty) %></b>
        <br />
        <label for="Subtotal">Subtotal: </label>
        <b>Php <%: Html.Encode(Model.Subtotal) %>.00</b>
        
    </fieldset>--%>
    <% using (Html.BeginForm()) { %>
        <p>
		    <input type="submit" class="button_2"value="Confirm" /> 
            <button type="reset" onclick="javascript:window.location='http://localhost:15593/OrderInfo/Cart';" class="button_2">Cancel</button>
<%--		    <%: Html.ActionLink("Cancel", "Cart") %>--%>
        </p>
    <% } %>


