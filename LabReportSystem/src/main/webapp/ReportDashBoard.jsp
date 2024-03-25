<!DOCTYPE html>
<html>
<head>
    <title>Lab Report</title>
    <link rel="stylesheet" type="text/css" href="css/nav.css">

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
            height: 60%;
            width: 20%;
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

<h1>Appointment Details</h1>


   <center> <form method="GET" action="AppointmentReportPDF.jsp">
    <button type="submit" name="downloadPDF" class="button">Download PDF</button>
</form></center>



<br>  <br>
<h1>Lab Report</h1>


   <center> <form method="GET" action="LabReportPDF.jsp">
    <button type="submit" name="downloadPDF" class="button">Download PDF</button>
</form></center>


<br>  <br> 

<h1>Doctor Recommend</h1>


   <center> <form method="GET" action="DoctorReportPDF.jsp">
    <button type="submit" name="downloadPDF" class="button">Download PDF</button>
</form></center>


<br><br> <br><br> 
<footer>
    <p>&copy; 2024 ABC Lab Appointment System</p>
</footer>

</body>
</html>