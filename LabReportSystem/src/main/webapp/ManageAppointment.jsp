<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "onlinelabreport";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
   
<!DOCTYPE html>
<html>
<head>
<style>
.button{

	height: 75px;
	margin: 85px 0;
	margin-top: -15px;
	margin-left: 240px
}

.button{

height: 100%;
width: 40%;
padding: 20px 32px;
outline: none;
color: #fff;
background: linear-gradient(135deg,#0F2027, #203A43,#2C5364);
border: none;
font-size: 14px;
font-weight: 500;
border-radius: 5px;
letter-spacing: 1px;
margin: 600px;
}
</style>
	<title>Home</title>
	<link rel="stylesheet" type="text/css" href="css/nav.css">
	<link href="css/table.css" type="text/css" rel="stylesheet">
</head>
<body>
	<header>
		<nav>
			<ul>
				<li><a href="Index.jsp">Home</a></li>
				<li><a href="ServiceDashboard.jsp">Services</a></li>
				<lii><a href="Index.jsp"> Log Out</a></lii>
			</ul>
		</nav>
	</header>

<h2>Appointment Details</h2>


        
<div class="">
			  <center>
							
							<table id="mytable" class="content-table">
								 
								 <thead>
								 <th scope="col">ID</th>
								 <th scope="col">Patient Name</th>
								 <th scope="col">Patient Address</th>
								  <th scope="col">Phone</th>
								   <th scope="col">NIC</th>
								   <th scope="col">Doctor Name</th>
								 <th scope="col">Hospital</th>
								  <th scope="col">Date</th>
								   <th scope="col">Time</th>
								   <th scope="col">Payment Method</th>
								 <th scope="col">Card No</th>
								  <th scope="col">CVC</th>
								   <th scope="col">Amount</th>
								   
								  
									<th>Update</th>
									
									 <th>Delete</th>
								 </thead>
				  
				  
				 <%			  
				 try {
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from patient";
resultSet = statement.executeQuery(sql);
int i=0;
while(resultSet.next()){
%>
				  <tbody>
				  
				  <tr>
				  <td><%=resultSet.getInt("id") %></td>
				  <td><%=resultSet.getString("pName") %></td>
				  <td><%=resultSet.getString("PAddress") %></td>
				  <td><%=resultSet.getString("pNo") %></td>
				  <td><%=resultSet.getString("NIC") %></td>
				  <td><%=resultSet.getString("dName") %></td>
				  <td><%=resultSet.getString("dHospital") %></td>
				  <td><%=resultSet.getString("aDate") %></td>
				  <td><%=resultSet.getString("aTime") %></td>
				  <td><%=resultSet.getString("pMethod") %></td>
				  <td><%=resultSet.getString("cardNo") %></td>
				  <td><%=resultSet.getString("cvc") %></td>
				  <td><%=resultSet.getString("price") %></td>
				  
				  
				   <td><a href="AppointmentUpdate.jsp?id=<%=resultSet.getInt("id") %>"><button class="button1" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="fas fa-trash-alt"></span></button></p></a></td>
				 
				  <td><a href="AppointmentDelete.jsp?id=<%=resultSet.getInt("id") %>"><button class="button2" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="fas fa-trash-alt"></span></button></p></a></td>
				  
				  </tr>
				  
				  <%
i++;
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
				  
				  </tbody>
					  
			  </table>
			</center>
			
		</div>





</div>
</div>
</div>
</div>

<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
	<footer>
		<p>&copy; 2024 ABC Lab Appointment System</p>
	</footer>
	
</body>
</html>
