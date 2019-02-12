<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<CDMarzoAutoShop.Models.LogInModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<center>
   
    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>

        <fieldset style = "width: 300px; height:250px;">
            <legend>Admin Login</legend>
            
           <label for ="UserID">User ID: </label>
            <div class="editor-field"style=" display: inline-block; padding: 0px 53px; margin: 8px 0">
                <%: Html.TextBoxFor(model => model.UserID, new { @class = "inputType" })%>
                <%: Html.ValidationMessageFor(model => model.UserID) %>
            </div>
            
             <label for ="Password">Password: </label>
            <div class="editor-field"style=" display: inline-block; padding: 0px 53px; margin: 8px 0">
                <%: Html.PasswordFor(model => model.Password, new { @class = "inputType" })%>
               
            </div>
            
            <p>
                <input type="submit" class="button_2" value="Log In" />
            </p>
        </fieldset>

    <% } %>

    </center>
</asp:Content>

