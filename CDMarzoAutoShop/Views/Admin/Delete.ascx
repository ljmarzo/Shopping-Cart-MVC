<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<CDMASType.CDMAS>" %>

    <h3>Are you sure you want to delete this?</h3>
    <fieldset>
        <link href="../../Content/MyStyle.css" rel="stylesheet" type="text/css" />
        <link href="../../Content/Site.css" rel="stylesheet" type="text/css" />
      <label>Name: </label>
                <b><%: Html.Encode(Model.FirstName+ ' '+ Model.LastName) %></b>
            <br />
         
            
            <label for="Address">Address: </label>
            <b>
                 <%: Html.Encode(Model.Address) %>
            </b>
            <br />
            <label for="ContactNo">Contact Number: </label>
           <b>
                <%: Html.Encode(Model.ContactNo) %>
            </b>
            <br />
           <label for="Email">Email: </label>
            <b>
                <%: Html.Encode(Model.Email) %>
            </b>
            <br />
            <label for="DelivOption">Delivery Option: </label>
         <b>
                  <%: Html.Encode(Model.DelivOption) %>
            </b>
            <br />
            <label for="Status">Status: </label>
            <b> <%:Html.Encode(Model.Status) %></b>
            <br />
            <label for="Total">Total: </label>
           <b>
                Php <%: Html.Encode(Model.tTotal) %>
            </b>
            
        </fieldset>
        
    </fieldset>
    <% using (Html.BeginForm()) { %>
        <p>
		    <input type="submit" class="button_2" value="Delete" /> 
		     <button type="reset" onclick="javascript:window.location='http://localhost:15593/Admin/Customers';" class="button_2">Cancel</button>
        </p>
    <% } %>


