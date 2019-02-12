<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	About
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

 <ul id="menu">              
                   | <li><%: Html.ActionLink("Home", "Index", "Home")%></li> | 
                    <li><%: Html.ActionLink("About","About","Home") %></li> | 
                    <li><%: Html.ActionLink("Shopping Cart", "Cart", "OrderInfo")%></li> | 
                </ul>
                <br />
                <br />
<div style="text-align:center; font-size:x-large">
    <h2>CD Marzo Auto Shop</h2>
    <br />
Located at 14 P.Laygo St. Sabang, Lipa City, Batangas, Philippines<br /><br />
For inquiries: 09175406301 or (043) 757-4502
<br />
<br />
</div>
</asp:Content>
