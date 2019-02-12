<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<CDMASType.CDMAS>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	TodaysSales
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<ul id="menu">              
                    | <li><%: Html.ActionLink("Customers", "Customers", "Admin")%></li> | 
                    <li><%: Html.ActionLink("Inventory","Index","Item") %></li> | 
                    <li><%: Html.ActionLink("Orders", "Orders", "Admin")%></li> | 
                     <li><%: Html.ActionLink("Sales", "Sales", "Admin")%></li> | 
                </ul> 
                <br />
                <br />

<div align= "center"style="height:430px; overflow: auto;">
<center>
  <div id = "Print">
  <fieldset>
    <h2>Today Sales</h2>
     <p>
    <% foreach (var item in Model.Take(1))
       { %>
      Gross Sales: <strong>Php <%: item.GrossSales %></strong> <br />
      Net Sales: <strong>Php <%: item.NetSales %></strong>

    <%} %>
    </p>
    <table>
        <tr>
        <th>
        Date Purchased</th>
            <th>
                Item Name
            </th>
            <th>
                Quantity
            </th>
            <th>
                SRP
            </th>
            <th>
                Subtotal
            </th>
            <th>
                Net Price
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
        <td>
      <%: String.Format("{0:g}", item.DatePurchased) %>
            <td>
                <%: item.iName %>
            </td>
            <td>
                <%: item.Qty %>
            </td>
            <td>
               Php <%: item.iSRP %>.00
            </td>
            <td>
               Php <%: item.Subtotal %>.00
            </td>
            <td>
               Php <%: item.iNetPrice %>.00
            </td>
        </tr>
    
    <% } %>
          
    </table>
    </fieldset>
    </div>
    </center>
    </div>


    
 <%--<input type="button" value="Print" onclick="PrintElem('#Print')" />--%>
<html>
<head>
<script type="text/javascript" src="http://jqueryjs.googlecode.com/files/jquery-1.3.1.min.js" > </script> 
<script type="text/javascript">

    function PrintElem(elem) {
        Popup($(elem).html());
    }

    function Popup(data) {
        var mywindow = window.open('', 'my div', 'height=400,width=600');
        mywindow.document.write('<html><head><title>Print</title>');
        /*optional stylesheet*/ //mywindow.document.write('   <link href="../../Content/Site.css" rel="stylesheet" type="text/css" />');
        mywindow.document.write('</head><body >');
        mywindow.document.write(data);
        mywindow.document.write('</body></html>');

        mywindow.print();
        mywindow.close();

        return true;
    }

</script>
</head>
</html>
</asp:Content>

