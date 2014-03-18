<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/nav.css">
<link rel="stylesheet" type="text/css" href="engine1/style.css" />
<link rel="stylesheet" href="./css3menu.com_files/style.css" type="text/css">
	<script type="text/javascript" src="engine1/jquery.js"></script>
<meta http-equiv="content-type" content="text/html; charset=utf-8"><title>
</title>
<link href="default.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="abc.css">
</head>
<body>

<!-- <iframe id="twttrHubFrameSecure" scrolling="no" frameborder="0" allowtransparency="true" tabindex="0" name="twttrHubFrameSecure" style="position: absolute; top: -9999em; width: 10px; height: 10px;" src="https://platform.twitter.com/widgets/hub.html"></iframe> -->


<div class="loginBox">
<form  action="http://localhost:9999/EMANDI/loginhandler" method="post" >
<ul> <li class="inputPad">
<div class="loginBoxInput">
<input title="Username or Email id" class="textbox default-value loginInput" name="username"  size="10" accesskey="u" tabindex="101"  type="text"></div><div class="loginBoxInput"> 

<input class="loginInput textbox default-value" name="password" tabindex="102"  size="10"  style="display: inline;" type="password"></div></li> 
<!-- <li class="inputPad">
</li> --> 
<li class="submitPad">
<input type="submit" value="submit"></input>
<div class="memberBottom">
<div class="memberLinks"> <a href="#">Forgot password?</a>  |  
<a href="register.php" rel="nofollow">Register</a></div>
<div class="rememberMe">
<label for="cb_cookieuser_navbar">
<input name="cookieuser" value="1" tabindex="103" id="cb_cookieuser_navbar" class="cb_cookieuser_navbar" accesskey="c" checked="checked&quot;/" type="checkbox"> Remember Me?</label></div></div> 
<input name="s" value="" type="hidden"> <input name="securitytoken" value="guest" type="hidden"> <input name="do" value="login" type="hidden"> 
<input name="vb_login_md5password" type="hidden">
<input name="vb_login_md5password_utf" type="hidden"></form></div>





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
		<li><a href="booking.jsp">BOOK VEGETABLE</a></li>
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
</ul><br></br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<%@page import= "java.io.IOException,java.io.PrintWriter,java.sql.DriverManager,java.sql.PreparedStatement,java.sql.ResultSet,java.sql.SQLException,javax.servlet.ServletException,javax.servlet.ServletResponse,javax.servlet.http.HttpServlet,javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse;"


%>

<% String user1=request.getParameter("p");
	Class.forName("COM.ibm.db2.jdbc.app.DB2Driver");
	 


java.sql.Connection con = null;
	con =  DriverManager.getConnection("jdbc:db2:KMITEGAS","kmit","kmit");

  
java.sql.Statement st = null;
	st = ((java.sql.Connection) con).createStatement();
System.out.println("connectio ok,,,,,,,,,,,,,,,,,,");


	
	ResultSet rs=((java.sql.Statement) st).executeQuery("select * from nearest where location='"+user1+"'");
	
	
	if(rs.next())
	out.println("your Nearest Retailers Are");
	//out.println(""+user1);
	while(rs.next())
	{//out.println("in while");
 %>
<table>
<tr>
 <font size="4" > 
  <th>name</th>
  
 <td>
<font size="3" color="black" ><%=rs.getString(1) %> </font></td>
<th>Phno</th>
<font size="3" color="black" ><%=rs.getDouble(3) %> </font></td>
 




</tr>

<%} %>
</table>
</body>
</html>