import java.io.IOException;
import javax.servlet.http.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
/**
 * 
 * Servlet implementation class LoginCheck
 */
@WebServlet("/LoginCheck")
public class LoginCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginCheck() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname=request.getParameter("uname");
		String password=request.getParameter("password");
	
		try {
			
		 Connection connection = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/employees",
                 "root", "153492768");

             PreparedStatement st = (PreparedStatement) connection
                 .prepareStatement("Select username,password from employee where username=? and password=?");

             st.setString(1, uname);
             st.setString(2, password);
             ResultSet rs = st.executeQuery();
             if (rs.next()) {
            	 String user=uname;
 	            HttpSession session = request.getSession();
 	            session.setAttribute("LOGIN_USER",user);
			response.sendRedirect("member.jsp");
			
             }	
		else {
			response.sendRedirect("error.jsp");
		}
				
		}
		
	catch(Exception sqlException) {
        sqlException.printStackTrace();
    }

}
}
