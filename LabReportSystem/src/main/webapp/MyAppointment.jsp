<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.Connection"%>
<%
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "onlinelabreport";
String userid = "root";
String password = "";
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;

// Check if the form is submitted
if (request.getParameter("search") != null) {
    // Get the search query
    String searchTerm = request.getParameter("pNo");
    
    try {
        Class.forName(driver);
        connection = DriverManager.getConnection(connectionUrl + database, userid, password);
        statement = connection.createStatement();
        String query = "SELECT * FROM patient WHERE pNo LIKE '%" + searchTerm + "%' OR NIC LIKE '%" + searchTerm + "%' OR pName LIKE '%" + searchTerm + "%'";
        resultSet = statement.executeQuery(query);
    } catch (Exception e) {
        e.printStackTrace();
    }
}
%>
<!DOCTYPE html>
<html>
<head>
<style>
 /* Existing button styles... */
 .button {
  height: 75px;
  margin: 85px 0;
  margin-top: -15px;
  margin-left: 240px;
 }

 /* Updated button styles for better positioning (optional) */
 .button {
  height: 100%;
  width: 40%;
  padding: 20px 32px;
  outline: none;
  color: #fff;
  background: linear-gradient(135deg, #0F2027, #203A43, #2C5364);
  border: none;
  font-size: 14px;
  font-weight: 500;
  border-radius: 5px;
  letter-spacing: 1px;
  /* Margin adjustments for better placement next to search bar */
  margin: 10px 0 0 20px;
 }

 /* Search bar container styles for centering */
 .search-container {
  margin: 0 auto; /* Center the container horizontally */
  width: fit-content; /* Adjust width as needed */
 }

 /* Search bar styles */
 .search-bar {
  display: inline-block; /* Allow elements inside to flow horizontally */
 }

 .search-bar input[type="text"] {
  height: 40px;
  padding: 10px;
  border: 1px solid #ccc;
  border-radius: 5px;
  font-size: 14px;
 }

 .search-bar button {
  height: 40px;
  padding: 10px 20px;
  background-color: #0F2027;
  color: #fff;
  border: none;
  border-radius: 5px;
  font-size: 14px;
  cursor: pointer;
 }
</style>
  <title>My Appointment</title>
  <link rel="stylesheet" type="text/css" href="css/nav.css">
  <link href="css/table.css" type="text/css" rel="stylesheet">
</head>
<body>
  <header>
    <nav>
      <ul>
        <li><a href="Index.jsp">Home</a></li>
        <li><a href="MyAppointment.jsp">My Appointment</a></li>
        <li><a href="ServiceDashboard.jsp">Services</a></li>
        <li><a href="MyLabReport.jsp">Lab Report Download</a></li>
      </ul>
    </nav>
  </header>
  
   <h1>My Appointment</h1>

  <div class="search-container">
    <form method="GET" action="MyAppointment.jsp">
      <div class="search-bar">
        <input type="text" name="pNo" id="pNo" placeholder="Enter Phone No" >
        <button type="submit" name="search">Search</button>
      </div>
    </form>
  </div>
  
  <!-- Display search results -->
  <% if (resultSet != null) { %>
    <center><div>
      <h3>Search Results</h3>
     <table id="mytable" class="content-table">
        <tr>
		  <th scope="col">Patient Name</th>
		  <th scope="col">Patient Address</th>
		  <th scope="col">Phone</th>
		  <th scope="col">NIC</th>
          <th scope="col">Doctor Name</th>
		  <th scope="col">Hospital</th>
		  <th scope="col">Date</th>
		  <th scope="col">Time</th>
        </tr>
        <% while (resultSet.next()) { %>
          <tr>
            <td><%= resultSet.getString("pName") %></td>
            <td><%= resultSet.getString("pAddress") %></td>
            <td><%= resultSet.getString("pNo") %></td>
            <td><%= resultSet.getString("NIC") %></td>
            <td><%=resultSet.getString("dName") %></td>
   			<td><%=resultSet.getString("dHospital") %></td>
		    <td><%=resultSet.getString("aDate") %></td>
			<td><%=resultSet.getString("aTime") %></td>
          </tr>
        <% } %>
      </table>
      </div></center> 
    
  <% } %>

  <br><br> <br><br> <br><br> <br><br> <br><br> <br><br> <br><br>  <br><br> <br><br> <br><br>

  <footer>
    <p>&copy; 2024 ABC Lab Appointment System</p>
  </footer>
  
</body>
</html>
