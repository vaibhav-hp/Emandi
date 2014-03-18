

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class nearest
 */
public class nearest extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public nearest() {
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
		String user1=request.getParameter("p");
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

			
			ResultSet rs=((java.sql.Statement) st).executeQuery("select name from nearest where location='"+user1+"'");
			PrintWriter out=response.getWriter();
			
			if(rs.next())
			out.println("your Nearest Retailers Are");
			//out.println(""+user1);
			while(rs.next())
			{//out.println("in while");
				out.println("<html><body>");
				out.println("<table border=1><tr>");
				out.println("<td>"+rs.getString(1)+"</td>");
				out.println("</tr></table></body></html>");
			}
			

		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		
		
		
	}

}
