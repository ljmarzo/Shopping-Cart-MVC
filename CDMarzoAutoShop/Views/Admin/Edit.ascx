<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<CDMASType.CDMAS>" %>

    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>
<link href="../../Content/MyStyle.css" rel="stylesheet" type="text/css" />
<link href="../../Content/Site.css" rel="stylesheet" type="text/css" />
        <fieldset>
            <legend>Edit Order Status</legend>
            
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
            <br /><br />
            <label for="Status">Status: </label>
             <div class="editor-field">
                 <%: Html.RadioButtonFor(model => model.Status, "Pending") %>
               <label>Pending</label><br />
               <%: Html.RadioButtonFor(model => model.Status, "Confirmed") %>
               <label>Confirmed</label><br />
               <%: Html.RadioButtonFor(model => model.Status, "Delivered") %> 
               <label>Delivered</label><br />
              <%: Html.RadioButtonFor(model => model.Status, "Cancelled")%>
               <label>Cancelled</label><br />
             
            </div>
            
            <label for="Total">Total: </label>
           <b>
                Php <%: Html.Encode(Model.tTotal) %>
            </b>
            
            <p>
                <input type="submit" class="button_2" value="Save" />
                 <button type="reset" onclick="javascript:window.location='http://localhost:15593/Admin/Customers';" class="button_2">Cancel</button>
            </p>
        </fieldset>

    <% } %>



