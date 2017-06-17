<html>
<head><title>Dynamic SelectBox</title></head>
<body>
	<form name="f1">
		<table>
			<tr>
			<td>Choose Country </td>
			<td><select name="country">
					<%
						
						if(request.getParameter("country")!=null)
						{
							out.print("<option>"+request.getParameter("country")+"</option>");
						}
						else
						{
							out.print("<option>Select</option>");
						}
					%>
					
					<option>India</option>
					<option>USA</option>
			</td>
			<td><input type="submit" name="enter1" value="Select"></td>
			</tr>
		</table>
	
	
	<%
		String s1=request.getParameter("country");
		if(request.getParameter("enter1")!=null || request.getParameter("enter2")!=null)
		{
			if(request.getParameter("country").equals("India"))
			{
				
				out.print("<form name='form2'><table><tr><td>Choose State</td>");
				out.print("<td>");
				out.print("<select name='state'>");
				if(request.getParameter("state")!=null)
				{
					out.print("<option>"+request.getParameter("state")+"</option>");
				}
			
				out.print("<option>Select</option>");
			
				out.print("<option>Punjab</option>");
				out.print("<option>Himachal</option>");
				out.print("<option>Harayana</option>");
				out.print("<option>Shimla</option>");
				out.print("</select></td>");
				out.print("<td><input type='submit' name='enter2' value='Select'></td></tr></table>");
				
				if(request.getParameter("enter2")!=null)
				{
					if(request.getParameter("state").equals("Punjab"))
					{
						out.print("<table><tr><td>Choose City</td>");
						out.print("<td>");
						out.print("<select name='city'><option>Select</option>");
						out.print("<option>Jalandhar</option>");
						out.print("<option>LDH</option>");
						out.print("<option>Phagwara</option>");
						out.print("</select></td>");
						out.print("<td><input type='submit' name='enter2' value='Select'></td></tr></table>");
					}
				}
			}
		}
	%>
	</form>
	</form>
</body>
</html>