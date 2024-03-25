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

@WebServlet("/AppointmentUpdateProcess")
public class AppointmentUpdateProcess extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public AppointmentUpdateProcess() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id = request.getParameter("id");
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
       

        if (id != null) {
            Connection con = null;
            PreparedStatement ps = null;
            int personID = Integer.parseInt(id);
            try {
                String driverName = "com.mysql.jdbc.Driver";
                String url = "jdbc:mysql://localhost:3306/onlinelabreport";
                String user = "root";
                String psw = "";

                Class.forName(driverName);
                con = DriverManager.getConnection(url, user, psw);
                String sql = "UPDATE patient SET pName=?, pAddress=?, pNo=?, NIC=?, dName=?, dHospital=?, aDate=?, aTime=?, pMethod=?, cardNo=?, cvc=?, price=? WHERE id = ?";
                ps = con.prepareStatement(sql);
                ps.setString(1, pName);
                ps.setString(2, pAddress);
                ps.setString(3, pNo);
                ps.setString(4, NIC);
                ps.setString(5, dName);
                ps.setString(6, dHospital);
                ps.setString(7, aDate);
                ps.setString(8, aTime);
                ps.setString(9, pMethod);
                ps.setString(10, cardNo);
                ps.setString(11, cvc);
                ps.setString(12, price);
                ps.setInt(13, personID);

                int i = ps.executeUpdate();
                if (i > 0) {
                	
                    RequestDispatcher rd = request.getRequestDispatcher("ManageAppointment.jsp");
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
