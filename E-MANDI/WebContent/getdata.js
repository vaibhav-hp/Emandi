var http=getHttpObject();
function getList()
	{
		//alert('dfdd');
		//document.writeln("sdvjbsdjhhj");
		var Ptype=document.getElementById("Ptype").value;
		if(Ptype.value=="----Select----")
			return;
		else if(Ptype=="AP")
		{
			//document.writeln("sdvjbsdjhhj");
			http.open("GET","AP.xml", true);
		}
		else if(Ptype=="Andaman&Nicobar")
		{
		
			http.open("GET","Andaman&Nicobar.xml", true);
		}
		else if(Ptype=="ArunchalPradesh")
		{
		
			http.open("GET","ArunchalPradesh.xml", true);
		}
		else if(Ptype=="Assam")
		{
		
			http.open("GET","Assam.xml", true);
		}
		else if(Ptype=="Bihar")
		{
		
			http.open("GET","Bihar.xml", true);
		}
		else if(Ptype=="Chandigarh")
		{
		
			http.open("GET","Chandigarh.xml", true);
		}
		else if(Ptype=="Chattisgarh")
		{
		
			http.open("GET","Chattisgarh.xml", true);
		}
		else if(Ptype=="Dadra&Nagar")
		{
		
			http.open("GET","Dadra&Nagar.xml", true);
		}
		else if(Ptype=="Daman&Diu")
		{
		
			http.open("GET","Daman&Diu.xml", true);
		}
		else if(Ptype=="Delhi")
		{
		
			http.open("GET","Delhi.xml", true);
		}
		else if(Ptype=="Goa")
		{
		
			http.open("GET","Goa.xml", true);
		}
		else if(Ptype=="Gujrat")
		{
		
			http.open("GET","Gujrat.xml", true);
		}
		else if(Ptype=="Haryana")
		{
		
			http.open("GET","Haryana.xml", true);
		}
		else if(Ptype=="HimachalPradesh")
		{
		
			http.open("GET","HimachalPradesh.xml", true);
		}
		else if(Ptype=="Jammu&Kashmir")
		{
		
			http.open("GET","Jammu&Kashmir.xml", true);
		}
		else if(Ptype=="Jharkhand")
		{
		
			http.open("GET","Jharkhand.xml", true);
		}
		else if(Ptype=="Karnataka")
		{
		
			http.open("GET","Karnataka.xml", true);
		}
		else if(Ptype=="Kerala")
		{
		
			http.open("GET","Kerala.xml", true);
		}
		else if(Ptype=="Lakshdweep")
		{
		
			http.open("GET","Lakshdweep.xml", true);
		}
		else if(Ptype=="MadhyaPradesh")
		{
		
			http.open("GET","MadhyaPradesh.xml", true);
		}
		else if(Ptype=="Maharashtra")
		{
		
			http.open("GET","Maharashtra.xml", true);
		}
		else if(Ptype=="Manipur")
		{
		
			http.open("GET","Manipur.xml", true);
		}
		else if(Ptype=="Meghalaya")
		{
		
			http.open("GET","Meghalaya.xml", true);
		}
		else if(Ptype=="Mizoram")
		{
		
			http.open("GET","Mizoram.xml", true);
		}
		else if(Ptype=="Nagaland")
		{
		
			http.open("GET","Nagaland.xml", true);
		}
		else if(Ptype=="Orissa")
		{
		
			http.open("GET","Orissa.xml", true);
		}
		else if(Ptype=="Pondicherry")
		{
		
			http.open("GET","Pondicherry.xml", true);
		}
		else if(Ptype=="Punjab")
		{
		
			http.open("GET","Punjab.xml", true);
		}
		else if(Ptype=="Punjab")
		{
		
			http.open("GET","Punjab.xml", true);
		}
		else if(Ptype=="Rajasthan")
		{
		
			http.open("GET","Rajasthan.xml", true);
		}
		else if(Ptype=="Sikkim")
		{
		
			http.open("GET","Sikkim.xml", true);
		}
		else if(Ptype=="TamilNadu")
		{
		
			http.open("GET","TamilNadu.xml", true);
		}
		else if(Ptype=="Tripura")
		{
		
			http.open("GET","Tripura.xml", true);
		}
		else if(Ptype=="Uttaranchal")
		{
		
			http.open("GET","Uttaranchal.xml", true);
		}
		else if(Ptype=="UttarPradesh")
		{
		
			http.open("GET","UttarPradesh.xml", true);
		}
		else if(Ptype=="WestBengal")
		{
		
			http.open("GET","WestBengal.xml", true);
		}
		http.onreadystatechange=handleHttpResponse;
		http.send(null);
		}
function handleHttpResponse(){
	//document.writeln("sdfkjdfkdjkd");
	if((http.readyState==4)&&(http.status==200))
	{
		
		var xmlDocument=http.responseXML;
		var items = xmlDocument.getElementsByTagName("District");
		//alert(items);
		var i;
		var Pname=document.getElementById("p");
		Pname.options[0] = new Option("----Select----"); 
		for (i=1; i<=items.length; i++) {
			Pname.options[i] = new Option(items[i-1].getElementsByTagName("name")[0].firstChild.data);
		}
	}
}
	function getHttpObject()
	{
		//alert('called');
		var xmlhttp;
		if (window.XMLHttpRequest) 
		{
			xmlhttp = new XMLHttpRequest();
		}
		else if (window.ActiveXObject)
		{
			isIE = true;
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
			return xmlhttp;	
	}

	