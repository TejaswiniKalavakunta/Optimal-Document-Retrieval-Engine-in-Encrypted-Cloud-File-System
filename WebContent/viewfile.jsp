<%@ page import="java.sql.*" %>
<%

 //String email=(String)session.getAttribute("pemail");
//System.out.println(email); 
//String id=(String)session.getAttribute("id");
String id=session.getAttribute("un").toString(); 
System.out.println(id);
String email=session.getAttribute("pemail").toString();
System.out.println(email);

try
{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/DocumentRetrieval", "root" , "root");					
		PreparedStatement ps1=con.prepareStatement("select * from upload where uid='"+id+"'");
		ResultSet rs=ps1.executeQuery();
		%>
<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Hybrid Encryption</title>
<meta name="description" content="">
<meta name="author" content="">

<!-- Favicons
    ================================================== -->
<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
<link rel="apple-touch-icon" href="img/apple-touch-icon.png">
<link rel="apple-touch-icon" sizes="72x72" href="img/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon" sizes="114x114" href="img/apple-touch-icon-114x114.png">

<!-- Bootstrap -->
<link rel="stylesheet" type="text/css"  href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="fonts/font-awesome/css/font-awesome.css">

<!-- Stylesheet
    ================================================== -->
<link rel="stylesheet" type="text/css"  href="css/style.css">
<link href="https://fonts.googleapis.com/css?family=Raleway:300,400,500,600,700" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Rochester" rel="stylesheet">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
     < <style>
 body  {
  background-image: url("img/cloud9.jpg");
  background-color: #cccccc;
  background-size:cover;
} 
h2{
text-transform:capitalize;
color:white;
}
table,tr,td,th {
	padding: 3px;
	text-alignment: center;
}
</style> 
</head>
<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">
<!-- Navigation
    ==========================================-->
<nav id="menu" class="navbar navbar-default navbar-fixed-top">
  <div class="container"> 
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
    </div>
    
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
    <h1 style="color:white">A Particle Frame Work for Secure Document Retrieval in Encrypted Cloud File Systems</h1></br>
      <ul class="nav navbar-nav">
           <li  align="left"> <a href="userhome.jsp">Home</a> </li>                                               
        <li> <a href="upload.jsp">Upload</a> </li>
           <li class="active"><a href="viewfile.jsp">View Files</a></li> 
           <li><a href="viewreq.jsp">View Request</a></li>
           <li><a href="index.html">Logout</a></li>
      </ul>
    </div>
    <!-- /.navbar-collapse --> 
  </div>
</nav>
<!-- Header -->
<header id="header">
  <!-- <div class="intro"> -->
    <div class="overlay" >
      <div class="container">
        <div class="row">
          <div class="intro-text">
            <div align="center">
                          <h2 align="center" style="color: red"><b>View Upload Files</b></h2>
                 <table border="1" style="background-color: #443c3c99;" >
            	<tr align="center" >
            	    <th>id</th>
            		<th>File Name</th>
            		<th>Uploaded File</th>
            		<th>Download</th>
            		</tr>
                    <%while(rs.next())
            		{
            		
            		%>
            		 <tr style="color: white;">
			 <td align="center"><font color="white"><%=rs.getString(1)%></font></td>
			   
			  <td align="justify"><font color="white"><%=rs.getString(2)%></font></td>
			    <td align="center"><font color="white"><%=rs.getString(3)%></font></td>  
			  
			 <td style="border: 1px solid white"><a href="encimg.jsp?fid=<%=rs.getInt(1)%>"><font style="color: green"><b>Download</b></font></a>
			</tr>
			
			
			<%
			
            		} 
            		
            		%>
            		
			</table>
			
		<% 
}
catch(Exception e)
{
	e.printStackTrace();
}

		%>
						 
                        
               
                   
                
                
	<div>
	 
    </div>



          </div>
        </div>
      </div>
    </div>
  </div>
</header>

<script type="text/javascript" src="js/jquery.1.11.1.js"></script> 
<script type="text/javascript" src="js/bootstrap.js"></script> 
<script type="text/javascript" src="js/SmoothScroll.js"></script> 
<script type="text/javascript" src="js/jqBootstrapValidation.js"></script> 
<script type="text/javascript" src="js/contact_me.js"></script> 
<script type="text/javascript" src="js/main.js"></script>
</body>
</html>