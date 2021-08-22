<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="java.sql.DriverManager"%>
    <%@page import="java.sql.Statement"%>
    <%@page import="java.sql.Connection"%>
    <%@page import="java.sql.ResultSet"%>
    <%@page import="java.sql.Driver" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>Vizew - Blog &amp; Magazine HTML Template</title>

    <!-- Favicon -->
    <link rel="icon" href="img/core-img/favicon.ico">

    <!-- Stylesheet -->
    <link rel="stylesheet" href="style.css">

</head>
 
<body>
	<!-- ##### Contact Area Start ##### -->
   
        <div class="container" style="background-color:#333536">
            <div class="row justify-content-center">
                <div class="col-12 col-md-5 col-lg-8">
                    <!-- Section Heading -->
                    

                    
                    <!-- Contact Form Area -->
                    <div class="contact-form-area mt-10">
                    
                    <table>
                        <%
    String breaknews[]= new String[7];
    int s=0;
    try
    {
   		 Class.forName("com.mysql.jdbc.Driver").newInstance();
    	 Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/insightdaily","root","myproject");
    	 Statement stmt=conn.createStatement();
    	 String query="SELECT news_id,Headline,image FROM news ORDER BY Priority desc,Date desc,Time desc;";
    	 ResultSet rs= stmt.executeQuery(query);
    	 while(rs.next()){
    		%>
    		
    		<tr>
    		<td> 
                      
    		<a class="nav-link active" id="post-1-tab" data-toggle="pill" href="#post-1" role="tab" aria-controls="post-1" aria-selected="true">
                                <!-- Single Blog Post -->
                                <div class="single-blog-post style-2 d-flex align-items-center">
                                    <div class="post-thumbnail">
                                        <img src=<%= rs.getString(3) %> alt="">
                                    </div>
                                    <div class="post-content">
                                    <% String st= ""+rs.getInt(1); %>
                                        <a href="video-post.jsp?value=<%=st %>"><h6 class="post-title"><%= rs.getString(2) %></h6></a>
                                        
                                    </div>
                                </div>
                            </a></td></tr>
    		<%
    		
    	 }
    
    }
    catch(Exception e)
    {
    	e.printStackTrace();
    }
    finally
    {
    	
    }
   
   
   
    %>
    </table>
  
                    </div>
                </div>

             </div> 
        </div>
   
    <!-- ##### Contact Area End ##### -->
</body>
</html>