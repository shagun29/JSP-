<!-- Without using values in the checkboxes-->
<html>
<head><title>Checkbox</title></head>
<body>
<h1>Place your Order</h1>
<form name="f1">
	<label><input type="checkbox" name="pizza">Pizza Rs.100</label><br>
	<label><input type="checkbox" name="burger">Burger Rs.25</label><br>
	<label><input type="checkbox" name="pepsi">Pepsi Rs.20</label><br>
	<label><input type="checkbox" name="juice">Juice Rs.20</label><br>
	<label><input type="checkbox" name="sandwich">Sandwich Rs.50</label><br>
	<input type="submit" name="cal" value="Total">
	</form>
<%
	double cost=0,dis=0;
	if(request.getParameter("cal")!=null)
	{
		if(request.getParameter("pizza")!=null)
			cost+=100;
		if(request.getParameter("burger")!=null)
			cost+=25;
		if(request.getParameter("juice")!=null)
			cost+=20;
		if(request.getParameter("pepsi")!=null)
			cost+=20;
		if(request.getParameter("sandwich")!=null)
			cost+=50;
		
		out.println("Total = "+cost+ "/-<br>");
		
		if(cost>200)
		{
			dis=0.1*200;
			cost=cost-dis;
			out.println("Our Price = "+cost+ "/-");
		}
		else if(cost>100)
		{
			dis=0.07*200;
			cost=cost-dis;
			out.println("Our Price = "+cost+ "/-");
		}
		else if(cost>50)
		{
			dis=0.05*200;
			cost=cost-dis;
			out.println("Our Price = "+cost+ "/-");
		}
		
		
	
	}
%>
</body>
</html>

