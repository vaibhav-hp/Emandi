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
<!-- End css3menu.com BODY section -->




<!-- <div class="loginBox">
<form id="navbar_loginform" action="login.php?do=login" method="post" onsubmit="md5hash(vb_login_password, vb_login_md5password, vb_login_md5password_utf, 1)">
<ul> <li class="inputPad">
<div class="loginBoxInput">
<input title="Username or Email id" class="textbox default-value loginInput" name="vb_login_username" id="navbar_username" size="10" accesskey="u" tabindex="101" value="User Name" type="text"></div><div class="loginBoxInput"> 
<input style="display: none;" class="loginInput textbox default-value" tabindex="102" title="Password" name="vb_login_password" id="navbar_password" size="10" type="password"> 
<input class="loginInput textbox default-value" tabindex="102" title="Password" name="vb_login_password_hint" id="navbar_password_hint" size="10" value="Password" style="display: inline;" type="text"></div></li> 
 <li class="inputPad">
</li> 
<li class="submitPad">
<input src="images/login2.jpg" tabindex="104" value="Log in" title="Enter your username and password in the boxes provided to login, or click the 'register' button to create a profile for yourself." accesskey="s" type="image"></li></ul>
<div class="memberBottom">
<div class="memberLinks"> <a href="login.php?do=lostpw">Forgot password?</a>  |  
<a href="register.php" rel="nofollow">Register</a></div>
<div class="rememberMe">
<label for="cb_cookieuser_navbar">
<input name="cookieuser" value="1" tabindex="103" id="cb_cookieuser_navbar" class="cb_cookieuser_navbar" accesskey="c" checked="checked&quot;/" type="checkbox"> Remember Me?</label></div></div> 
<input name="s" value="" type="hidden"> <input name="securitytoken" value="guest" type="hidden"> <input name="do" value="login" type="hidden"> 
<input name="vb_login_md5password" type="hidden">
<input name="vb_login_md5password_utf" type="hidden"></form></div>
 -->




<BR><BR><BR><BR><BR><BR><BR><BR><BR><BR><BR><BR><BR><BR>

<form action="book" class="book" name="booking " method="post">
            <h1>BUY FRESH VEGETABLES</h1>
            <fieldset class="row1">
                



<span class="country">
 <p>
                    <label for="Field7"> <font size="4" > Country</font>
                    </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="text" value="India" name="india" ></input>
</p>
</span>



                <p>
                    <label for="state"> <font size="4" > State/Union Territory </font>
                    </label>
                   <select name="state"><option value="-1">
                        </option>
                        <option >Andhra Pradesh
                        </option>
						<option >Arunachal Pradesh
                        </option>
						<option >Assam
                        </option>
		   <option >Bihar
                        </option><option >Chattisgarh
                        </option><option >Goa
                        </option><option >Gujarat
                        </option><option >Haryana
                        </option><option >Himachal Pradesh
                        </option><option >Jammu and Kashmir
                        </option><option >Jharkhand
                        </option><option >Karnataka
                        </option><option >Kerala
                        </option><option >Madhya Pradesh
                        </option><option >Maharashtra
                        </option><option >Manipur
                        </option><option >Meghalaya
                        </option><option >Mizoram
                        </option><option >Nagaland
                        </option><option >Orissa
                        </option><option >Punjab
                        </option><option >Rajasthan
                        </option><option >Sikkim
                        </option><option >Tamilnadu
                        </option><option >Tripura
                        </option><option >Uttaranchal
                        </option><option >West Bengal
                        </option><option >Andaman and Nicobar Islands
                        </option><option >Chandigarh
                        </option><option >Dadar and Nagar Haveli
                        </option><option >Daman and Diu
                        </option><option >Delhi
                        </option><option >Lakshadeep
                        </option><option >Pondicherry
                        </option>
                    </select>
                   
                </p>
				<p>
                    <label> <font size="4" > City </font>
                    </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <select name="city"><option value="-1">
                        </option>
                        <option >Hyderabad
                        </option>
						<option >Visakhapatnam
                        </option>
						<option >Vijayawada
                        </option>
		   <option >Warangal
                        </option><option >Guntur
                        </option><option >Nellore
                        </option><option >Rajahmundry
                        </option><option >Kurnool
                        </option><option >Tirupati
                        </option><option >Kakinada
                        </option><option >Kadapa
                        </option><option >Anantapur
                        </option><option >Nizamabad
                        </option><option >Karimnagar
                        </option><option >Khammam
                        </option><option >Ramagundam
                        </option><option >Eluru
                        </option><option >Vizianagaram
                        </option><option >Proddatur
                        </option><option >Nandyal
                        </option><option >Mahbubnagar
                        </option><option >Ongole
                        </option><option >Adoni
                        </option><option >Madanapalle
                        </option><option >Chittoor
                        </option><option >Machilipatnam
                        </option><option >Tenali
                        </option><option >Mancherial
                        </option><option >Chirala
                        </option><option >Nalgonda
                        </option><option >Hindupur
                        </option><option >Bhimavaram
                        </option><option >Srikakulam
                        </option><option >Adilabad
                        </option><option >Guntakal
                        </option><option >Dharmavaram
                        </option><option >Kothagudem
                        </option><option >Gudivada
                        </option><option >Narsaraopet
                        </option><option >Siddipet
                        </option><option >Tadpatri
                        </option><option >Suryapet
                        </option><option >Miryalaguda
                        </option><option >Jagtial
                        </option><option >Tadepalligudem
                        </option><option >Chilakaluripet
                        </option>
                    </select>
                </p>
               <!-- <p>
                    <label for="WS/Retailer">  <font size="4" > WholeSellers/Retailers </font>
                    </label>
                    <select name="WS/Retailer"><option value="-1">
              </option>
			<option value="1">WS/Retailer-1
                        </option><option value="2">WS/Retailer-2
                        </option><option value="3">WS/Retailer-3
                        </option>
						</select>
                   
                </p>-->
				<p >



				<table>
<tr>
 <font size="4" > 
  <th>Veggie Id</th>
  <th>vegetable Logo<br></th>
  <th>vegetable Name<br></th>
  <th>Availability</th>
  <th>General Price</th>
  </font>
</tr>
<tr>
<td>
<font size="3" color="black" > 101 </font></td>
<td><img src="images/vegetables/artichoke.jpg" width="100%" height="100%"/></td>
<td>
<font size="3" color="black" >Artichoke</font></td>
<td><img src="images/tick.png" width="50%" height="30%"/></td>
<td><font size="3" color="black"> 45 INR /Bundle </font></td> 
</tr>


<td><font size="3" color="black" > 102 </font></td>
<td><img src="images/vegetables/asparagus.jpg" width="100%" height="100%"/></td>
<td><font size="3" color="black" >Asparagus</font></td>
<td><img src="images/red tick.png" width="50%" height="30%"/></td>
<!--<td><input type="checkbox" name="2"></td>-->
<td>Sorry! This Vegetable is not Available</td>
</tr>



<td><font size="3" color="black" >103</font></td>
<td><img src="images/vegetables/bean.jpg" width="100%" height="100%"/></td>
<td><font size="3" color="black" >Bean</font></td>
<td><img src="images/tick.png" width="50%" height="30%"/></td>
<td><font size="3" color="black"> 25 INR /KG </font></td> 
</tr>

<td><font size="3" color="black" >104</font></td>
<td><img src="images/vegetables/beet.jpg" width="100%" height="100%"/></td>
<td><font size="3" color="black" >Beet</font></td>
<td><img src="images/tick.png" width="50%" height="30%"/></td>
<td><font size="3" color="black"> 45 INR /KG </font></td> 
</tr>


<td><font size="3" color="black" >105</font></td>
<td><img src="images/vegetables/broccoli_0.jpg" width="100%" height="100%"/></td>
<td><font size="3" color="black" >Broccoli</font></td>
<td><img src="images/tick.png" width="50%" height="30%"/></td>
<td><font size="3" color="black"> 75 INR /Bundle </font></td> 
</tr>


<td><font size="3" color="black" >106</font></td>
<td><img src="images/vegetables/brusselssprouts.jpg" width="100%" height="100%"/></td>
<td><font size="3" color="black" >BrusselsSpouts</font></td>
<td><img src="images/tick.png" width="50%" height="30%"/></td>
<td><font size="3" color="black"> 55 INR /KG </font></td> 
</tr>


<td><font size="3" color="black" >107</font></td>
<td><img src="images/vegetables/butternut.jpg" width="100%" height="100%"/></td>
<td><font size="3" color="black" >ButterNut</font></td>
<td><img src="images/tick.png" width="50%" height="30%"/></td>
<td><font size="3" color="black"> 45 INR /KG </font></td> 
</tr>



<td><font size="3" color="black" >108</font></td>
<td><img src="images/vegetables/cabbage.jpg" width="100%" height="100%"/></td>
<td><font size="3" color="black" >Cabbage</font></td>
<td><img src="images/tick.png" width="50%" height="30%"/></td>
<td><font size="3" color="black"> 35 INR /KG </font></td> 
</tr>



<td><font size="3" color="black" >109</font></td>
<td><img src="images/vegetables/carrot.jpg" width="100%" height="100%"/></td>
<td><font size="3" color="black" >Carrot</font></td>
<td><img src="images/tick.png" width="50%" height="30%"/></td>
<td><font size="3" color="black"> 20 INR /KG </font></td> 
</tr>


<td><font size="3" color="black" >110</font></td>
<td><img src="images/vegetables/cauliflower.jpg" width="100%" height="100%"/></td>
<td><font size="3" color="black" >CauliFlower</font></td>
<td><img src="images/tick.png" width="50%" height="30%"/></td>
<td><font size="3" color="black"> 20 INR /KG </font></td> 
</tr>



<td><font size="3" color="black" >111</font>111</td>
<td><img src="images/vegetables/celery.jpg" width="100%" height="100%"/></td>
<td><font size="3" color="black" >Celery</font></td>
<td><img src="images/tick.png" width="50%" height="30%"/></td>
<td><font size="3" color="black"> 45 INR /KG </font></td> 
</tr>



<td><font size="3" color="black" >112</font>112</td>
<td><img src="images/vegetables/cucumber.jpg" width="100%" height="100%"/></td>
<td><font size="3" color="black" >Cucumber</font></td>
<td><img src="images/tick.png" width="50%" height="30%"/></td>
<td><font size="3" color="black"> 35 INR /KG </font></td> 
</tr>



<td><font size="3" color="black" >113</font>113</td>
<td><img src="images/vegetables/fennel.jpg" width="100%" height="100%"/></td>
<td><font size="3" color="black" >Fennel</font></td>
<td><img src="images/tick.png" width="50%" height="30%"/></td>
<td><font size="3" color="black"> 45 INR /KG </font></td> 
</tr>



<td><font size="3" color="black" >114</font></td>
<td><img src="images/vegetables/leek.jpg" width="100%" height="100%"/></td>
<td><font size="3" color="black" >Leek</font></td>
<td><img src="images/tick.png" width="50%" height="30%"/></td>
<td><font size="3" color="black"> 45 INR /Bundle </font></td> 
</tr>



<td><font size="3" color="black" >115</font></td>
<td><img src="images/vegetables/lettuce.jpg" width="100%" height="100%"/></td>
<td><font size="3" color="black" >Lettuce</font></td>
<td><img src="images/red tick.png" width="50%" height="30%"/></td>
<!--<td><input type="checkbox" name="15"></td>-->
<td>Sorry! This Vegetable is not Available</td>
</tr>



<td><font size="3" color="black" >116</font></td>
<td><img src="images/vegetables/marrow-vegetable.jpg" width="100%" height="100%"/></td>
<td><font size="3" color="black" >Marrow Veggie</font></td>
<td><img src="images/red tick.png" width="50%" height="30%"/></td>
<!--<td><input type="checkbox" name="16"></td>-->
<td>Sorry! This Vegetable is not Available</td>
</tr>



<td><font size="3" color="black" >117</font></td>
<td><img src="images/vegetables/onion.jpg" width="100%" height="100%"/></td>
<td><font size="3" color="black" >Onion</font></td>
<td><img src="images/tick.png" width="50%" height="30%"/></td>
<td><font size="3" color="black"> 25 INR /KG </font></td> 
</tr>



<td><font size="3" color="black" >118</font></td>
<td><img src="images/vegetables/parsnip.jpg" width="100%" height="100%"/></td>
<td><font size="3" color="black" >Parsnip</font></td>
<td><img src="images/tick.png" width="50%" height="30%"/></td>
<td><font size="3" color="black"> 78 INR /KG </font></td> 
</tr>



<td><font size="3" color="black" >119</font></td>
<td><img src="images/vegetables/pea.jpg" width="100%" height="100%"/></td>
<td><font size="3" color="black" >Pea</font></td>
<td><img src="images/tick.png" width="50%" height="30%"/></td>
<td><font size="3" color="black"> 39 INR /KG </font></td> 
</tr>



<td><font size="3" color="black" >120</font></td>
<td><img src="images/vegetables/potato.jpg" width="100%" height="100%"/></td>
<td><font size="3" color="black" >Potato</font></td>
<td><img src="images/tick.png" width="50%" height="30%"/></td>
<td><font size="3" color="black"> 15 INR /KG </font></td> 
</tr>



<td><font size="3" color="black" >121</font></td>
<td><img src="images/vegetables/pumpkin.jpg" width="100%" height="100%"/></td>
<td><font size="3" color="black" >Pumpkin</font></td>
<td><img src="images/tick.png" width="50%" height="30%"/></td>
<td><font size="3" color="black"> 30 INR /KG </font></td> 
</tr>



<td><font size="3" color="black" >122</font></td>
<td><img src="images/vegetables/radish.jpg" width="100%" height="100%"/></td>
<td><font size="3" color="black" >Raddish</font></td>
<td><img src="images/tick.png" width="50%" height="30%"/></td>
<td><font size="3" color="black"> 40 INR /KG </font></td> 
</tr>



<td><font size="3" color="black" >123</font></td>
<td><img src="images/vegetables/rhubarb.jpg" width="100%" height="100%"/></td>
<td><font size="3" color="black" >Rhubarb</font></td>
<td><img src="images/red tick.png" width="50%" height="30%"/></td>
<!--<td><input type="checkbox" name="23"></td>-->
<td>Sorry! This Vegetable is not Available</td>
</tr>



<td><font size="3" color="black" >124</font></td>
<td><img src="images/vegetables/rutabaga.jpg" width="100%" height="100%"/></td>
<td><font size="3" color="black" >rutabaga</font></td>
<td><img src="images/tick.png" width="50%" height="30%"/></td>
<td><font size="3" color="black"> 45 INR /KG </font></td> 
</tr>



<td><font size="3" color="black" >125</font></td>
<td><img src="images/vegetables/silverbeet.jpg" width="100%" height="100%"/></td>
<td><font size="3" color="black" >SilverBeet</font></td>
<td><img src="images/tick.png" width="50%" height="30%"/></td>
<td><font size="3" color="black"> 55 INR /KG </font></td> 
</tr>



<td><font size="3" color="black" >126</font></td>
<td><img src="images/vegetables/silverbeet2.jpg" width="100%" height="100%"/></td>
<td><font size="3" color="black" >silverBeetRed</font></td>
<td><img src="images/tick.png" width="50%" height="30%"/></td>
<td><font size="3" color="black"> 45 INR /KG </font></td> 
</tr>



<td><font size="3" color="black" >127</font></td>
<td><img src="images/vegetables/spinach.jpg" width="100%" height="100%"/></td>
<td><font size="3" color="black" >Spinach</font></td>
<td><img src="images/tick.png" width="50%" height="30%"/></td>
<td><font size="3" color="black"> 15 INR /bundle </font></td> 
</tr>



<td><font size="3" color="black" >128</font></td>
<td><img src="images/vegetables/spud.jpg" width="100%" height="100%"/></td>
<td><font size="3" color="black" >Spud</font></td>
<td><img src="images/tick.png" width="50%" height="30%"/></td>
<td><font size="3" color="black"> 25 INR /KG </font></td> 
</tr>



<td><font size="3" color="black" >129</font></td>
<td><img src="images/vegetables/squash.jpg" width="100%" height="100%"/></td>
<td><font size="3" color="black" >Squash</font></td>
<td><img src="images/tick.png" width="50%" height="30%"/></td>
<td><font size="3" color="black"> 105 INR /KG </font></td> 
</tr>



<td><font size="3" color="black" >130</font></td>
<td><img src="images/vegetables/swede.jpg" width="100%" height="100%"/></td>
<td><font size="3" color="black" >Swede</font></td>
<td><img src="images/red tick.png" width="50%" height="30%"/></td>
<!--<td><input type="checkbox" name="30"></td>-->
<td>Sorry! This Vegetable is not Available</td>
</tr>



<td><font size="3" color="black" >131</font></td>
<td><img src="images/vegetables/sweetpotato.jpg" width="100%" height="100%"/></td>
<td><font size="3" color="black" >SweetPotato</font></td>
<td><img src="images/tick.png" width="50%" height="30%"/></td>
<td><font size="3" color="black"> 35 INR /KG </font></td> 
</tr>



<td><font size="3" color="black" >132</font></td>
<td><img src="images/vegetables/Turnip.jpg" width="100%" height="100%"/></td>
<td><font size="3" color="black" >Turnip</font></td>
<td><img src="images/tick.png" width="50%" height="30%"/></td>
<td><font size="3" color="black"> 75 INR /KG </font></td> 
</tr>



<td><font size="3" color="black" >133</font></td>
<td><img src="images/vegetables/yam.jpg" width="100%" height="100%"/></td>
<td><font size="3" color="black" >Yam</font></td>
<td><img src="images/red tick.png" width="50%" height="30%"/></td>
<!--<td><input type="checkbox" name="33"></td>-->
<td>Sorry! This Vegetable is not Available</td>
</tr>



<td><font size="3" color="black" >134</font></td>
<td><img src="images/vegetables/zucchini.jpg" width="100%" height="100%"/></td>
<td><font size="3" color="black" >Zucchini</font></td>
<td><img src="images/red tick.png" width="50%" height="30%"/></td>
<!--<td><input type="checkbox" name="34"></td>-->
<td>Sorry! This Vegetable is not Available</td>
</tr>





</table>
</p>



 <label> <font size="4" > Select Vegetable </font>
                    </label>
                    <select name="vegetable"><option value="-1">
                        </option>
                        <option >Artichoke
                        </option>
						<option >Asparagus
                        </option>
						<option >Bean
                        </option>
		   <option value="v4">Beet
                        </option><option >Broccoli
                        </option><option >BrusselsSpouts
                        </option><option >ButterNut
                        </option><option >Cabbage
                        </option><option >Carrot
                        </option><option >CauliFlower
                        </option><option >Celery
                        </option><option >Cucumber
                        </option><option >Fennel
                        </option><option >Leek
                        </option><option >Lettuce
                        </option><option >Marrow Veggie
                        </option><option >Onion
                        </option><option >Parsnip
                        </option><option >Pea
                        </option><option >Potato
                        </option><option >Pumpkin
                        </option><option >Raddish
                        </option><option >Rhubarb
                        </option><option >Rutabaga
                        </option><option >SilverBeet
                        </option><option >SilverBeetRed
                        </option><option >Spinach
                        </option><option >Spud
                        </option><option >Squash
                        </option><option >Swede
                        </option><option >Sweetpotato
                        </option><option >Turnip
                        </option><option >Yam
                        </option><option >Zucchini

  </option>
                    </select>



<center>  <li class="buttons ">
<div>

                    <input id="bookForm" name="bookForm" class="book veggie submit" type="submit" value="Book"/>
</div>
</li> </center>

				
				
            </fieldset>
			</form>
			



	
	</body>
</html>
