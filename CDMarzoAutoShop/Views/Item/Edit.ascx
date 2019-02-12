<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<CDMASType.CDMAS>" %>

    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>
        
        <fieldset>
            <legend>Edit</legend>
            
            <link href="../../Content/MyStyle.css" rel="stylesheet" type="text/css" />
            <link href="../../Content/Site.css" rel="stylesheet" type="text/css" />
            
            <div class="editor-label">
                <%--<%: Html.LabelFor(model => model.iName) %>--%>
                 <label for="iName">Item Name</label>
            </div>
            <div class="editor-field style=" display: inline-block">
                <%: Html.TextBoxFor(model => model.iName, new {@class ="inputType"})  %>
              <%--   <input type="text" class="inputType" name="iName" required />--%>
                <%: Html.ValidationMessageFor(model => model.iName) %>
            </div>
            
            <div class="editor-label">
                <%--<%: Html.LabelFor(model => model.iDescription) %>--%>
                <label for="iDescription">Description</label>
            </div>
            <div class="editor-field">
                <%: Html.TextAreaFor(model => model.iDescription, new {@class ="inputType"}) %>
                <%: Html.ValidationMessageFor(model => model.iDescription) %>
            </div>
            
            <div class="editor-label">
               <%-- <%: Html.LabelFor(model => model.iSRP) %>--%>
               <label for="iSRP">SRP</label>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.iSRP, new { @class = "inputType" })%>
                <%: Html.ValidationMessageFor(model => model.iSRP) %>
            </div>
            
            <div class="editor-label">
                <%--<%: Html.LabelFor(model => model.iNetPrice) %>--%>
                <label for="iNetPrice">Net Price</label>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.iNetPrice, new { @class = "inputType" })%>
                <%: Html.ValidationMessageFor(model => model.iNetPrice) %>
            </div>
            
            <div class="editor-label">
               <%-- <%: Html.LabelFor(model => model.iAQty) %>--%>
               <label for="iAQty">Available Quantity</label>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.iAQty, new { @class = "inputType" })%>
                <%: Html.ValidationMessageFor(model => model.iAQty) %>
            </div>
            
            <div class="editor-label">
                <%--<%: Html.LabelFor(model => model.iCategory) %>--%>
                <label for="iCategory">Category</label>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.iCategory, new { @class = "inputType" })%>
                <%: Html.ValidationMessageFor(model => model.iCategory) %>
            </div>
            
            <p>
                <input type="submit" class="button_2" value="Save" />
                 <button type="reset" onclick="javascript:window.location='http://localhost:15593/Item/Index';" class="button_2">Cancel</button>
            </p>
        </fieldset>

    <% } %>



