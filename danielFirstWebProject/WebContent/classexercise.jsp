<%@ page language="java" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>classexercise</title>
</head>
<body>
<%
	String anyErrors = request.getParameter("Error");
	String row = request.getParameter("row");
	String column = request.getParameter("column");
	String name = request.getParameter("name");
	if(anyErrors!=null && Integer.parseInt(row)<1){
    	out.print("Hello:");
    	out.println(name + ", PLEASE PROVIDE ROW VALUE > 1");
	}
	else if(anyErrors!=null && Integer.parseInt(column)<1){
    	out.print("Hello:");
    	out.println(name + ", PLEASE PROVIDE COLUMN VALUE > 1");
	}
    %>
<form action="createtable.jsp"><br>
<table style="text-align: left; width: 1280px; height: 116px;"
border="1" cellpadding="2" cellspacing="2">
<tbody>
<tr>
<td style="vertical-align: top; width: 635px;">Enter your name<br>
</td>
<td style="vertical-align: top; width: 625px;"><input
name="First_Name"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top; width: 635px;">Enter number of
rows<br>
</td>
<td style="vertical-align: top; width: 625px;"><input
name="Num_Rows" value="1"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top; width: 635px;">Enter number of
columns<br>
</td>
<td style="vertical-align: top; width: 625px;"><input
name="Num_columns" value="1"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top; width: 635px;"><a
href="createtable.html"><input name="Submit" value="Submit"
type="submit"></a><br>
</td>
<td style="vertical-align: top; width: 625px;"><input
name="Reset" value="Reset" type="reset"><br>
</td>
</tr>
</tbody>
</table>
</form>
<br>
<br>
</body>
</html>
