

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class register
 */
public class store extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public store() {
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

		String user1=request.getParameter("n");
		String user11=request.getParameter("units");
	//	String user111=request.getParameter("vegetable");
		System.out.println("dasjba");
		
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
        HttpSession session=request.getSession();
        try {
        	int user111=Integer.parseInt(user1)*5;
			ResultSet rs;
			String username=(String) session.getAttribute("usna");
			String sql = "insert into vegetables values (?,?,?,?)";
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1, username);
			pst.setInt(2, Integer.parseInt(user1));
			pst.setString(3, user11);
			pst.setInt(4,(user111));
			//out.println(user1);
			//out.println(user11);
			//out.println(user111);
			pst.executeUpdate();
			response.sendRedirect("selectbuybazaar.html");
			pst.close();

		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		
		
	}

}
