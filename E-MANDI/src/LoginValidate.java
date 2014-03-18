import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class LoginValidate {

	public LoginValidate() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @param args
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();

		String user=request.getParameter("username");
		String user1=request.getParameter("password");
		//String user11=request.getParameter("sita11");
		
		
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
			ResultSet rs;
			String sql = "insert into reg values (?,?,?)";
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1, user);
			pst.setString(2, user1);
			//pst.setString(3, user11);
			out.println(user);
			out.println(user1);
			//out.println(user11);
			pst.executeUpdate();
			pst.close();

		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		
		

}
}
