

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class lgin
 */
public class loginhandler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginhandler() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();

		String user=request.getParameter("username");
		//user.toString();
		String user1=request.getParameter("password");
		//user1.toString();
		
		//System.out.print(user+"");
		//out.println(user+"");
		//System.out.print(user1+"");
		//out.println(user1+"");
		try {
			Class.forName("COM.ibm.db2.jdbc.app.DB2Driver");
			 
		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		java.sql.Connection con = null;
		try {
			con =  DriverManager.getConnection("jdbc:db2:KMITEGAS","kmit","kmit");
		} catch (SQLException e3) {
			// TODO Auto-generated catch block
			e3.printStackTrace();
		}  
        java.sql.Statement st = null;
		try {
			st = ((java.sql.Connection) con).createStatement();
		} catch (SQLException e2) {
			// TODO Auto-generated catch block
			e2.printStackTrace();
		}
        System.out.println("connectio ok,,,,,,,,,,,,,,,,,,");
        try {
			ResultSet rs=((java.sql.Statement) st).executeQuery("select * from REG where username='"+user+"' and pass='"+user1+"'");
			int flag=0;
			System.out.println("success");
			while(rs.next())
			{
				System.out.println(rs.getString(1));
				String lok=rs.getString(1).toString();
				if(user.equals("a"))
				{
					flag=1;
						System.out.println("success======");
				}
				
			}
			if(flag==1){
				 //PrintWriter out=response.getWriter();
				 
				 response.setContentType("text/html");
				 HttpSession session=request.getSession();
				// String v=request.getParameter("user");
				// System.out.println(v);
				session.setAttribute("usna", user);
				System.out.println(session.getId());
			response.sendRedirect("booking.jsp");
			}
			else
			response.sendRedirect("quantitydetails.html");
			       
					
					//out.println("please enter the username or password correctly");
		     

		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		 
		
		
	}

}
