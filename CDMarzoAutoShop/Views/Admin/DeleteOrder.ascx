<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<CDMASType.CDMAS>" %>

    <h3>Are you sure you want to delete this?</h3>
    <fieldset>
        <legend></legend>
        <link href="../../Content/Site.css" rel="stylesheet" type="text/css" />
        <link href="../../Content/MyStyle.css" rel="stylesheet" type="text/css" />
        <div class="display-label">oID</div>
        <div class="display-field"><%: Model.oID %></div>
        
        <div class="display-label">DatePurchased</div>
        <div class="display-field"><%: String.Format("{0:g}", Model.DatePurchased) %></div>
        
        <div class="display-label">Qty</div>
        <div class="display-field"><%: Model.Qty %></div>
        
        <div class="display-label">Subtotal</div>
        <div class="display-field"><%: Model.Subtotal %></div>
        
        <div class="display-label">NetTotal</div>
        <div class="display-field"><%: Model.NetTotal %></div>
        
        <div class="display-label">cID</div>
        <div class="display-field"><%: Model.cID %></div>
        
        <div class="display-label">iID</div>
        <div class="display-field"><%: Model.iID %></div>
        
        <div class="display-label">iName</div>
        <div class="display-field"><%: Model.iName %></div>
        
        <div class="display-label">FirstName</div>
        <div class="display-field"><%: Model.FirstName %></div>
        
        <div class="display-label">LastName</div>
        <div class="display-field"><%: Model.LastName %></div>
        
    </fieldset>
    <% using (Html.BeginForm()) { %>
        <p>
		    <input type="submit" class="button_2" value="Delete" /> 
             <button type="reset" onclick="javascript:window.location='http://localhost:15593/Admin/Orders';" class="button_2">Cancel</button>
		    <%--<%: Html.ActionLink("Back to List", "Index") %>--%>
        </p>
    <% } %>


