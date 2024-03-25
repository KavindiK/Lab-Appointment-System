package lab;

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


@WebServlet("/LabServlet") 
public class LabServlet extends HttpServlet{
	
	private static final long serialVersionUID = 1L; 

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{ 
	
		String NIC = request.getParameter("NIC");		
		String lHem = request.getParameter("lHem");
		String rcbCO = request.getParameter("rcbCO");	
		String bIN = request.getParameter("bIN");
		String plCO = request.getParameter("plCO");		

		
		
		 Connection conn = null;
		    
		    try {
		    	String sql = "insert into labtech(NIC,lHem,rcbCO,bIN,plCO) values(?,?,?,?,?)";
		    	Class.forName("com.mysql.cj.jdbc.Driver");
			     conn =  DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinelabreport","root","");
			    PreparedStatement st = conn.prepareStatement(sql);
			   

			    st.setString(1, NIC);
			    st.setString(2, lHem);			    
			    st.setString(3, rcbCO);			    
			    st.setString(4, bIN);
			    st.setString(5, plCO);			    	

			     int row = st.executeUpdate();
			     
			    System.out.println("db connected!!");

		        if (row > 0) {
		          System.out.println("File uploaded and saved into database");
		          
		          
	
		          
		          RequestDispatcher rd = request.getRequestDispatcher("/LabTechDashboard.jsp");
		          
		          rd.include(request, response);
		        }
		       
		    }catch (Exception e) {
				e.printStackTrace();

      } 		
	} 	
} 



