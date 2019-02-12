<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<CDMASType.CDMAS>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Cart
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">



 <ul id="menu">              
                    | <li><%: Html.ActionLink("Home", "Index", "Home")%></li> | 
                    <li><%: Html.ActionLink("About","About","Home") %></li> | 
                    <li><%: Html.ActionLink("Shopping Cart", "Cart", "OrderInfo")%></li> | 
                </ul>
                <br />
                <br />
<center>
    <h2>Cart</h2>
    <div align= "center"style="height:310px; overflow: auto;">
    <table>
        <tr>
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
            <th></th>
       
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
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
               Php <%: item.Subtotal %>.00
            </td>
             <td>
                <%: Html.ActionLink("Edit", "Edit",  new { oID = item.oID}, new{ @class = "modal" }) %> |
                <%: Html.ActionLink("Delete", "Delete", new { oID = item.oID }, new { @class = "modal" })%>
            </td>
        </tr>
    
    <% } %>

    </table>
    </div>
    <p>
    <% foreach (var item in Model.Take(1))
       { %>
      Total: <strong>Php <%: item.Total %></strong>

    <%} %>
    </p>
    <p style="font-size:large">
    <%: Html.ActionLink ("Continue Shopping","Index", "Home") %> | 
        <%: Html.ActionLink("Check Out", "Customer", "OrderInfo")%>
    </p>
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
            div.load("/OrderInfo/", function () {
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








</asp:Content>

