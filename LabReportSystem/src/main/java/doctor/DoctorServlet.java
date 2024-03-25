package doctor;

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


@WebServlet("/DoctorServlet") 
public class DoctorServlet extends HttpServlet{
	
	private static final long serialVersionUID = 1L; 

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{ 
	
		String NIC = request.getParameter("NIC");		
		String tName = request.getParameter("tName");
		String tDate = request.getParameter("tDate");	
	

		
		
		 Connection conn = null;
		    
		    try {
		    	String sql = "insert into docrecomm(NIC,tName,tDate) values(?,?,?)";
		    	Class.forName("com.mysql.cj.jdbc.Driver");
			     conn =  DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinelabreport","root","");
			    PreparedStatement st = conn.prepareStatement(sql);
			   

			    st.setString(1, NIC);
			    st.setString(2, tName);			    
			    st.setString(3, tDate);			    
		    	

			     int row = st.executeUpdate();
			     
			    System.out.println("db connected!!");

		        if (row > 0) {
		          System.out.println("File uploaded and saved into database");
		          
		          
	
		          
		          RequestDispatcher rd = request.getRequestDispatcher("/DoctorDashBoard.jsp");
		          
		          rd.include(request, response);
		        }
		       
		    }catch (Exception e) {
				e.printStackTrace();

      } 		
	} 	
} 



