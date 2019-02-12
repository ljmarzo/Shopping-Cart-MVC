<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<CDMASType.CDMAS>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Sales
</asp:Content>
  
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server"> 

<ul id="menu">              
                    | <li><%: Html.ActionLink("Customers", "Customers", "Admin")%></li> | 
                    <li><%: Html.ActionLink("Inventory","Index","Item") %></li> | 
                    <li><%: Html.ActionLink("Orders", "Orders", "Admin")%></li> | 
                </ul> 
                <br />
                <br />
               
<div align= "center"style="height:430px; overflow: auto;">
<center>

    <fieldset>
    <h2>Sales</h2>
    <input type"text" id="myInput" onkeyup="myFunction()" style="width:500px; border: 1px solid #1a8637" placeholder="Search for item.." />
  <div id = "Print">
  <p>
    <% foreach (var item in Model.Take(1))
       { %>
      Gross Sales: <strong>Php <%: item.GrossSales %></strong> <br />
      Net Sales: <strong>Php <%: item.NetSales %></strong>

    <%} %>
    </p>


       <strong><%: Html.ActionLink("Today's Sales", "TodaysSales", "Admin")%> </strong>
       <br />
       <br />

    <table id="myTable">
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
            <th>
                Net Total
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
            <td>
               Php <%: item.NetTotal %>.00
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
            div.load("/Admin/ShowSales", function () {
                div.dialog({
                    modal: true,
                    width: 500,
                    height: 438,
                    resizable: false
                });
            });
        }

        $(function () {
            $('#DivToAppendPartialView').dialog({
                autoOpen: false,
                width: 300,
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
</div>


<input type="button" value="Print" onclick="PrintElem('#Print')" />  
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

