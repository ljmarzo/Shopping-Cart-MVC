<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<CDMASType.CDMAS>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Customers
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<ul id="menu">              
                    | <li><%: Html.ActionLink("Inventory", "Index", "Item")%></li> | 
                    <li><%: Html.ActionLink("Orders","Orders","Admin") %></li> | 
                    <li><%: Html.ActionLink("Sales", "Sales", "Admin")%></li> | 
                </ul> 
                <br />
                <br />


 
  <center>
    <h2>Customers</h2>
    <input type"text" id="myInput" onkeyup="myFunction()" style="width:500px; border: 1px solid #1a8637" placeholder="Search for customer name.." />
   <div align= "center"style="height:340px; overflow: auto;">
    <table id="myTable">
        <tr>
            
            <th>
                Customer ID
            </th>
            <th>
                Name
            </th>
            <th>
                Address
            </th>
            <th>
                Contact Number
            </th>
            <th>
                Email
            </th>
            <th>
                Delivery Option
            </th>
            <th>
                Status
            </th>
            <th>
                Total
            </th>
            <th></th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
           
            <td>
                <%: item.cID %>
            </td>
            <td style="text-transform:uppercase; color:Black">
                <%: Html.ActionLink(item.FirstName + ' ' + item.LastName, "Details", new { cID = item.cID }, new { @class = "modal" })%>
            </td>
            <td style="text-transform:uppercase">
                <%: item.Address %>
            </td>
            <td>
                <%: item.ContactNo %>
            </td>
            <td>
                <%: item.Email %>
            </td>
            <td>
                <%: item.DelivOption %>
            </td>
            <td>
                <%: item.Status %>
            </td>
            <td>
               Php <%: item.tTotal %>
            </td>
             <td>
                <%: Html.ActionLink("Edit", "Edit", new { cID = item.cID }, new {@class = "modal" })%>
            </td>
        </tr>
    
    <% } %>

    </table>
    </div>
     </center>
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
            div.load("/Admin/", function () {
                div.dialog({
                    modal: true,
                    width: 800,
                    height: 438,
                    resizable: false
                });
            });
        }

        $(function () {
            $('#DivToAppendPartialView').dialog({
                autoOpen: false,
                width: 500,
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

     <script>
         function myFunction() {
             var input, filter, found, table, tr, td, i, j;
             input = document.getElementById("myInput");
             filter = input.value.toUpperCase();
             table = document.getElementById("myTable");
             tr = table.getElementsByTagName("tr");
             for (i = 0; i < tr.length; i++) {
                 td = tr[i].getElementsByTagName("td");
                 for (j = 0; j < td.length; j++) {
                     if (td[j].innerHTML.toUpperCase().indexOf(filter) > -1) {
                         found = true;
                     }
                 }
                 if (found) {
                     tr[i].style.display = "";
                     found = false;
                 } else {
                     tr[i].style.display = "none";
                 }
             }
         }
</script>


</asp:Content>

