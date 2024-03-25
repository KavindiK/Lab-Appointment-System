<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String Lid = request.getParameter("Lid");
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
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from labtech where Lid="+Lid;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
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
	<title> Doctor Recommend</title>
	<link rel="stylesheet" type="text/css" href="css/nav.css">
</head>
<body>
	<header>
		<nav>
			<ul>
				<li><a href="Index.jsp">Home</a></li>
				<li><a href="MyAppointment.jsp">My Appointment</a></li>
				<li><a href="ServiceDashboard.jsp">Services</a></li>
				<lii><a href="Login.jsp">Admin Login</a></lii>
			</ul>
		</nav>
	</header>

<div id="bg">
<center><h1> Doctor Recommend</h1></center>
  <div class="module">
    
    
        
 <div class="formbold-main-wrapper">
  <!-- Author: FormBold Team -->
  <!-- Learn More: https://formbold.com -->
        
  <div class="formbold-form-wrapper">
                <form action="LabUpdateProcess" method="POST">
             <div class="formbold-mb-5">
                        <label for="name" class="formbold-form-label">ID</label>
		                <input
		          type="text"
		          name="Lid"
		          readonly="Lid"
		          value="<%=resultSet.getInt("Lid") %>" 

          class="formbold-form-input"
        />
      </div>
                    <div class="formbold-mb-5">
                        <label for="name" class="formbold-form-label">Patient NIC</label>
		                <input
		          type="text"
		          name="NIC"
		          readonly="NIC"
		          value="<%=resultSet.getString("NIC") %>"

          class="formbold-form-input"
        />
      </div>
      
      <div class="formbold-mb-5">
        <label for="address" class="formbold-form-label"> HEMOGLOBIN </label>
        <input
          type="text"
          name="lHem"
          id="lHem"
		  value="<%=resultSet.getString("lHem") %>"
          class="formbold-form-input"
        />
      </div>
      <div class="formbold-mb-5">
        <label for="phone" class="formbold-form-label"> RBC COUNT</label>
        <input
          type="text"
          name="rcbCO"
          id="rcbCO"
		  value="<%=resultSet.getString("rcbCO") %>"
          class="formbold-form-input"
        />
      </div>
      <div class="formbold-mb-5">
        <label for="phone" class="formbold-form-label"> BLOOD INDICES </label>
        <input
          type="text"
          name="bIN"
          id="bIN"
		  value="<%=resultSet.getString("bIN") %>"
          class="formbold-form-input"
        />
      </div>
      <div class="formbold-mb-5">
        <label for="phone" class="formbold-form-label"> PLATELET COUNT </label>
        <input
          type="text"
          name="plCO"
          id="plCO"
		  value="<%=resultSet.getString("plCO") %>"
          class="formbold-form-input"
        />
      </div>
      
      <div class="flex flex-wrap formbold--mx-3">
        <div class="w-full sm:w-half formbold-px-3">
          
        </div>
     
      </div>

       
      

      <div>
        <button class="formbold-btn">Update</button>
      </div>
    </form>
  </div>
</div>
<style>
  * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
  }
  body {
    font-family: "Inter", Arial, Helvetica, sans-serif;
  }
  .formbold-mb-5 {
    margin-bottom: 20px;
  }
  .formbold-pt-3 {
    padding-top: 12px;
  }
  .formbold-main-wrapper {
    display: flex;
    align-items: center;
    justify-content: center;
    padding: 48px;
  }

  .formbold-form-wrapper {
    margin: 0 auto;
    max-width: 550px;
    width: 100%;
    background: white;
  }
  .formbold-form-label {
    display: block;
    font-weight: 500;
    font-size: 16px;
    color: #07074d;
    margin-bottom: 12px;
  }
  .formbold-form-label-2 {
    font-weight: 600;
    font-size: 20px;
    margin-bottom: 20px;
  }

  .formbold-form-input {
    width: 100%;
    padding: 12px 24px;
    border-radius: 6px;
    border: 1px solid #e0e0e0;
    background: white;
    font-weight: 500;
    font-size: 16px;
    color: #6b7280;
    outline: none;
    resize: none;
  }
  .formbold-form-input:focus {
    border-color: #6a64f1;
    box-shadow: 0px 3px 8px rgba(0, 0, 0, 0.05);
  }
  
    .formbold-form-select {
    width: 100%;
    padding: 12px 24px;
    border-radius: 6px;
    border: 1px solid #e0e0e0;
    background: white;
    font-weight: 500;
    font-size: 16px;
    color: #6b7280;
    outline: none;
    resize: none;
  }
  .formbold-form-select:focus {
    border-color: #6a64f1;
    box-shadow: 0px 3px 8px rgba(0, 0, 0, 0.05);
  }

  .formbold-btn {
    text-align: center;
    font-size: 16px;
    border-radius: 6px;
    padding: 14px 32px;
    border: none;
    font-weight: 600;
    background-color: #6a64f1;
    color: white;
    width: 100%;
    cursor: pointer;
  }
  .formbold-btn:hover {
    box-shadow: 0px 3px 8px rgba(0, 0, 0, 0.05);
  }

  .formbold--mx-3 {
    margin-left: -12px;
    margin-right: -12px;
  }
  .formbold-px-3 {
    padding-left: 12px;
    padding-right: 12px;
  }
  .flex {
    display: flex;
  }
  .flex-wrap {
    flex-wrap: wrap;
  }
  .w-full {
    width: 100%;
  }
  @media (min-width: 540px) {
    .sm\:w-half {
      width: 50%;
    }
  }
  
</style>

       
<% 
 }
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>  

<br><br><br><br><br><br><br><br><br>
	<footer>
		<p>&copy; 2024 ABC Lab Appointment System</p>
	</footer>
</body>
</html>
