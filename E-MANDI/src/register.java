

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class regdb
 */
public class register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public register() {
        super();
        
        
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		
		// TODO Auto-generated method stub
		
		try {
			Date d=new Date();
			long time=d.getTime();
			
			String firstName=request.getParameter("firstname");
	        String lastName=request.getParameter("lastname");
	        String username=request.getParameter("username");
	        String password=request.getParameter("password");
	        String conpassword=request.getParameter("conformpassword");
	       
	        String userType=request.getParameter("usertype");
	        String uid=userType+time;
	        String adress=request.getParameter("adress");
	        String adress2=request.getParameter("fulladress");
	        String city=request.getParameter("city");
	        String state=request.getParameter("state");
	        String pincode=request.getParameter("pincode");
	        String country=request.getParameter("country");
	       String  phno=request.getParameter("phone");
	       String email=request.getParameter("email");
	        String spneeds=request.getParameter("specialneeds");
	        String h=null;
	       
	        
	        
			Class.forName("COM.ibm.db2.jdbc.app.DB2Driver");
		
		
	Connection conn=DriverManager.getConnection("jdbc:db2:EMANDI","db2admin","kmit");
	
		PreparedStatement pstm=conn.prepareStatement("insert into REGFORM values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
		
		pstm.setString(1,uid);
		pstm.setString(2, firstName);
		pstm.setString(3, lastName);
		pstm.setString(4, username);
		pstm.setString(5, password);
		pstm.setString(6,conpassword);
		pstm.setString(7, userType);
		pstm.setString(8, adress);
		pstm.setString(9,adress2);
		pstm.setString(10, city);
		pstm.setString(11, state);
		pstm.setString(12, pincode);
		
		pstm.setString(13, phno);
		pstm.setString(14, email);
		pstm.setString(15, spneeds);
		pstm.setString(16, country);
		
		int res=pstm.executeUpdate();
		System.out.print("res========================"+res);
		if(!(userType.equals("CP")&&userType.equals("CIV")))
		{
		pstm=conn.prepareStatement("insert into VEGITABLEDATA values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
		pstm.setString(1,uid);
		pstm.setString(2,username);
		pstm.setString(3,"V101,0,0,0");
		pstm.setString(4,"V102,0,0,0");
		pstm.setString(5,"V103,0,0,0");
		pstm.setString(6,"V104,0,0,0");
		pstm.setString(7,"V105,0,0,0");
		pstm.setString(8,"V106,0,0,0");
		pstm.setString(9,"V107,0,0,0");
		pstm.setString(10,"V108,0,0,0");
		pstm.setString(11,"V109,0,0,0");
		
		pstm.setString(12,"V110,0,0,0");
		pstm.setString(13,"V111,0,0,0");
		pstm.setString(14,"V112,0,0,0");
		pstm.setString(15,"V113,0,0,0");
		pstm.setString(16,"V114,0,0,0");
		pstm.setString(17,"V115,0,0,0");
		pstm.setString(18,"V116,0,0,0");
		pstm.setString(19,"V117,0,0,0");
		pstm.setString(20,"V118,0,0,0");
		pstm.setString(21,"V119,0,0,0");
		pstm.setString(22,"V120,0,0,0");
		pstm.setString(23,"V121,0,0,0");
		pstm.setString(24,"V122,0,0,0");
		pstm.setString(25,"V123,0,0,0");
		pstm.setString(26,"V124,0,0,0");
		pstm.setString(27,"V125,0,0,0");
		pstm.setString(28,"V126,0,0,0");
		pstm.setString(29,"V127,0,0,0");
		pstm.setString(30,"V128,0,0,0");
		pstm.setString(31,"V129,0,0,0");
		pstm.setString(32,"V130,0,0,0");
		pstm.setString(33,"V131,0,0,0");
		pstm.setString(34,"V132,0,0,0");
		pstm.setString(35,"V133,0,0,0");
		pstm.setString(36,"V134,0,0,0");
		
		res=pstm.executeUpdate();
		System.out.print("res========================"+res);
		}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
