<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<CDMASType.CDMAS>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Orders
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<ul id="menu">              
                    | <li><%: Html.ActionLink("Customers", "Customers", "Admin")%></li> | 
                    <li><%: Html.ActionLink("Inventory","Index","Item") %></li> | 
                    <li><%: Html.ActionLink("Sales", "Sales", "Admin")%></li> | 
                </ul> 
                <br />
                <br />
<center>
    <h2>Orders</h2>
    <input type"text" id="myInput" onkeyup="myFunction()" style="width:500px; border: 1px solid #1a8637" placeholder="Search for ordered items.." />
     <div align= "center"style="height:380px; overflow: auto;">
    <table id="myTable">


        <tr>
            
            <th>
                Order ID
            </th>
            <th>
                Date Purchased
            </th>
            <th>
                Item ID
            </th>
             <th>
                Item Name
            </th>
            <th>
            Category
            </th>
            <th>
                Quantity
            </th>
            <th>
                Subtotal
            </th>
            <th>
                NetTotal
            </th>
             <th>
                Customer Name
            </th>
            <%--<th></th>--%>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            
            <td>
                <%: item.oID %>
            </td>
            <td>
                <%: String.Format("{0:g}", item.DatePurchased) %>
            </td>
             <td>
                <%: item.iID %>
            </td>
            <td>
                <%: item.iName %>
            </td>
            <td>
            <%: item.iCategory %>
            </td>
            <td>
                <%: item.Qty %>
            </td>
            <td>
                Php <%: item.Subtotal %>.00
            </td>
            <td>
               Php <%: item.NetTotal %>.00
            </td>
           
            <td>
                <%: item.FirstName + ' ' +  item.LastName %>
            </td>
      <%--  <td>
                <%: Html.ActionLink("Delete", "DeleteOrder", "Admin", new { oID = item.oID }, new { @class = "modal" })%>
            </td>--%>
        </tr>
    
    <% } %>

    </table>
    </div>
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

  
</center>
</asp:Content>

