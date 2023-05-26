

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Newreg
 */
@WebServlet("/Newreg")
public class Newreg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Newreg() {
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
		// TODO Auto-generated method stub
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/employees",
		                 "root", "153492768");

			String id=request.getParameter("Id");
			String first_name=request.getParameter("firstName");
			String last_name=request.getParameter("lastName");
			String username=request.getParameter("username");
			String password=request.getParameter("password");
			String address=request.getParameter("address");
			String contact=request.getParameter("contact");
			PreparedStatement ps = con.prepareStatement("insert into employee(id,first_name, last_name, username, password, address, contact) values(?,?,?,?,?,?,?);");
			ps.setString(1,id);
			ps.setString(2,first_name);
		    ps.setString(3,last_name);
		    ps.setString(4,username);	
		    ps.setString(5,password);
		    ps.setString(6,address);
		    ps.setString(7,contact);
		    int x= ps.executeUpdate();
		    if(x>0)
		    	response.sendRedirect("login.jsp");
		  	else
		  		response.sendRedirect("errortwo.jsp");
			}
			catch(SQLException sqlException) {
		        sqlException.printStackTrace();
		    } catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}

}
