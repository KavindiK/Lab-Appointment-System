package patient;

import java.io.IOException;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//Import Database Connection Class file 


@WebServlet("/AppointmentServlet") 
public class AppointmentServlet extends HttpServlet{
	
	private static final long serialVersionUID = 1L; 

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{ 
	
		String pName = request.getParameter("pName");		
		String pAddress = request.getParameter("pAddress");
		String pNo = request.getParameter("pNo");	
		String NIC = request.getParameter("NIC");
		String dName = request.getParameter("dName");		
		String dHospital = request.getParameter("dHospital");	
		String aDate = request.getParameter("aDate");
		String aTime = request.getParameter("aTime");
		String pMethod = request.getParameter("pMethod");		
		String cardNo = request.getParameter("cardNo");
		String cvc = request.getParameter("cvc");	
		String price = request.getParameter("price");
		
		
		 Connection conn = null;
		    
		    try {
		    	String sql = "insert into patient(pName,pAddress,pNo,NIC,dName,dHospital,aDate,aTime,pMethod,cardNo,cvc,price) values(?,?,?,?,?,?,?,?,?,?,?,?)";
		    	Class.forName("com.mysql.cj.jdbc.Driver");
			     conn =  DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinelabreport","root","");
			    PreparedStatement st = conn.prepareStatement(sql);
			   

			    st.setString(1, pName);
			    st.setString(2, pAddress);			    
			    st.setString(3, pNo);			    
			    st.setString(4, NIC);
			    st.setString(5, dName);			    
			    st.setString(6, dHospital);			    
			    st.setString(7, aDate);	
			    st.setString(8, aTime);
			    st.setString(9, pMethod);
			    st.setString(10, cardNo);			    
			    st.setString(11, cvc);			    
			    st.setString(12, price);	

			     int row = st.executeUpdate();
			     
			    System.out.println("db connected!!");

		        if (row > 0) {
		          System.out.println("File uploaded and saved into database");
		          
		          
					PrintWriter out = response.getWriter(); 

					out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
					out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
					out.println("<script>");
					out.println("$(document).ready(function(){");
					out.println("swal ( ' Appointment Booking Successfully' ,  '' ,  'success' );");
					out.println("});");
					out.println("</script>");
		          
		          RequestDispatcher rd = request.getRequestDispatcher("/Index.jsp");
		          
		          rd.include(request, response);
		        }
		       
		    }catch (Exception e) {
				e.printStackTrace();

      } 		
	} 	
} 



