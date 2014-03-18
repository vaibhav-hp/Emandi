<%@page import="java.sql.*,java.io.*"%>
<%
try{
    InputStream sImage;
Class.forName("COM.ibm.db2.jdbc.app.DB2Driver");
           Connection con = DriverManager.getConnection("jdbc:db2:KMITEGAS","kmit","kmit");
      System.out.println("connected");
      Statement st=con.createStatement();
      String user=request.getParameter("uname");
      out.println(user);
      ResultSet rs=st.executeQuery("select img from upload where user='"+user+"'");
while(rs.next()){
byte[] bytearray = new byte[1048576];
int size=0;
sImage = rs.getBinaryStream(1);
response.reset();
response.setContentType("image/jpeg");
while((size=sImage.read(bytearray))!= -1 ){
response.getOutputStream().write(bytearray,0,size);
}
}

st.close();
con.close();
}
catch(Exception ex){
out.println("error :"+ex);
}
%>