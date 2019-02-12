<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<CDMASType.CDMAS>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	CD Marzo Auto S
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

 <ul id="menu">              
    | <li><%: Html.ActionLink("Home", "Index", "Home")%></li> | 
    <li><%: Html.ActionLink("About","About","Home") %></li> | 
    <li><%: Html.ActionLink("Shopping Cart", "Cart", "OrderInfo")%></li> | 
</ul>
<br />
<br />



    <link href="../../Content/Site.css" rel="stylesheet" type="text/css" />
    <link href="../../Content/MyStyle.css" rel="stylesheet" type="text/css" />
    	<div>
        
        <%--<input id="myInput"  type"text" onkeyup="myFunction()" placeholder="Search for item id.." />--%>
    <button class="tablink" onclick="filterSelection('engineoil')" name="category">Engine Oil</button>
    <button class="tablink"  onclick="filterSelection('oilfilter')" name="category">Oil Filter</button>
    <button class="tablink" onclick="filterSelection('battery')" name="category">Battery</button>
 <%--   <button class="tablink" onlick="filterSelection('newarrival')" name="newarrival">New Arrival</button>--%>
 <div align= "center"style="height:420px; overflow: auto;">
    <table id="myTable" style ="width:100%">
    <tr style="text-align:center">
    <td>
     <div class="filterDiv engineoil">
     <div class ="tooltip">
		<% using (Html.BeginForm("Create", "OrderInfo"))
     {%>
        <%: Html.ValidationSummary(true)%>					 
   
    <a href="#"><img src="../../Content/Images/La_total_AP_B2B_img_284x353_Quartz_2500_201303_ENG,0.png" alt="" style="width:200px; height:249px" /></a>
	<span class="tooltiptext">Quartz 2500 SAE 40 API-SF (1L)<br /><br />Php 170.00</span>
    <p>
        Item Name: <span>Quartz 2500 SAE 40 API-SF (1L)</span><br />
        Description: <span>1 Liter. Monograde oil for gasoline engine.</span><br />
        Category: <span>Engine Oil</span>
    </p>
    <p class="price">Price: <strong>Php 170.00</strong></p>
      
       <div class="editor-label">
                <%: Html.HiddenFor(model => model.iID, new {@Value = "1", @Type ="hidden"}) %>
            </div>
         
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Qty) %>
            </div>
            <div class="editor-field">
               <%-- <%: Html.TextBoxFor(model => model.Qty) %>--%>
               <input type = "number" name ="Qty" />
                <%: Html.ValidationMessageFor(model => model.Qty) %>
            </div>
    <button type="submit" value="Create" class="button_1" />Add to Cart</button>

    
   <% Html.EndForm(); %>
         <% } %>
         </div>
	</div>
      <div class="filterDiv engineoil">
      <div class ="tooltip">
<% using (Html.BeginForm("Create", "OrderInfo"))
     {%>
        <%: Html.ValidationSummary(true)%>					 
  
    <a href="#"><img src="../../Content/Images/La_total_AP_B2B_img_284x353_Quartz_2500_201303_ENG,0.png" alt="" style="width:200px; height:249px" /></a>
    <span class="tooltiptext">Quartz 2500 SAE 40 API-SF (G)<br /><br />Php 550.00</span>
	<p>
        Item Name: <span>Quartz 2500 SAE 40 API-SF (G)</span><br />
        Description: <span>Gallon. Monograde oil for gasoline engine.</span><br />
        Category: <span>Engine Oil</span>
    </p>
    <p class="price">Price: <strong>Php 550.00</strong></p>
      
       <div class="editor-label">
                <%: Html.HiddenFor(model => model.iID, new {@Value = "2", @Type ="hidden"}) %>
            </div>
         
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Qty) %>
            </div>
            <div class="editor-field">
               <input type = "number" name ="Qty" />
                <%: Html.ValidationMessageFor(model => model.Qty) %>
            </div>
    <button type="submit" value="Create" class="button_1"/>Add to Cart</button>

    
   <% Html.EndForm(); %>
                <% } %>
  </div>
  </div>
  
  <div class="filterDiv engineoil">
  <div class ="tooltip">
<% using (Html.BeginForm("Create", "OrderInfo"))
     {%>
        <%: Html.ValidationSummary(true)%>					 
   
    <a href="#"><img src="../../Content/Images/LA_B2C_img_284x353_QUARTZ_5000_SN_10W40_20W50_201302_ENG.png" alt="" style="width:180px; height:220px" /></a>
    <span class="tooltiptext">Quartz 5000 20W50 API-SN (1L)<br /><br />Php 250.00</span>
	<p>
        Item Name: <span>Quartz 5000 20W50 API-SN (1L)</span><br />
        Description: <span>1 Liter. Gasoline/diesel engine(Ford GM, PSA, BMW, VW, Audio, Mercedes-Benz) Premium high performance multigrade oil for passenger car engine.</span><br />
        Category: <span> Oil</span>
    </p>
    <p class="price">Price: <strong>Php 250.00</strong></p>
      
       <div class="editor-label">
                <%: Html.HiddenFor(model => model.iID, new {@Value = "3", @Type ="hidden"}) %>
            </div>
         
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Qty) %>
            </div>
            <div class="editor-field">
                 <input type = "number" name ="Qty" />
                <%: Html.ValidationMessageFor(model => model.Qty) %>
            </div>
    <button type="submit" value="Create" class="button_1"/>Add to Cart</button>

    
   <% Html.EndForm(); %>
                <% } %>
    </div>
    </div>
    
     <div class="filterDiv engineoil">
     <div class ="tooltip">
<% using (Html.BeginForm("Create", "OrderInfo"))
     {%>
        <%: Html.ValidationSummary(true)%>					 
   
    <a href="#"><img src="../../Content/Images/LA_B2C_img_284x353_QUARTZ_5000_SN_10W40_20W50_201302_ENG.png" alt="" style="width:180px; height:220px" /></a>
     <span class="tooltiptext">Quartz 5000 20W50 API-SN (G)<br /><br />Php 800.00</span>
	<p>
        Item Name: <span>Quartz 5000 20W50 API-SN (G)</span><br />
        Description: <span>Gallon. Gasoline/diesel engine(Ford GM, PSA, BMW, VW, Audio, Mercedes-Benz) Premium high performance multigrade oil for passenger car engine.</span><br />
        Category: <span>Engine Oil</span>
    </p>
    <p class="price">Price: <strong>Php 800.00</strong></p>
      
       <div class="editor-label">
                <%: Html.HiddenFor(model => model.iID, new {@Value = "4", @Type ="hidden"}) %>
            </div>
         
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Qty) %>
            </div>
            <div class="editor-field">
              <input type = "number" name ="Qty" />
                <%: Html.ValidationMessageFor(model => model.Qty) %>
            </div>
    <button type="submit" value="Create"class="button_1" />Add to Cart</button>

   
   <% Html.EndForm(); %>
                <% } %>
               
    		 </div>	
             </div>	 
    <div class="filterDiv engineoil">
    <div class ="tooltip">
<% using (Html.BeginForm("Create", "OrderInfo"))
     {%>
        <%: Html.ValidationSummary(true)%>	
    <a href="#"><img src="../../Content/Images/La_total_AP_B2B_img_284x353_Rubia_C_201303_ENG,0.png" alt="" style="width:180px; height:220px" /></a>
     <span class="tooltiptext">Rubia C 40 API-CD (1L)<br /><br />Php 160.00</span>
	<p>
        Item Name: <span>Rubia C 40 API-CD (1L)</span><br />
        Description: <span>1 Liter. Monograde oil for Diesel Engines/All Diesel turbocharged or normally aspiratid engines</span><br />
        Category: <span>Engine Oil</span>
    </p>
    <p class="price">Price: <strong>Php 160.00</strong></p>
      
       <div class="editor-label">
                <%: Html.HiddenFor(model => model.iID, new {@Value = "5", @Type ="hidden"}) %>
            </div>
         
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Qty) %>
            </div>
            <div class="editor-field">
               <input type = "number" name ="Qty" />
                <%: Html.ValidationMessageFor(model => model.Qty) %>
            </div>
    <button type="submit" value="Create" class="button_1"/>Add to Cart</button>

    
   <% Html.EndForm(); %>
                <% } %>
  </div>
  </div>
  
   <div class="filterDiv engineoil">
   <div class ="tooltip">
<% using (Html.BeginForm("Create", "OrderInfo"))
     {%>
        <%: Html.ValidationSummary(true)%>					 
  
    <a href="#"><img src="../../Content/Images/La_total_AP_B2B_img_284x353_Rubia_C_201303_ENG,0.png" alt="" style="width:180px; height:220px" /></a>
    <span class="tooltiptext">Rubia C 40 API-CD (G)<br /><br />Php 180.00</span>
	<p>
        Item Name: <span>Rubia C 40 API-CD (G)</span><br />
        Description: <span>Gallon. Monograde oil for Diesel Engines/All Diesel turbocharged or normally aspiratid engines</span><br />
        Category: <span>Engine Oil</span>
    </p>
    <p class="price">Price: <strong>Php 180.00</strong></p>
      
       <div class="editor-label">
                <%: Html.HiddenFor(model => model.iID, new {@Value = "6", @Type ="hidden"}) %>
            </div>
         
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Qty) %>
            </div>
            <div class="editor-field">
               <input type = "number" name ="Qty" />
                <%: Html.ValidationMessageFor(model => model.Qty) %>
            </div>
    <button type="submit" value="Create" class="button_1"/>Add to Cart</button>

   <% Html.EndForm(); %>
                <% } %>
</div>
    </div>
<div class="filterDiv engineoil">
<div class ="tooltip">
<% using (Html.BeginForm("Create", "OrderInfo"))
     {%>
        <%: Html.ValidationSummary(true)%>					 
    
    <a href="#"><img src="../../Content/Images/Img_4-1-5.Rubia-XT-15w40_300x400,0.png" alt="" style="width:180px; height:220px" /></a>
    <span class="tooltiptext">Rubia XT 40 15W40 CF-4/SJ (1L)<br /><br />Php 220.00</span>
	<p>
        Item Name: <span>Rubia XT 40 15W40 CF-4/SJ (1L)</span><br />
        Description: <span>1 Liter. Multi-grade oil for  diesel engine,turbochanged or not, in severe service conditions in all seasons Suited for exended drain intervals(up to 30,000 km according to manufactures).</span><br />
        Category: <span>Engine Oil</span>
    </p>
    <p class="price">Price: <strong>Php 220.00</strong></p>
      
       <div class="editor-label">
                <%: Html.HiddenFor(model => model.iID, new {@Value = "7", @Type ="hidden"}) %>
            </div>
         
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Qty) %>
            </div>
            <div class="editor-field">
                 <input type = "number" name ="Qty" />
                <%: Html.ValidationMessageFor(model => model.Qty) %>
            </div>
    <button type="submit" value="Create"class="button_1" />Add to Cart</button>

    
   <% Html.EndForm(); %>
                <% } %>
    
    </div>
    </div>
    
     <div class="filterDiv engineoil">
     <div class ="tooltip">
<% using (Html.BeginForm("Create", "OrderInfo"))
     {%>
        <%: Html.ValidationSummary(true)%>					 
   
    <a href="#"><img src="../../Content/Images/Img_4-1-5.Rubia-XT-15w40_300x400,0.png" alt="" style="width:180px; height:220px" /></a>
     <span class="tooltiptext">Rubia XT 40 15W40 CF-4/SJ (G)<br /><br />Php 720.00</span>
	<p>
        Item Name: <span>Rubia XT 40 15W40 CF-4/SJ (G)</span><br />
        Description: <span>Gallon. Multi-grade oil for  diesel engine,turbochanged or not, in severe service conditions in all seasons Suited for exended drain intervals(up to 30,000 km according to manufactures).</span><br />
        Category: <span>Engine Oil</span>
    </p>
    <p class="price">Price: <strong>Php 720.00</strong></p>
      
       <div class="editor-label">
                <%: Html.HiddenFor(model => model.iID, new {@Value = "8", @Type ="hidden"}) %>
            </div>
         
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Qty) %>
            </div>
            <div class="editor-field">
               <input type = "number" name ="Qty" />
                <%: Html.ValidationMessageFor(model => model.Qty) %>
            </div>
    <button type="submit" value="Create"class="button_1" />Add to Cart</button>

   
   <% Html.EndForm(); %>
                <% } %>
    </div>
     </div>
    
     <div class="filterDiv oilfilter">
     <div class ="tooltip">
<% using (Html.BeginForm("Create", "OrderInfo"))
     {%>
        <%: Html.ValidationSummary(true)%>					 
    
    <a href="#"><img src="../../Content/Images/Bosch-Oil-Filter.jpg" alt="" style="width:200px; height:200px" /></a>
    <span class="tooltiptext">Bosch OF-101 (0 986 AF1 044 - 4P1)<br /><br />Php 175.00</span>
	<p>
        Item Name: <span>Bosch OF-101 (0 986 AF1 044 - 4P1)</span><br />
        Application: <span>Toyota Revo (Diesel), Toyota 4-Runner (Diesel), Toyota Hi-Ace (Diesel), Toyotal Hi-Lux (Diesel), Ford Everest (Diesel), Ford Ranger Trekker (Diesel).</span><br />
        Category: <span>Oil Filter</span>
    </p>
    <p class="price">Price: <strong>Php 175.00</strong></p>
      
       <div class="editor-label">
                <%: Html.HiddenFor(model => model.iID, new {@Value = "9", @Type ="hidden"}) %>
            </div>
         
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Qty) %>
            </div>
            <div class="editor-field">
                <input type = "number" name ="Qty" />
                <%: Html.ValidationMessageFor(model => model.Qty) %>
            </div>
    <button type="submit" value="Create" class="button_1"/>Add to Cart</button>

  
   <% Html.EndForm(); %>
                <% } %>
      </div>
      </div>
    
       <div class="filterDiv oilfilter">
       <div class ="tooltip">
<% using (Html.BeginForm("Create", "OrderInfo"))
     {%>
        <%: Html.ValidationSummary(true)%>					 
 
    <a href="#"><img src="../../Content/Images/Bosch-Oil-Filter.jpg" alt="" style="width:200px; height:200px" /></a>
    <span class="tooltiptext">Bosch OF-110 (0 986 AF1 041 - 4P1)<br /><br />Php 150.00</span>
	<p>
        Item Name: <span>Bosch OF-110 (0 986 AF1 041 - 4P1)</span><br />
        Application: <span>Toyota Corolla / Corolla Altis, Toyota Vios, Toyota Echo / Yaris, Toyota Corona, Toyota Carmy, Toyota RAV4.</span><br />
        Category: <span>Oil Filter</span>
    </p>
    <p class="price">Price: <strong>Php 150.00</strong></p>
      
       <div class="editor-label">
                <%: Html.HiddenFor(model => model.iID, new {@Value = "10", @Type ="hidden"}) %>
            </div>
         
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Qty) %>
            </div>
            <div class="editor-field">
                 <input type = "number" name ="Qty" />
                <%: Html.ValidationMessageFor(model => model.Qty) %>
            </div>
    <button type="submit" value="Create" class="button_1"/>Add to Cart</button>

  
   <% Html.EndForm(); %>
                <% } %>
    </div>
    </div>
  
  
   <div class="filterDiv oilfilter">
   <div class ="tooltip">
<% using (Html.BeginForm("Create", "OrderInfo"))
     {%>
        <%: Html.ValidationSummary(true)%>					 
    
    <a href="#"><img src="../../Content/Images/Bosch-Oil-Filter.jpg" alt="" style="width:200px; height:200px" /></a>
    <span class="tooltiptext">Bosch OF-209 (0 986 AF1 067 - 4P1)<br /><br />Php 190.00</span>
	<p>
        Item Name: <span>Bosch OF-209 (0 986 AF1 067 - 4P1)</span><br />
        Application: <span>Nissan Patrol 4.2 (Diesel), Nissan Urvan (Diesel), Nissan Frontier Pick-Up (Diesel)</span><br />
        Category: <span>Oil Filter</span>
    </p>
    <p class="price">Price: <strong>Php 190.00</strong></p>
      
       <div class="editor-label">
                <%: Html.HiddenFor(model => model.iID, new {@Value = "11", @Type ="hidden"}) %>
            </div>
         
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Qty) %>
            </div>
            <div class="editor-field">
                 <input type = "number" name ="Qty" />
                <%: Html.ValidationMessageFor(model => model.Qty) %>
            </div>
    <button type="submit" value="Create"class="button_1" />Add to Cart</button>

   <% Html.EndForm(); %>
                <% } %>
                </div>
    </div>


     <div class="filterDiv oilfilter">
     <div class ="tooltip">
<% using (Html.BeginForm("Create", "OrderInfo"))
     {%>
        <%: Html.ValidationSummary(true)%>					 
   
    <a href="#"><img src="../../Content/Images/Bosch-Oil-Filter.jpg" alt="" style="width:200px; height:200px" /></a>
    <span class="tooltiptext">Bosch OF-204 (0 986 AF1 052 - 4P1)<br /><br />Php 300.00</span>
	<p>
        Item Name: <span>Bosch OF-204 (0 986 AF1 052 - 4P1)</span><br />
        Application: <span>Nissan Patrol 3.2 (Safari Series, SD33 Engine), Nissan Pick-Up 2.5 (SD25 Engine).</span><br />
        Category: <span>Oil Filter</span>
    </p>
    <p class="price">Price: <strong>Php 300.00</strong></p>
      
       <div class="editor-label">
                <%: Html.HiddenFor(model => model.iID, new {@Value = "12", @Type ="hidden"}) %>
            </div>
         
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Qty) %>
            </div>
            <div class="editor-field">
                 <input type = "number" name ="Qty" />
                <%: Html.ValidationMessageFor(model => model.Qty) %>
            </div>
    <button type="submit" value="Create"class="button_1" />Add to Cart</button>

   
   <% Html.EndForm(); %>
                <% } %>
                </div>
     </div>
 <div class="filterDiv oilfilter">
 <div class ="tooltip">
<% using (Html.BeginForm("Create", "OrderInfo"))
     {%>
        <%: Html.ValidationSummary(true)%>					 
   
    <a href="#"><img src="../../Content/Images/Bosch-Oil-Filter.jpg" alt="" style="width:200px; height:200px" /></a>
    <span class="tooltiptext">Bosch OF-306 (0 986 AF1 036 - 4P1)<br /><br />Php 370.00</span>
	<p>
        Item Name: <span>Bosch OF-306 (0 986 AF1 036 - 4P1)</span><br />
        Application: <span>Mitsubishi Pajero (Deisel), Mitsubishi L200 (Deisel),Mitsubishi L300 (Deisel)Mitsubishi Adventure(Deisel).</span><br />
        Category: <span>Oil Filter</span>
    </p>
    <p class="price">Price: <strong>Php 370.00</strong></p>
      
       <div class="editor-label">
                <%: Html.HiddenFor(model => model.iID, new {@Value = "13", @Type ="hidden"}) %>
            </div>
         
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Qty) %>
            </div>
            <div class="editor-field">
                <input type = "number" name ="Qty" />
                <%: Html.ValidationMessageFor(model => model.Qty) %>
            </div>
    <button type="submit" value="Create" class="button_1"/>Add to Cart</button>

    
   <% Html.EndForm(); %>
                <% } %>
    </div>
    </div>
    
     <div class="filterDiv oilfilter">
     <div class ="tooltip">
<% using (Html.BeginForm("Create", "OrderInfo"))
     {%>
        <%: Html.ValidationSummary(true)%>					 
   
    <a href="#"><img src="../../Content/Images/Bosch-Oil-Filter.jpg" alt="" style="width:200px; height:200px" /></a>
    <span class="tooltiptext">Bosch OF-313 (0 986 AF1 084 - 4P1)<br /><br />Php 455.00</span>
	<p>
        Item Name: <span>Bosch OF-313 (0 986 AF1 084 - 4P1)</span><br />
        Application: <span>Mitsubishi Pajero FieldMaster.</span><br />
        Category: <span>Oil Filter</span>
    </p>
    <p class="price">Price: <strong>Php 455.00</strong></p>
      
       <div class="editor-label">
                <%: Html.HiddenFor(model => model.iID, new {@Value = "14", @Type ="hidden"}) %>
            </div>
         
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Qty) %>
            </div>
            <div class="editor-field">
                <input type = "number" name ="Qty" />
                <%: Html.ValidationMessageFor(model => model.Qty) %>
            </div>
    <button type="submit" value="Create"class="button_1" />Add to Cart</button>

   <% Html.EndForm(); %>
                <% } %>
    </div>
    </div>
   
    <div class="filterDiv oilfilter">
    <div class ="tooltip">
<% using (Html.BeginForm("Create", "OrderInfo"))
     {%>
        <%: Html.ValidationSummary(true)%>					 
   
    <a href="#"><img src="../../Content/Images/Bosch-Oil-Filter.jpg" alt="" style="width:200px; height:200px" /></a>
    <span class="tooltiptext">Bosch OF-305 (0 986 AF1 040 - 4P1)<br /><br />Php 210.00</span>
	<p>
        Item Name: <span>Bosch OF-305 (0 986 AF1 040 - 4P1)</span><br />
         Description: <span>Secondary Filter, Mitsubishi Canter (4D30 Engine).</span><br />
        Category: <span>Oil Filter</span>
    </p>
    <p class="price">Price: <strong>Php 210.00</strong></p>
      
       <div class="editor-label">
                <%: Html.HiddenFor(model => model.iID, new {@Value = "15", @Type ="hidden"}) %>
            </div>
         
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Qty) %>
            </div>
            <div class="editor-field">
                 <input type = "number" name ="Qty" />
                <%: Html.ValidationMessageFor(model => model.Qty) %>
            </div>
    <button type="submit" value="Create"class="button_1" />Add to Cart</button>

   <% Html.EndForm(); %>
                <% } %>
    </div>
    </div>
    

<div class="filterDiv oilfilter">
<div class ="tooltip">
<% using (Html.BeginForm("Create", "OrderInfo"))
     {%>
        <%: Html.ValidationSummary(true)%>					 
    
    <a href="#"><img src="../../Content/Images/Bosch-Oil-Filter.jpg" alt="" style="width:200px; height:200px" /></a>
    <span class="tooltiptext">Bosch OF-412 (0 986 AF1 074 - 4P1)<br /><br />Php 375.00</span>
	<p>
        Item Name: <span>Bosch OF-412 (0 986 AF1 074 - 4P1)</span><br />
         Description: <span>Application: Isuzu Trooper (4JH1 Engine), Isuzu Trooper (4JH1-T Engine).</span><br />
        Category: <span>Oil Filter</span>
    </p>
    <p class="price">Price: <strong>Php 375.00</strong></p>
      
       <div class="editor-label">
                <%: Html.HiddenFor(model => model.iID, new {@Value = "16", @Type ="hidden"}) %>
            </div>
         
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Qty) %>
            </div>
            <div class="editor-field">
                <input type = "number" name ="Qty" />
                <%: Html.ValidationMessageFor(model => model.Qty) %>
            </div>
    <button type="submit" value="Create"class="button_1" />Add to Cart</button>

    
   <% Html.EndForm(); %>
                <% } %>
</div>
</div>


   <div class="filterDiv oilfilter">
   <div class ="tooltip">
<% using (Html.BeginForm("Create", "OrderInfo"))
     {%>
        <%: Html.ValidationSummary(true)%>					 
    
    <a href="#"><img src="../../Content/Images/Bosch-Oil-Filter.jpg" alt="" style="width:200px; height:200px" /></a>
    <span class="tooltiptext">Bosch OF-512 (0 986 AF1 055 - 4P1)<br /><br />Php 260.00</span>
	<p>
        Item Name: <span>Bosch OF-512 (0 986 AF1 055 - 4P1)</span><br />
         Description: <span>Application: Isuzu Fuego,Isuzu Hi-lander(old),Isuzu (4JB1/4JA1Engine).</span><br />
        Category: <span>Oil Filter</span>
    </p>
    <p class="price">Price: <strong>Php 260.00</strong></p>
      
       <div class="editor-label">
                <%: Html.HiddenFor(model => model.iID, new {@Value = "17", @Type ="hidden"}) %>
            </div>
         
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Qty) %>
            </div>
            <div class="editor-field">
                 <input type = "number" name ="Qty" />
                <%: Html.ValidationMessageFor(model => model.Qty) %>
            </div>
    <button type="submit" value="Create"class="button_1" />Add to Cart</button>

   <% Html.EndForm(); %>
                <% } %>
    </div>
    </div>

    <div class="filterDiv battery">
    <div class ="tooltip">
<% using (Html.BeginForm("Create", "OrderInfo"))
     {%>
        <%: Html.ValidationSummary(true)%>					 
    
    <a href="#"><img src="../../Content/Images/Enduro.png" alt="" style="width:200px; height:200px" /></a>
    <span class="tooltiptext">MOTOLITE Enduro 15 DIN44<br /><br />Php 4680.00</span>
	<p>
        Item Name: <span>MOTOLITE Enduro 15 DIN44</span><br />
         Description: <span>DIN44</span><br />
        Category: <span>Battery</span>
    </p>
    <p class="price">Price: <strong>Php 4680.00</strong></p>
      
       <div class="editor-label">
                <%: Html.HiddenFor(model => model.iID, new {@Value = "18", @Type ="hidden"}) %>
            </div>
         
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Qty) %>
            </div>
            <div class="editor-field">
                 <input type = "number" name ="Qty" />
                <%: Html.ValidationMessageFor(model => model.Qty) %>
            </div>
    <button type="submit" value="Create"class="button_1" />Add to Cart</button>

   
   <% Html.EndForm(); %>
                <% } %>
    </div>
    </div>


      <div class="filterDiv battery">
      <div class ="tooltip">
<% using (Html.BeginForm("Create", "OrderInfo"))
     {%>
        <%: Html.ValidationSummary(true)%>					 
  
    <a href="#"><img src="../../Content/Images/Enduro.png" alt="" style="width:200px; height:200px" /></a>
    <span class="tooltiptext">MOTOLITE Enduro 15 NS40<br /><br />Php 3730.00</span>
	<p>
        Item Name: <span>MOTOLITE Enduro 15 NS40</span><br />
         Description: <span>NS40</span><br />
        Category: <span>Battery</span>
    </p>
    <p class="price">Price: <strong>Php 3730.00</strong></p>
      
       <div class="editor-label">
                <%: Html.HiddenFor(model => model.iID, new {@Value = "19", @Type ="hidden"}) %>
            </div>
         
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Qty) %>
            </div>
            <div class="editor-field">
                <input type = "number" name ="Qty" />
                <%: Html.ValidationMessageFor(model => model.Qty) %>
            </div>
    <button type="submit" value="Create" class="button_1"/>Add to Cart</button>

   
   <% Html.EndForm(); %>
                <% } %>
 </div>
 </div>
<div class="filterDiv battery">
<div class ="tooltip">
  
<% using (Html.BeginForm("Create", "OrderInfo"))
     {%>
        <%: Html.ValidationSummary(true)%>					 
     
    <a href="#"><img src="../../Content/Images/Enduro.png" alt="" style="width:200px; height:200px" /></a>
    <span class="tooltiptext">MOTOLITE Enduro 15 NS60<br /><br />Php 4260.00</span>
	<p>
        Item Name: <span>MOTOLITE Enduro 15 NS60</span><br />
         Description: <span>ALS/ARS</span><br />
        Category: <span>Battery</span>
    </p>
    <p class="price">Price: <strong>Php 4260.00</strong></p>
      
       <div class="editor-label">
                <%: Html.HiddenFor(model => model.iID, new {@Value = "20", @Type ="hidden"}) %>
            </div>
         
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Qty) %>
            </div>
            <div class="editor-field">
                 <input type = "number" name ="Qty" />
                <%: Html.ValidationMessageFor(model => model.Qty) %>
            </div>
    <button type="submit" value="Create"class="button_1" />Add to Cart</button>

    
   <% Html.EndForm(); %>
<% } %>

       </div>         
 </div>
 </td>
 </tr>
 </table>
 </div>
		
<script>
    filterSelection("all")
    function filterSelection(c) {
        var x, i;
        x = document.getElementsByClassName("filterDiv");
        if (c == "all") c = "";
        for (i = 0; i < x.length; i++) {
            w3RemoveClass(x[i], "show");
            if (x[i].className.indexOf(c) > -1) w3AddClass(x[i], "show");
        }
    }

    function w3AddClass(element, name) {
        var i, arr1, arr2;
        arr1 = element.className.split(" ");
        arr2 = name.split(" ");
        for (i = 0; i < arr2.length; i++) {
            if (arr1.indexOf(arr2[i]) == -1) { element.className += " " + arr2[i]; }
        }
    }

    function w3RemoveClass(element, name) {
        var i, arr1, arr2;
        arr1 = element.className.split(" ");
        arr2 = name.split(" ");
        for (i = 0; i < arr2.length; i++) {
            while (arr1.indexOf(arr2[i]) > -1) {
                arr1.splice(arr1.indexOf(arr2[i]), 1);
            }
        }
        element.className = arr1.join(" ");
    }
</script>
<%--
<script>
    function myFunction() {
        var input, filter, found, table, tr, td, i, j;
        input = document.getElementById(S"myInput");
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
</script>--%>
</div>
</asp:Content>

