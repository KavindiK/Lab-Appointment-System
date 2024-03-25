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
	<title>Home</title>
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
<center><h1>Create Appointment</h1></center>
  <div class="module">
    
    
        
 <div class="formbold-main-wrapper">
  <!-- Author: FormBold Team -->
  <!-- Learn More: https://formbold.com -->
        
  <div class="formbold-form-wrapper">
    <form action="AppointmentServlet" method="POST">
      <div class="formbold-mb-5">
        <label for="name" class="formbold-form-label"> Patient Name </label>
        <input
          type="text"
          name="pName"
          id="pName"
          placeholder="Enter Patient Name"
          class="formbold-form-input" required
        />
      </div>
      <div class="formbold-mb-5">
        <label for="address" class="formbold-form-label"> Patient Address </label>
        <input
          type="text"
          name="pAddress"
          id="pAddress"
          placeholder="Enter your Address"
          class="formbold-form-input" required
        />
      </div>
      <div class="formbold-mb-5">
        <label for="phone" class="formbold-form-label"> Phone Number </label>
        <input
          type="text"
          name="pNo"
          id="pNo"
          placeholder="Enter your phone number"
          class="formbold-form-input" required
        />
      </div>
      <div class="formbold-mb-5">
        <label for="NIC" class="formbold-form-label"> NIC </label>
        <input
          type="text"
          name="NIC"
          id="NIC"
          placeholder="Enter your NIC"
          class="formbold-form-input" required
        />
      </div>
      <div class="flex flex-wrap formbold--mx-3">
        <div class="w-full sm:w-half formbold-px-3">
          
        </div>
     
      </div>

      <div class="formbold-mb-5 formbold-pt-3">
        <label class="formbold-form-label formbold-form-label-2">
          Doctor Details
        </label>
        <div class="flex flex-wrap formbold--mx-3">
          <div class="w-full sm:w-half formbold-px-3">
            <div class="formbold-mb-5">
              <select name="dName" id="dName" class="formbold-form-select">
			      <option value="">Select Doctor</option>
			        <option value="Dr. Chandika Pereda">Dr. Chandika Pereda</option>
			        <option value="Dr. Sithum Dinesh">Dr. Sithum Dinesh</option>
			        <option value="Dr. Sachini Rathnayaka">Dr. Sachini Rathnayaka</option>
			        <option value="Dr. Pawan Silva">Dr. Pawan Silva</option>
			        </select>
            </div>
          </div>
          <div class="w-full sm:w-half formbold-px-3">
            <div class="formbold-mb-5">
             <select name="dHospital" id="dHospital" class="formbold-form-select">
			      <option value="">Select Hospital</option>
			        <option value="Asiri - Colombo">Asiri - Colombo</option>
			        <option value="Asiri - Kandy">Asiri - Kandy</option>
			        <option value="Seth Sevana Hospital - Kurunegala">Seth Sevana Hospital - Kurunegala</option>
			        <option value="Co-operative Hospital - Kurunegala">Co-operative Hospital - Kurunegala</option>
			        </select>
            </div>
          </div>
          <div class="w-full sm:w-half formbold-px-3">
            <div class="formbold-mb-5 w-full">
            <label for="date" class="formbold-form-label"> Date </label>
            <input
              type="date"
              name="aDate"
              id="aDate"
              class="formbold-form-input" required
            />
          </div>
          </div>
          <div class="w-full sm:w-half formbold-px-3">
          <div class="formbold-mb-5">
            <label for="time" class="formbold-form-label"> Time </label>
            <input
              type="time"
              name="aTime"
              id="aTime"
              class="formbold-form-input" required
            />
          </div>
        </div>
        
        </div>
      </div>
      
      <div class="formbold-mb-5 formbold-pt-3">
        <label class="formbold-form-label formbold-form-label-2">
          Payment Details
        </label>
        <div class="flex flex-wrap formbold--mx-3">
			<div class="w-full sm:w-half formbold-px-3">
            <div class="formbold-mb-5">
              <select name="pMethod" id="pMethod" class="formbold-form-select">
			      <option value="">Select Payment Method</option>
			        <option value="Credit Card">Credit Card</option>
			        <option value="Debit Card">Debit Card</option>
			        </select>
            </div>
          </div>

			<div class="w-full sm:w-half formbold-px-3">
            <div class="formbold-mb-5">
              <input
                type="text"
                name="cardNo"
                id="cardNo"
                placeholder="Enter Card No"
                class="formbold-form-input" required
              />
            </div>
          </div>
          <div class="w-full sm:w-half formbold-px-3">
            <div class="formbold-mb-5">
              <input
                type="text"
                name="cvc"
                id="cvc"
                placeholder="Enter CVC"
                class="formbold-form-input" required
              />
            </div>
          </div>
          <div class="w-full sm:w-half formbold-px-3">
            <div class="formbold-mb-5">
              <input
                type="text"
                name="price"
                id="price"
                placeholder="Enter Amount"
                class="formbold-form-input" required
              />
            </div>
          </div>
        
          
        </div>
      </div>

      <div>
        <button class="formbold-btn">Book Appointment</button>
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

	<footer>
		<p>&copy; 2024 ABC Lab Appointment System</p>
	</footer>
</body>
</html>
