<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.io.*" %>
<%@ page import="com.itextpdf.text.*" %>
<%@ page import="com.itextpdf.text.pdf.*" %>

<%
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "onlinelabreport";
String userid = "root";
String password = "";
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;

/// Check if the form is submitted
if (request.getParameter("search") != null) {
// Get the search query
String searchTerm = request.getParameter("NIC");

try {
  Class.forName(driver);
  connection = DriverManager.getConnection(connectionUrl + database, userid, password);
  statement = connection.createStatement();
  String query = "SELECT * FROM labtech WHERE NIC LIKE '%" + searchTerm + "%' OR Lid LIKE '%" + searchTerm + "%'";
  resultSet = statement.executeQuery(query);

  // Generate PDF if resultSet is not null
  if (resultSet != null) {
    Document document = new Document();
    ByteArrayOutputStream baos = new ByteArrayOutputStream();
    PdfWriter.getInstance(document, baos);
    document.open();

    PdfPTable table = new PdfPTable(5); // Number of columns
    table.addCell("NIC");
    table.addCell("HEMOGLOBIN");
    table.addCell("RBC COUNT");
    table.addCell("BLOOD INDICES");
    table.addCell("PLATELET COUNT");

    while (resultSet.next()) {
      table.addCell(resultSet.getString("NIC"));
      table.addCell(resultSet.getString("lHem"));
      table.addCell(resultSet.getString("rcbCO"));
      table.addCell(resultSet.getString("bIN"));
      table.addCell(resultSet.getString("plCO"));
    }

    document.add(table);
    document.close();

    // Send the PDF content to the response
    response.setContentType("application/pdf");
    response.setHeader("Content-disposition", "attachment; filename=lab_report.pdf");

    // Fix for duplicate variable error: Option 1 (rename)
    OutputStream pdfOutputStream = response.getOutputStream();
    baos.writeTo(pdfOutputStream);
    pdfOutputStream.flush();

    // Fix for duplicate variable error: Option 2 (move declaration)
//    OutputStream out = response.getOutputStream();
//    // ... Your code to generate PDF content ...
//    baos.writeTo(out);
//    out.flush();

  }
} catch (Exception e) {
  e.printStackTrace();
}
}
%>
<!DOCTYPE html>
<html>
<head>
    <title>Lab Report</title>
    <link rel="stylesheet" type="text/css" href="css/nav.css">
  <link href="css/table.css" type="text/css" rel="stylesheet">
    <style>
        /* Your CSS styles here */
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
</head>
<body>
<header>
    <nav>
        <ul>
            <li><a href="Index.jsp">Home</a></li>
            <li><a href="MyAppointment.jsp">My Appointment</a></li>
            <li><a href="ServiceDashboard.jsp">Services</a></li>

        </ul>
    </nav>
</header>

<h1>Lab Report</h1>

<div class="search-container">
    <form method="GET" action="MyLabReport.jsp">
        <div class="search-bar">
            <input type="text" name="NIC" id="NIC" placeholder="Enter NIC" >
            <button type="submit" name="search">Download</button>
        </div>
    </form>
</div>

<br><br> <br><br> <br><br> <br><br> <br><br> <br><br><br> <br><br> <br><br> <br><br> <br><br> <br><br>

<footer>
    <p>&copy; 2024 ABC Lab Appointment System</p>
</footer>

</body>
</html>
