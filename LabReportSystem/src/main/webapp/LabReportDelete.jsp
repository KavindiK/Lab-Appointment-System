<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%
	String Lid = request.getParameter("Lid");
	int no = Integer.parseInt(Lid);
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinelabreport","root","");
	Statement stat = conn.createStatement();
	stat.executeUpdate("delete from labtech where Lid ='" +Lid+"'");
	response.sendRedirect("ManageLabReport.jsp");
	%>