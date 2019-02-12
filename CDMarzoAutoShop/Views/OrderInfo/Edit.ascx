<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<CDMASType.CDMAS>" %>

    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>
<link href="../../Content/MyStyle.css" rel="stylesheet" type="text/css" />
<link href="../../Content/Site.css" rel="stylesheet" type="text/css" />
        <fieldset>
           
            
          
            <div class="editor-field">
                <strong><%: Html.Encode(Model.iName)%></strong>
            </div>
           <label for="Qty">Quantity: </label>
            <div class="editor-field">
             <input type="number" class="inputType" name="Qty" required />
          <%: Html.TextBoxFor(model => model.Qty)%>
                <%: Html.ValidationMessageFor(model => model.Qty) %>
            </div>
            
            <p>
                <input type="submit" class="button_2" value="Save" />
                 <button type="reset" onclick="javascript:window.location='http://localhost:15593/OrderInfo/Cart';" class="button_2">Cancel</button>
            </p>
        </fieldset>

    <% } %>



