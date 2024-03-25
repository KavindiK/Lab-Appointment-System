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

@WebServlet("/DoctorUpdateProcess")
public class DoctorUpdateProcess extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public DoctorUpdateProcess() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String dID = request.getParameter("dID");
        String NIC = request.getParameter("NIC");
        String tName = request.getParameter("tName");
        String tDate = request.getParameter("tDate");
       

        if (dID != null) {
            Connection con = null;
            PreparedStatement ps = null;
            int personID = Integer.parseInt(dID);
            try {
                String driverName = "com.mysql.jdbc.Driver";
                String url = "jdbc:mysql://localhost:3306/onlinelabreport";
                String user = "root";
                String psw = "";

                Class.forName(driverName);
                con = DriverManager.getConnection(url, user, psw);
                String sql = "UPDATE docrecomm SET NIC=?, tName=?, tDate=? WHERE dID = ?";
                ps = con.prepareStatement(sql);
                ps.setString(1, NIC);
                ps.setString(2, tName);
                ps.setString(3, tDate);
                ps.setInt(4, personID);

                int i = ps.executeUpdate();
                if (i > 0) {
                	
                    RequestDispatcher rd = request.getRequestDispatcher("ManageDoctorRecommend.jsp");
                    rd.forward(request, response);
                } else {
                    response.getWriter().write("There is a problem in updating Record.");
                }
            } catch (SQLException e) {
                request.setAttribute("error", e);
                response.getWriter().write(e.toString());
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            } finally {
                try {
                    if (ps != null) {
                        ps.close();
                    }
                    if (con != null) {
                        con.close();
                    }
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}
