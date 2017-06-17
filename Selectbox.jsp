<html>
<head><title>Select Box</title></head>
<body>
	<form name="f1">
	<table>
		<tr>
		<td>Choose Country</td>
		<td><select name="country">
						<option>Select</option>
						<option>India</option>
						<option>USA</option>
						<option value="uk">UNited Kingdom</option>
						<option>Austriala</option>
						<option>China</option>
						</select></td>
		<td><input type="submit" name="submit"><br></td>
		<tr>
		<td>Choose State</td> 
		<td><select name='state'>
		<option>Select</option>
	
	<%
	if(request.getParameter("submit")!=null)
		{
			
			if(request.getParameter("country").equals("India"))
			{
				out.println("<option>Punjab</option>");
				out.println("<option>Himachal</option>");
				out.println("<option>Chandigarh</option>");
				out.println("<option>Delhi</option>");
			}
			
		}
	%>
	</select></td>
		<td><input type='submit' name='go' value='GO'><br></td></tr>
		
<tr>
<td>Choose City</td> 
<td><select name='city'><option>Choose</option>	
	<%
			if(request.getParameter("go")!=null)
			{
					if(request.getParameter("state").equals("Punjab"))
				{
					out.println("<option>Jalandhar</option>");
					out.println("<option>Amritsar</option>");
					out.println("<option>Phagwara</option>");
					out.println("<option>Hsp</option>");
	
				}
			}
			
		
	%>
	</select></td></tr></table>
	</form>
</body>
</html>