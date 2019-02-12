<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<IEnumerable<CDMASType.CDMAS>>" %>
<div align= "center"style="height:300px; overflow: auto">
    <table>
        <tr>
            
            <th>
                Order ID
            </th>
            
            <th>
                Item ID
            </th>
            <th>
                Item Name
            </th>
            <th>
                Quantity
            </th>
            <th>
                Subtotal
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
           
            <td>
                <%: item.oID %>
            </td>
           
        
           
            <td>
                <%: item.iID %>
            </td>
            <td>
                <%: item.iName %>
            </td>
             <td>
                <%: item.Qty %>
            </td>
              <td>
                <%: item.Subtotal %>
            </td>
           
        </tr>
    
    <% } %>
</div>
    </table>
    
  <p>
    <button type="reset" onclick="javascript:window.location='http://localhost:15593/Admin/Customers';" class="button_2">Okay</button>
  </p>


