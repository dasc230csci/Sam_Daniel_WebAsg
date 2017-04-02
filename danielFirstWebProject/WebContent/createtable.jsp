<%@ page language="java" import = "java.util.*"%>
    <%
    String row = request.getParameter("Num_Rows");
    String column = request.getParameter("Num_columns");
    String firstName = request.getParameter("First_Name");
    if(Integer.parseInt(row) < 1 || Integer.parseInt(column) < 1){
    	response.sendRedirect("classexercise.jsp?Error=1&row="+row+"&column="+column+"&name="+firstName);
    }
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>createtable</title>
</head>
<body style="background-color: rgb(2, 5, 2); color: rgb(0, 0, 0);"
alink="#ee0000" link="#0000ee" vlink="#551a8b">
<span style="color: white;">
<%
	out.print("Hello " + firstName + ". Here is your table");
%>
</span>
<table style="text-align: left; width: 100px; height: 30px;" border="1"
cellpadding="2" cellspacing="2">
<tbody>
<%
 for(int i = 1; i <= Integer.parseInt(row); i++){
	 out.println("<tr>");
	 for(int j = 1 ; j <= Integer.parseInt(column); j++){
		 out.println("<td style=" + "'vertical-align: top;'" + ">"+ "<" + "span" +
				 " style" + "=" + "'background-color: white;'" + ">" + i +"," +j+ "</span>" + "<br>");
		 out.println("</td>");
	 }
	 out.println("</tr>");
 }
%>
</tbody>
</table>
<span style="color: white;"></span><br>
</body>
</html>
