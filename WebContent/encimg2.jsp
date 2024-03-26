<%@ page import="java.sql.*, javax.sql.*,  java.util.HashSet, java.util.ArrayList, java.util.Iterator, java.io.*"%>
<%@page import="java.util.*" %>
<%@page import="javax.crypto.spec.*"%> 
<%@page import="javax.crypto.*"%> 

<html>
<head>


</head>
<%String id=request.getParameter("fid"); %>
<%@page import="java.sql.*"%>
<% Blob b = null;
String buff=null;
byte[] decrypted = null;

String skey="";
String encfname="";
try
	{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/DocumentRetrieval","root","root");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select skeygenerated,encryptedfilename,actualfname from upload where fid='"+id+"'");
	while(rs.next())
	{
		skey=rs.getString(1);
		encfname=rs.getString(2);
		
		byte[] decodedKey = Base64.getDecoder().decode(skey);
		SecretKey originalKey = new SecretKeySpec(decodedKey, 0, decodedKey.length, "AES");
		System.out.println("originalKey== "+originalKey);

		
		String imgpath="D://December2021//DocumentRetrieval//WebContent//encfiles//"+encfname; 
		
		/* ================================================================= */
				
				File f = new File(imgpath);
		InputStream is = null;
	
			is = new FileInputStream(f);
		
		byte[] content = null;
		
			content = new byte[is.available()];
		
		
			is.read(content);
		

		System.out.println("content== "+content);

		
		/* ================================================================= */
		Cipher cipher1;
		try {
			cipher1 = Cipher.getInstance("AES/ECB/PKCS5Padding");
			cipher1.init(Cipher.DECRYPT_MODE, originalKey);
			decrypted = cipher1.doFinal(content);
		} catch (Exception e) {
			e.printStackTrace();
		}

		System.out.println("decrypted======= "+decrypted);
		
		
		
		b=rs.getBlob(1);
		buff=rs.getString(3);
		
		
		
	}
	}
catch(Exception e)
{
	out.println(e);
}

	%>
<body>		
<%

		
		if(b != null)
		{try{
			String fileName = buff;
			byte[] ba = decrypted;
			response.setContentType("image");
			response.setHeader("Content-Disposition","attachment; fileName=\""+fileName+"\"");
			OutputStream os = response.getOutputStream();
			os.write(ba);
			os.close();
		}
		catch(Exception e){
			System.out.println(e);
			System.out.println("sdsds==================");
		}
		}
		else
		{
			System.out.println("null");
		}




System.out.println("dddddddddddddd");






%>

</body>
</html>