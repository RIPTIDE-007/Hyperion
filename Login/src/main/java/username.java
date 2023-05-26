
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class username
 */
@WebServlet("/username")
public class username extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public username() {
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
		String user=uname;
		try {
			
	            HttpSession session = request.getSession();
	            session.setAttribute("LOGIN_USER",user);
			if(uname.equals("riptide"))
				response.sendRedirect("table.jsp");
			else
			{
			 Connection connection = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/employees",
	                 "root", "153492768");

	             PreparedStatement st = (PreparedStatement) connection
	                 .prepareStatement("Select first_name,last_name,address,contact from employee where username=? ");
	             st.setString(1, uname);
	             ResultSet rs = st.executeQuery();
	             String fn,ln,ad,cont;
				 String destination = "display.jsp";
				 RequestDispatcher requestDispatcher = request.getRequestDispatcher(destination);
				 if(rs.next()) {
						fn=rs.getString(1);
						request.setAttribute("fn", fn);
						ln=rs.getString(2);
						request.setAttribute("ln", ln);
						ad=rs.getString(3);
						request.setAttribute("ad",ad);
						cont=rs.getString(4);
						request.setAttribute("cont", cont);
					
					}
				 
				 requestDispatcher.forward(request,response);
			}
	}
		
		catch(Exception sqlException) {
	        sqlException.printStackTrace();
	    }
		

}
}
