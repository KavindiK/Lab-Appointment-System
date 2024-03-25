<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%
	String dID = request.getParameter("dID");
	int no = Integer.parseInt(dID);
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinelabreport","root","");
	Statement stat = conn.createStatement();
	stat.executeUpdate("delete from docrecomm where dID ='" +dID+"'");
	response.sendRedirect("ManageDoctorRecommend.jsp");
	%>