<%@page language="java"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html >
<head>
<link rel="shortcut icon" href="img/a.jpg" type="image/x-icon" />

	
<meta http-equiv="content-type" content="text/html; charset=utf-8"><title>Booking Form</title>
<link href="default.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="css/default3.css"/>
<link rel="stylesheet" type="text/css" href="table.css"/>
<link rel="stylesheet" href="./css3menu.com_files/style.css" type="text/css">
<!-- <link rel="stylesheet" href="abc.css"> -->
</head>
<script>
function fun()
{

	  //document.writeln("sadffjb");
//session.invalidate();
window.location="http://localhost:9999/EMANDI/signout.jsp";
//
	//alert('please login and then go to booking');
}
</script>
<body style="background-color:$PageBgColor$">
<%

String username=(String) session.getAttribute("usna");
if(username==null)
{
	response.sendRedirect("index.html");
}
else
{
out.println("<html><body>");
out.println("<input type='submit' value='Signout' onClick='fun()' />");
out.println("</html></body>");
}
%>
<p>Welcome: <%=username%><p>

<!-- Start css3menu.com BODY section -->
<ul id="css3menu1" class="topmenu">
	<li class="topfirst"><a href="home.html" style="height:18px;line-height:18px;">HOME</a></li>
	<li class="topmenu"><a href="registration.html" style="height:18px;line-height:18px;">REGISTER</a></li>
	<li class="topmenu"><a href="#" style="height:18px;line-height:18px;"><span>MY ACCOUNT</span></a>
	<ul>
		<li><a href="updateprofile.html">UPDATE PROFILE</a></li>
	</ul></li>
	<li class="topmenu"><a href="#" style="height:18px;line-height:18px;"><span>SERVICES</span></a>
	<ul>
		<li><a href="inflation.html">INFLATION</a></li>
		<li><a href="booking.html">BOOK VEGETABLE</a></li>
		<li><a href="nearest_location.html">NEAREST BAZAAR</a></li>
		<li><a href="addvegupdate.html">UPDATE PRICE</a></li>
		<li><a href="addvegupdate.html">ADD VEGETABLE</a></li>
	</ul></li>
	<li class="topmenu"><a href="contactus.html" style="height:18px;line-height:18px;">CONTACT US</a></li>
	<li class="topmenu"><a href="aboutus1.htm" style="height:18px;line-height:18px;">ABOUT US</a></li>
	<li class="topmenu"><a href="faq.html" style="height:18px;line-height:18px;">FAQ</a></li>
	<li class="toplast"><a href="#" style="height:18px;line-height:18px;"><span>HELP</span></a>
	<ul>
		<li><a href="#">VIDEO DEMO</a></li>
	</ul></li>
</ul>

<%@page import= "java.io.IOException,java.io.PrintWriter,java.sql.DriverManager,java.sql.PreparedStatement,java.sql.ResultSet,java.sql.SQLException,javax.servlet.ServletException,javax.servlet.ServletResponse,javax.servlet.http.HttpServlet,javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse;"


%>



<BR><BR><BR><BR><BR><BR><BR><BR><BR><BR><BR><BR><BR><BR>

<%
	Class.forName("COM.ibm.db2.jdbc.app.DB2Driver");
	 


java.sql.Connection con = null;
	con =  DriverManager.getConnection("jdbc:db2:KMITEGAS","kmit","kmit");

  
java.sql.Statement st = null;
	st = ((java.sql.Connection) con).createStatement();
System.out.println("connectio ok,,,,,,,,,,,,,,,,,,");


	
	ResultSet rs=((java.sql.Statement) st).executeQuery("select veg from veg where name='"+username+"'");
	
	
	if(rs.next())
	out.println("your latest booking is");
	//out.println(""+user1);
	out.println(rs.last());
	%>
	
	</body>
</html>
