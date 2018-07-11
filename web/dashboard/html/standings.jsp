<%-- 
    Document   : home
    Created on : Jun 24, 2018, 11:00:34 PM
    Author     : Bernard Kapinda
--%>

<%@page import="java.sql.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
    <head>        
        <!-- META SECTION -->
        <title>Group Standings</title>            
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        
        <link rel="icon" href="favicon.ico" type="image/x-icon" />
        <!-- END META SECTION -->
        
        <!-- CSS INCLUDE -->        
        <link rel="stylesheet" type="text/css" id="theme" href="css/theme-default.css"/>
        <!-- EOF CSS INCLUDE -->      
        
        
        
        <style style="text/css">
    
                            
                           
                      



   
    .x-navigation > li.xn-logo > a:first-child {
  font-size: 0px;
  text-indent: -9999px;
  
  background: url("img/logo2.png")   center no-repeat #2d3945;
  
  padding: 0px;
  border-bottom: 0px;
  color: #FFF;
  height: 50px;
}


        </style>
    </head>
    <body>
        
     <%
     Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fifa18?" + "user=root&password=20152016"); 

     
     %>
        <!-- START PAGE CONTAINER -->
        <div class="page-container">
            
            <!-- START PAGE SIDEBAR -->
            <div class="page-sidebar">
                <!-- START X-NAVIGATION -->
                <ul class="x-navigation">
                   <li class="xn-logo">
                        <a href="fifa_main.jsp"></a>
                        <a href="#" class="x-navigation-control"></a>
                    </li>
                    
                      
                    
                    
                    <li class="xn-title">Admin Dashboard</li>                    
                      <li><a href="fifa_main.jsp"><span class="fa fa-spinner fa-spin"></span> <span class="xn-text">Home</span></a></li>
                         <li><a href="group_teams.jsp"><span class="fa fa-spinner fa-spin"></span> <span class="xn-text">Group Teams</span></a></li>
                         <li><a href="standings.jsp"><span class="fa fa-spinner fa-spin"></span> <span class="xn-text">Standings</span></a></li>
                         <li><a href="update_standings.jsp"><span class="fa fa-spinner fa-spin"></span> <span class="xn-text">Update Standings</span></a></li>
                           
                       
                </ul>
                <!-- END X-NAVIGATION -->
            </div>
            <!-- END PAGE SIDEBAR -->
            
            <!-- PAGE CONTENT -->
            <div class="page-content">
                
                <!-- START X-NAVIGATION VERTICAL -->
                <ul class="x-navigation x-navigation-horizontal x-navigation-panel">
                    <!-- TOGGLE NAVIGATION -->
                   
                    <!-- END TOGGLE NAVIGATION -->
                    <!-- SEARCH -->
                    <li class="xn-search">
                        <form role="form">
                            <input type="text" name="search" placeholder="Search..."/>
                        </form>
                    </li>   
                    <!-- END SEARCH -->
                    <!-- SIGN OUT -->
                    <li class="xn-icon-button pull-right">
                        <a href="#" class="mb-control" data-box="#mb-signout"><span class="fa fa-sign-out"></span></a>                        
                    </li> 
                    <!-- END SIGN OUT -->
                    <!-- MESSAGES -->
                    
                    <!-- END MESSAGES -->
                    <!-- TASKS -->
                    
                    <!-- END TASKS -->
                </ul>
                <!-- END X-NAVIGATION VERTICAL -->                    
                
                <!-- START BREADCRUMB -->
                 <ul class="breadcrumb">
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Russia</a></li>
                    <li class="active">2018</li>
                </ul>
                <!-- END BREADCRUMB -->                
                
                <!-- PAGE TITLE -->
                
                <!-- END PAGE TITLE -->                
                
                <!-- PAGE CONTENT WRAPPER -->
                <div class="page-content-wrap">         
                    
                    <center><img src="img/logo1.png"></center>
                            <!-- START DATATABLE  -->
                            <div class="row"> <div class="col-md-2"></div>
                            <div class="col-md-8">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title">Group A</h3>
                                                                      
                                    
                                </div>
                                <div class="panel-body">
                                    <table  class="table table-responsive">
                                        <thead>
                                            <tr>
                                                <th >Team</th>
                                                <th></th>
                                               <th width='50%'></th>
                                                <th>MP</th>
                                                <th>W</th>
                                                <th>D</th>
                                                <th>L</th>
                                                <th>GF</th>
                                                <th>GA</th>
                                                <th>GD</th>
                                                <th>Pts</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            
                                            
                                             <tr>
                                                 
                                                  <%
                                                    PreparedStatement st2 = con.prepareStatement("select * from match_results where country = 'Russia'");

                                                        ResultSet rs2 = st2.executeQuery();
                                                        while (rs2.next()) {
	
                                                    %>
                                                <td>1</td> 
                                                <td><img src="img/russia.PNG"></td>                                                
                                                <td >Russia</td>
                                                <td><%=rs2.getString(10)%></td>
                                                <td><%=rs2.getString(7)%></td>
                                                <td><%=rs2.getString(8)%></td>
                                                <td><%=rs2.getString(9)%></td>
                                                <td><%=rs2.getString(12)%></td>
                                                <td><%=rs2.getString(13)%></td>
                                                 <td><%=rs2.getString(14)%></td>
                                                <td><%=rs2.getString(11)%></td>
                                            </tr>
                                            <%}%>
                                            
                                            
                                            <tr>
                                               
                                                    <%
                                                    PreparedStatement st1 = con.prepareStatement("select * from match_results where country = 'Uruguay'");

                                                        ResultSet rs1 = st1.executeQuery();
                                                        while (rs1.next()) {
	
                                                    %>
                                                <td>2</td> 
                                                <td><img src="img/Urugua.PNG"></td>                                                
                                                <td >Uruguay</td>
                                                <td><%=rs1.getString(10)%></td>
                                                <td><%=rs1.getString(7)%></td>
                                                <td><%=rs1.getString(8)%></td>
                                                <td><%=rs1.getString(9)%></td>
                                                <td><%=rs1.getString(12)%></td>
                                                <td><%=rs1.getString(13)%></td>
                                                 <td><%=rs1.getString(14)%></td>
                                                <td><%=rs1.getString(11)%></td>
                                            </tr>
                                          <%}%>
                                          
                                          
                                          <tr>
                                                
                                                 <%
                                                    PreparedStatement st4 = con.prepareStatement("select * from match_results where country = 'Egypt'");

                                                        ResultSet rs4 = st4.executeQuery();
                                                        while (rs4.next()) {
	
                                                    %>
                                                <td>3</td> 
                                                <td><img src="img/egypt.PNG"></td>                                                
                                                <td >Egypt</td>                                                
                                                <td><%=rs4.getString(10)%></td>
                                                <td><%=rs4.getString(7)%></td>
                                                <td><%=rs4.getString(8)%></td>
                                                <td><%=rs4.getString(9)%></td>
                                                <td><%=rs4.getString(12)%></td>
                                                <td><%=rs4.getString(13)%></td>
                                                 <td><%=rs4.getString(14)%></td>
                                                <td><%=rs4.getString(11)%></td>
                                            </tr>
                                            <%}%>
                                          
                                             <tr>
                                                 
                                                  <%
                                                    PreparedStatement st3 = con.prepareStatement("select * from match_results where country = 'Saudi Arabia'");

                                                        ResultSet rs3 = st3.executeQuery();
                                                        while (rs3.next()) {
	
                                                    %>
                                                <td>4</td> 
                                                <td><img src="img/saudiarabia.PNG"></td>                                                
                                                <td >Saudi Arabia</td>
                                                <td><%=rs3.getString(10)%></td>
                                                <td><%=rs3.getString(7)%></td>
                                                <td><%=rs3.getString(8)%></td>
                                                <td><%=rs3.getString(9)%></td>
                                                <td><%=rs3.getString(12)%></td>
                                                <td><%=rs3.getString(13)%></td>
                                                 <td><%=rs3.getString(14)%></td>
                                                <td><%=rs3.getString(11)%></td>
                                            </tr>
                                            <%}%>
                                            
                                            
                                        </tbody>
                                    </table>                                    
                                    
                                </div>
                            </div></div></div>
                            
                            <div class="row">
                                <div class="col-md-2"></div>
                            <div class="col-md-8">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title">Group B</h3>
                                                                        
                                    
                                </div>
                                <div class="panel-body">
                                    <table  class="table table-responsive">
                                        <thead>
                                            <tr>
                                                <th >Team</th>
                                                <th></th>
                                               <th width='50%'></th>
                                                <th>MP</th>
                                                <th>W</th>
                                                <th>D</th>
                                                <th>L</th>
                                                <th>GF</th>
                                                <th>GA</th>
                                                <th>GD</th>
                                                <th>Pts</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                
                                                <%
                                                    PreparedStatement st5 = con.prepareStatement("select * from match_results where country = 'Spain'");

                                                        ResultSet rs5 = st5.executeQuery();
                                                        while (rs5.next()) {
	
                                                    %>
                                                <td>1</td> 
                                                <td><img src="img/spain.PNG"></td>                                                
                                                <td >Spain</td>
                                                 <td><%=rs5.getString(10)%></td>
                                                <td><%=rs5.getString(7)%></td>
                                                <td><%=rs5.getString(8)%></td>
                                                <td><%=rs5.getString(9)%></td>
                                                <td><%=rs5.getString(12)%></td>
                                                <td><%=rs5.getString(13)%></td>
                                                 <td><%=rs5.getString(14)%></td>
                                                <td><%=rs5.getString(11)%></td>
                                            </tr>
                                            <%}%>
                                            
                                            <tr>
                                                
                                                 <%
                                                    PreparedStatement st6 = con.prepareStatement("select * from match_results where country = 'Portugal'");

                                                        ResultSet rs6 = st6.executeQuery();
                                                        while (rs6.next()) {
	
                                                    %>
                                                <td>2</td> 
                                                <td><img src="img/portugal.PNG"></td>                                                
                                                <td >Portugal</td>
                                               <td><%=rs6.getString(10)%></td>
                                                <td><%=rs6.getString(7)%></td>
                                                <td><%=rs6.getString(8)%></td>
                                                <td><%=rs6.getString(9)%></td>
                                                <td><%=rs6.getString(12)%></td>
                                                <td><%=rs6.getString(13)%></td>
                                                 <td><%=rs6.getString(14)%></td>
                                                <td><%=rs6.getString(11)%></td>
                                            </tr>
                                             <%}%>
                                             
                                            <tr>
                                                
                                                  <%
                                                    PreparedStatement st7 = con.prepareStatement("select * from match_results where country = 'Iran'");

                                                        ResultSet rs7 = st7.executeQuery();
                                                        while (rs7.next()) {
	
                                                    %>
                                                <td>3</td> 
                                                <td><img src="img/iran.PNG"></td>                                                
                                                <td >Iran</td>
                                                <td><%=rs7.getString(10)%></td>
                                                <td><%=rs7.getString(7)%></td>
                                                <td><%=rs7.getString(8)%></td>
                                                <td><%=rs7.getString(9)%></td>
                                                <td><%=rs7.getString(12)%></td>
                                                <td><%=rs7.getString(13)%></td>
                                                 <td><%=rs7.getString(14)%></td>
                                                <td><%=rs7.getString(11)%></td>
                                            </tr>
                                            
                                             <%}%>
                                             
                                             
                                            <tr>
                                                
                                                  <%
                                                    PreparedStatement st8 = con.prepareStatement("select * from match_results where country = 'Morocco'");

                                                        ResultSet rs8 = st8.executeQuery();
                                                        while (rs8.next()) {
	
                                                    %>
                                                <td>4</td> 
                                                <td><img src="img/morroco.PNG"></td>                                                
                                                <td >Morocco</td>
                                               <td><%=rs8.getString(10)%></td>
                                                <td><%=rs8.getString(7)%></td>
                                                <td><%=rs8.getString(8)%></td>
                                                <td><%=rs8.getString(9)%></td>
                                                <td><%=rs8.getString(12)%></td>
                                                <td><%=rs8.getString(13)%></td>
                                                 <td><%=rs8.getString(14)%></td>
                                                <td><%=rs8.getString(11)%></td>
                                            </tr>
                                            <%}%>
                                            
                                        </tbody>
                                    </table>                                    
                                    
                                </div>
                            </div></div>
                            </div>
                            
                            <div class="row">
                                <div class="col-md-2"></div>
                            <div class="col-md-8">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title">Group C</h3>
                                                                      
                                    
                                </div>
                                <div class="panel-body">
                                    <table  class="table table-responsive">
                                        <thead>
                                            <tr>
                                                <th >Team</th>
                                                <th></th>
                                               <th width='50%'></th>
                                                <th>MP</th>
                                                <th>W</th>
                                                <th>D</th>
                                                <th>L</th>
                                                <th>GF</th>
                                                <th>GA</th>
                                                <th>GD</th>
                                                <th>Pts</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                
                                                 <%
                                                    PreparedStatement st9 = con.prepareStatement("select * from match_results where country = 'France'");

                                                        ResultSet rs9 = st9.executeQuery();
                                                        while (rs9.next()) {
	
                                                    %>
                                                <td>1</td> 
                                                <td><img src="img/france.PNG"></td>                                                
                                                <td >France</td>
                                                <td><%=rs9.getString(10)%></td>
                                                <td><%=rs9.getString(7)%></td>
                                                <td><%=rs9.getString(8)%></td>
                                                <td><%=rs9.getString(9)%></td>
                                                <td><%=rs9.getString(12)%></td>
                                                <td><%=rs9.getString(13)%></td>
                                                 <td><%=rs9.getString(14)%></td>
                                                <td><%=rs9.getString(11)%></td>
                                            </tr>
                                            <%}%>
                                            
                                            <tr>
                                                
                                                 <%
                                                    PreparedStatement st10 = con.prepareStatement("select * from match_results where country = 'Denmark'");

                                                        ResultSet rs10 = st10.executeQuery();
                                                        while (rs10.next()) {
	
                                                    %>
                                                <td>2</td> 
                                                <td><img src="img/denmark.PNG"></td>                                                
                                                <td >Denmark</td>
                                                <td><%=rs10.getString(10)%></td>
                                                <td><%=rs10.getString(7)%></td>
                                                <td><%=rs10.getString(8)%></td>
                                                <td><%=rs10.getString(9)%></td>
                                                <td><%=rs10.getString(12)%></td>
                                                <td><%=rs10.getString(13)%></td>
                                                 <td><%=rs10.getString(14)%></td>
                                                <td><%=rs10.getString(11)%></td>
                                            </tr>
                                            <%}%>
                                            
                                            <tr>
                                                
                                                 <%
                                                    PreparedStatement st11 = con.prepareStatement("select * from match_results where country = 'Peru'");

                                                        ResultSet rs11 = st11.executeQuery();
                                                        while (rs11.next()) {
	
                                                    %>
                                                <td>3</td> 
                                                <td><img src="img/peru.PNG"></td>                                                
                                                <td >Peru</td>
                                               <td><%=rs11.getString(10)%></td>
                                                <td><%=rs11.getString(7)%></td>
                                                <td><%=rs11.getString(8)%></td>
                                                <td><%=rs11.getString(9)%></td>
                                                <td><%=rs11.getString(12)%></td>
                                                <td><%=rs11.getString(13)%></td>
                                                 <td><%=rs11.getString(14)%></td>
                                                <td><%=rs11.getString(11)%></td>
                                            </tr>
                                            <%}%>
                                            
                                            <tr>
                                                
                                                <%
                                                    PreparedStatement st12 = con.prepareStatement("select * from match_results where country = 'Peru'");

                                                        ResultSet rs12 = st12.executeQuery();
                                                        while (rs12.next()) {
	
                                                    %>
                                                <td>4</td> 
                                                <td><img src="img/australia.PNG"></td>                                                
                                                <td >Australia</td>
                                               <td><%=rs12.getString(10)%></td>
                                                <td><%=rs12.getString(7)%></td>
                                                <td><%=rs12.getString(8)%></td>
                                                <td><%=rs12.getString(9)%></td>
                                                <td><%=rs12.getString(12)%></td>
                                                <td><%=rs12.getString(13)%></td>
                                                 <td><%=rs12.getString(14)%></td>
                                                <td><%=rs12.getString(11)%></td>
                                            </tr>
                                            <%}%>
                                        </tbody>
                                    </table>                                    
                                    
                                </div>
                            </div></div>
                            </div>
                            
                            <div class="row">
                                <div class="col-md-2"></div>
                            <div class="col-md-8">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title">Group D</h3>
                                                                        
                                    
                                </div>
                                <div class="panel-body">
                                    <table  class="table table-responsive">
                                        <thead>
                                            <tr>
                                                <th >Team</th>
                                                <th></th>
                                               <th width='50%'></th>
                                                <th>MP</th>
                                                <th>W</th>
                                                <th>D</th>
                                                <th>L</th>
                                                <th>GF</th>
                                                <th>GA</th>
                                                <th>GD</th>
                                                <th>Pts</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                
                                                 <%
                                                    PreparedStatement st13 = con.prepareStatement("select * from match_results where country = 'Croatia'");

                                                        ResultSet rs13 = st13.executeQuery();
                                                        while (rs13.next()) {
	
                                                    %>
                                                <td>1</td> 
                                                <td><img src="img/croatia.PNG"></td>                                                
                                                <td >Croatia</td>
                                             <td><%=rs13.getString(10)%></td>
                                                <td><%=rs13.getString(7)%></td>
                                                <td><%=rs13.getString(8)%></td>
                                                <td><%=rs13.getString(9)%></td>
                                                <td><%=rs13.getString(12)%></td>
                                                <td><%=rs13.getString(13)%></td>
                                                 <td><%=rs13.getString(14)%></td>
                                                <td><%=rs13.getString(11)%></td>
                                            </tr>
                                            <%}%>
                                            
                                            <tr>
                                                
                                                <%
                                                    PreparedStatement st14 = con.prepareStatement("select * from match_results where country = 'Argentina'");

                                                        ResultSet rs14 = st14.executeQuery();
                                                        while (rs14.next()) {
	
                                                    %>
                                                <td>2</td> 
                                                <td><img src="img/argenitina.PNG"></td>                                                
                                                <td >Argentina</td>
                                               <td><%=rs14.getString(10)%></td>
                                                <td><%=rs14.getString(7)%></td>
                                                <td><%=rs14.getString(8)%></td>
                                                <td><%=rs14.getString(9)%></td>
                                                <td><%=rs14.getString(12)%></td>
                                                <td><%=rs14.getString(13)%></td>
                                                 <td><%=rs14.getString(14)%></td>
                                                <td><%=rs14.getString(11)%></td>
                                            </tr>
                                            <%}%>
                                            
                                            <tr>
                                                
                                                <%
                                                    PreparedStatement st15 = con.prepareStatement("select * from match_results where country = 'Nigeria'");

                                                        ResultSet rs15 = st15.executeQuery();
                                                        while (rs15.next()) {
	
                                                    %>
                                                <td>3</td> 
                                                <td><img src="img/nigeria.PNG"></td>                                                
                                                <td >Nigeria</td>
                                               <td><%=rs15.getString(10)%></td>
                                                <td><%=rs15.getString(7)%></td>
                                                <td><%=rs15.getString(8)%></td>
                                                <td><%=rs15.getString(9)%></td>
                                                <td><%=rs15.getString(12)%></td>
                                                <td><%=rs15.getString(13)%></td>
                                                 <td><%=rs15.getString(14)%></td>
                                                <td><%=rs15.getString(11)%></td>
                                            </tr>
                                            <%}%>
                                            <tr>
                                                
                                                <%
                                                    PreparedStatement st16 = con.prepareStatement("select * from match_results where country = 'Iceland'");

                                                        ResultSet rs16 = st15.executeQuery();
                                                        while (rs16.next()) {
	
                                                    %>
                                                <td>4</td> 
                                                <td><img src="img/iceland.PNG"></td>                                                
                                                <td >Iceland</td>
                                             <td><%=rs16.getString(10)%></td>
                                                <td><%=rs16.getString(7)%></td>
                                                <td><%=rs16.getString(8)%></td>
                                                <td><%=rs16.getString(9)%></td>
                                                <td><%=rs16.getString(12)%></td>
                                                <td><%=rs16.getString(13)%></td>
                                                 <td><%=rs16.getString(14)%></td>
                                                <td><%=rs16.getString(11)%></td>
                                            </tr>
                                            <%}%>
                                        </tbody>
                                    </table>                                    
                                    
                                </div>
                            </div></div>
                            </div>
                            
                            
                            <div class="row">
                                <div class="col-md-2"></div>
                            <div class="col-md-8">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title">Group E</h3>
                                                                        
                                    
                                </div>
                                <div class="panel-body">
                                    <table  class="table table-responsive">
                                        <thead>
                                            <tr>
                                                <th >Team</th>
                                                <th></th>
                                               <th width='50%'></th>
                                                <th>MP</th>
                                                <th>W</th>
                                                <th>D</th>
                                                <th>L</th>
                                                <th>GF</th>
                                                <th>GA</th>
                                                <th>GD</th>
                                                <th>Pts</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            
                                            <tr>
                                                
                                                  <%
                                                    PreparedStatement st19 = con.prepareStatement("select * from match_results where country = 'Serbia'");

                                                        ResultSet rs19 = st19.executeQuery();
                                                        while (rs19.next()) {
	
                                                    %>
                                                <td>1</td> 
                                                <td><img src="img/serbia.PNG"></td>                                                
                                                <td >Serbia</td>
                                                <td><%=rs19.getString(10)%></td>
                                                <td><%=rs19.getString(7)%></td>
                                                <td><%=rs19.getString(8)%></td>
                                                <td><%=rs19.getString(9)%></td>
                                                <td><%=rs19.getString(12)%></td>
                                                <td><%=rs19.getString(13)%></td>
                                                 <td><%=rs19.getString(14)%></td>
                                                <td><%=rs19.getString(11)%></td>
                                            </tr>
                                            <%}%>
                                            
                                             <tr>
                                                 
                                                  <%
                                                    PreparedStatement st17 = con.prepareStatement("select * from match_results where country = 'Brazil'");

                                                        ResultSet rs17 = st17.executeQuery();
                                                        while (rs17.next()) {
	
                                                    %>
                                                <td>2</td> 
                                                <td><img src="img/brazil.PNG"></td>                                                
                                                <td >Brazil</td>
                                               <td><%=rs17.getString(10)%></td>
                                                <td><%=rs17.getString(7)%></td>
                                                <td><%=rs17.getString(8)%></td>
                                                <td><%=rs17.getString(9)%></td>
                                                <td><%=rs17.getString(12)%></td>
                                                <td><%=rs17.getString(13)%></td>
                                                 <td><%=rs17.getString(14)%></td>
                                                <td><%=rs17.getString(11)%></td>
                                            </tr>
                                            <%}%>
                                            
                                             <tr>
                                                 
                                                   <%
                                                    PreparedStatement st18 = con.prepareStatement("select * from match_results where country = 'Switzerland'");

                                                        ResultSet rs18 = st18.executeQuery();
                                                        while (rs18.next()) {
	
                                                    %>
                                                <td>3</td> 
                                                <td><img src="img/switzerland.PNG"></td>                                                
                                                <td >Switzerland</td>
                                                 <td><%=rs18.getString(10)%></td>
                                                <td><%=rs18.getString(7)%></td>
                                                <td><%=rs18.getString(8)%></td>
                                                <td><%=rs18.getString(9)%></td>
                                                <td><%=rs18.getString(12)%></td>
                                                <td><%=rs18.getString(13)%></td>
                                                 <td><%=rs18.getString(14)%></td>
                                                <td><%=rs18.getString(11)%></td>
                                            </tr>
                                            <%}%>
                                            
                                            
                                            <tr>
                                                
                                                <%
                                                    PreparedStatement st20 = con.prepareStatement("select * from match_results where country = 'Costa Rica'");

                                                        ResultSet rs20 = st20.executeQuery();
                                                        while (rs20.next()) {
	
                                                    %>
                                                <td>4</td> 
                                                <td><img src="img/costarica.PNG"></td>                                                
                                                <td >Costa Rica</td>
                                                 <td><%=rs20.getString(10)%></td>
                                                <td><%=rs20.getString(7)%></td>
                                                <td><%=rs20.getString(8)%></td>
                                                <td><%=rs20.getString(9)%></td>
                                                <td><%=rs20.getString(12)%></td>
                                                <td><%=rs20.getString(13)%></td>
                                                 <td><%=rs20.getString(14)%></td>
                                                <td><%=rs20.getString(11)%></td>
                                            </tr>
                                            <%}%>
                                            
                                        </tbody>
                                    </table>                                    
                                    
                                </div>
                            </div></div>
                            </div>
                            
                            <div class="row">
                                <div class="col-md-2"></div>
                            <div class="col-md-8">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title">Group F</h3>
                                                                        
                                    
                                </div>
                                <div class="panel-body">
                                    <table  class="table table-responsive">
                                        <thead>
                                            <tr>
                                                <th >Team</th>
                                                <th></th>
                                               <th width='50%'></th>
                                                <th>MP</th>
                                                <th>W</th>
                                                <th>D</th>
                                                <th>L</th>
                                                <th>GF</th>
                                                <th>GA</th>
                                                <th>GD</th>
                                                <th>Pts</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            
                                            <tr>
                                                
                                                <%
                                                    PreparedStatement st21 = con.prepareStatement("select * from match_results where country = 'Sweden'");

                                                        ResultSet rs21 = st21.executeQuery();
                                                        while (rs21.next()) {
	
                                                    %>
                                                <td>1</td> 
                                                <td><img src="img/sweeden.PNG"></td>                                                
                                                <td >Sweden</td>
                                                 <td><%=rs21.getString(10)%></td>
                                                <td><%=rs21.getString(7)%></td>
                                                <td><%=rs21.getString(8)%></td>
                                                <td><%=rs21.getString(9)%></td>
                                                <td><%=rs21.getString(12)%></td>
                                                <td><%=rs21.getString(13)%></td>
                                                 <td><%=rs21.getString(14)%></td>
                                                <td><%=rs21.getString(11)%></td>
                                            </tr>
                                            <%}%>
                                            
                                            <tr>
                                                
                                                 <%
                                                    PreparedStatement st22 = con.prepareStatement("select * from match_results where country = 'Mexico'");

                                                        ResultSet rs22 = st22.executeQuery();
                                                        while (rs22.next()) {
	
                                                    %>
                                                <td>2</td> 
                                                <td><img src="img/mexico.PNG"></td>                                                
                                                <td >Mexico</td>
                                                <td><%=rs22.getString(10)%></td>
                                                <td><%=rs22.getString(7)%></td>
                                                <td><%=rs22.getString(8)%></td>
                                                <td><%=rs22.getString(9)%></td>
                                                <td><%=rs22.getString(12)%></td>
                                                <td><%=rs22.getString(13)%></td>
                                                 <td><%=rs22.getString(14)%></td>
                                                <td><%=rs22.getString(11)%></td>
                                            </tr>
                                            <%}%>
                                            
                                            <tr>
                                                 <%
                                                    PreparedStatement st23 = con.prepareStatement("select * from match_results where country = 'Korea Republic'");

                                                        ResultSet rs23 = st23.executeQuery();
                                                        while (rs23.next()) {
	
                                                    %>
                                                <td>3</td> 
                                                <td><img src="img/southkorea.PNG"></td>                                                
                                                <td >South Korea</td>
                                              <td><%=rs23.getString(10)%></td>
                                                <td><%=rs23.getString(7)%></td>
                                                <td><%=rs23.getString(8)%></td>
                                                <td><%=rs23.getString(9)%></td>
                                                <td><%=rs23.getString(12)%></td>
                                                <td><%=rs23.getString(13)%></td>
                                                 <td><%=rs23.getString(14)%></td>
                                                <td><%=rs23.getString(11)%></td>
                                            </tr>
                                            <%}%>
                                            
                                            <tr>
                                                
                                                <%
                                                    PreparedStatement st24 = con.prepareStatement("select * from match_results where country = 'Germany'");

                                                        ResultSet rs24 = st24.executeQuery();
                                                        while (rs24.next()) {
	
                                                    %>
                                                <td>4</td> 
                                                <td><img src="img/germany.PNG"></td>                                                
                                                <td >Germany</td>
                                                <td><%=rs24.getString(10)%></td>
                                                <td><%=rs24.getString(7)%></td>
                                                <td><%=rs24.getString(8)%></td>
                                                <td><%=rs24.getString(9)%></td>
                                                <td><%=rs24.getString(12)%></td>
                                                <td><%=rs24.getString(13)%></td>
                                                 <td><%=rs24.getString(14)%></td>
                                                <td><%=rs24.getString(11)%></td>
                                            </tr>
                                            <%}%>
                                        </tbody>
                                    </table>                                    
                                    
                                </div>
                            </div></div>
                            </div>
                            
                            <div class="row">
                                <div class="col-md-2"></div>
                            <div class="col-md-8">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title">Group G</h3>
                                                                        
                                    
                                </div>
                                <div class="panel-body">
                                    <table  class="table table-responsive">
                                        <thead>
                                            <tr>
                                                <th >Team</th>
                                                <th></th>
                                               <th width='50%'></th>
                                                <th>MP</th>
                                                <th>W</th>
                                                <th>D</th>
                                                <th>L</th>
                                                <th>GF</th>
                                                <th>GA</th>
                                                <th>GD</th>
                                                <th>Pts</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                
                                                 <%
                                                    PreparedStatement st25 = con.prepareStatement("select * from match_results where country = 'Belgium'");

                                                        ResultSet rs25 = st25.executeQuery();
                                                        while (rs25.next()) {
	
                                                    %>
                                                <td>1</td> 
                                                <td><img src="img/belguim.PNG"></td>                                                
                                                <td >Belguim</td>
                                               <td><%=rs25.getString(10)%></td>
                                                <td><%=rs25.getString(7)%></td>
                                                <td><%=rs25.getString(8)%></td>
                                                <td><%=rs25.getString(9)%></td>
                                                <td><%=rs25.getString(12)%></td>
                                                <td><%=rs25.getString(13)%></td>
                                                 <td><%=rs25.getString(14)%></td>
                                                <td><%=rs25.getString(11)%></td>
                                            </tr>
                                            <%}%>
                                            
                                            
                                            <tr>
                                                 
                                                  <%
                                                    PreparedStatement st28 = con.prepareStatement("select * from match_results where country = 'England'");

                                                        ResultSet rs28 = st28.executeQuery();
                                                        while (rs28.next()) {
	
                                                    %>
                                                <td>2</td> 
                                                <td><img src="img/england.PNG"></td>                                                
                                                <td >England</td>
                                                <td><%=rs28.getString(10)%></td>
                                                <td><%=rs28.getString(7)%></td>
                                                <td><%=rs28.getString(8)%></td>
                                                <td><%=rs28.getString(9)%></td>
                                                <td><%=rs28.getString(12)%></td>
                                                <td><%=rs28.getString(13)%></td>
                                                 <td><%=rs28.getString(14)%></td>
                                                <td><%=rs28.getString(11)%></td>
                                            </tr>
                                            <%}%>
                                            
                                            
                                            
                                            
                                             <tr>
                                                 
                                                  <%
                                                    PreparedStatement st27 = con.prepareStatement("select * from match_results where country = 'Tunisia'");

                                                        ResultSet rs27 = st27.executeQuery();
                                                        while (rs27.next()) {
	
                                                    %>
                                                <td>3</td> 
                                                <td><img src="img/tunisia.PNG"></td>                                                
                                                <td >Tunisia</td>
                                               <td><%=rs27.getString(10)%></td>
                                                <td><%=rs27.getString(7)%></td>
                                                <td><%=rs27.getString(8)%></td>
                                                <td><%=rs27.getString(9)%></td>
                                                <td><%=rs27.getString(12)%></td>
                                                <td><%=rs27.getString(13)%></td>
                                                 <td><%=rs27.getString(14)%></td>
                                                <td><%=rs27.getString(11)%></td>
                                            </tr>
                                            <%}%>
                                            
                                              <tr>
                                                 
                                                 <%
                                                    PreparedStatement st26 = con.prepareStatement("select * from match_results where country = 'Panama'");

                                                        ResultSet rs26 = st26.executeQuery();
                                                        while (rs26.next()) {
	
                                                    %>
                                                <td>4</td> 
                                                <td><img src="img/panama.PNG"></td>                                                
                                                <td >Panama</td>
                                              <td><%=rs26.getString(10)%></td>
                                                <td><%=rs26.getString(7)%></td>
                                                <td><%=rs26.getString(8)%></td>
                                                <td><%=rs26.getString(9)%></td>
                                                <td><%=rs26.getString(12)%></td>
                                                <td><%=rs26.getString(13)%></td>
                                                 <td><%=rs26.getString(14)%></td>
                                                <td><%=rs26.getString(11)%></td>
                                            </tr>
                                            <%}%>
                                            
                                          
                                        </tbody>
                                    </table>                                    
                                    
                                </div>
                            </div></div>
                            </div>
                            
                            <div class="row">
                                <div class="col-md-2"></div>
                            <div class="col-md-8">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title">Group H</h3>
                                                                       
                                    
                                </div>
                                <div class="panel-body">
                                    <table  class="table table-responsive">
                                        <thead>
                                            <tr>
                                                <th >Team</th>
                                                <th></th>
                                               <th width='50%'></th>
                                                <th>MP</th>
                                                <th>W</th>
                                                <th>D</th>
                                                <th>L</th>
                                                <th>GF</th>
                                                <th>GA</th>
                                                <th>GD</th>
                                                <th>Pts</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                               <tr>
                                                
                                                  <%
                                                    PreparedStatement st32 = con.prepareStatement("select * from match_results where country = 'Japan'");

                                                        ResultSet rs32= st32.executeQuery();
                                                        while (rs32.next()) {
	
                                                    %>
                                                <td>1</td> 
                                                <td><img src="img/japan.PNG"></td>                                                
                                                <td >Japan</td>
                                                 <td><%=rs32.getString(10)%></td>
                                                <td><%=rs32.getString(7)%></td>
                                                <td><%=rs32.getString(8)%></td>
                                                <td><%=rs32.getString(9)%></td>
                                                <td><%=rs32.getString(12)%></td>
                                                <td><%=rs32.getString(13)%></td>
                                                 <td><%=rs32.getString(14)%></td>
                                                <td><%=rs32.getString(11)%></td>
                                            </tr>
                                            <%}%>
                                            
                                             <tr>
                                                 
                                                 <%
                                                    PreparedStatement st30 = con.prepareStatement("select * from match_results where country = 'Senegal'");

                                                        ResultSet rs30 = st30.executeQuery();
                                                        while (rs30.next()) {
	
                                                    %>
                                                <td>2</td> 
                                                <td><img src="img/senegal.PNG"></td>                                                
                                                <td >Senegal</td>
                                              <td><%=rs30.getString(10)%></td>
                                                <td><%=rs30.getString(7)%></td>
                                                <td><%=rs30.getString(8)%></td>
                                                <td><%=rs30.getString(9)%></td>
                                                <td><%=rs30.getString(12)%></td>
                                                <td><%=rs30.getString(13)%></td>
                                                 <td><%=rs30.getString(14)%></td>
                                                <td><%=rs30.getString(11)%></td>
                                            </tr>
                                            <%}%>
                                            <tr>
                                                
                                                 <%
                                                    PreparedStatement st29 = con.prepareStatement("select * from match_results where country = 'Poland'");

                                                        ResultSet rs29 = st29.executeQuery();
                                                        while (rs29.next()) {
	
                                                    %>
                                                <td>3</td> 
                                                <td><img src="img/poland.PNG"></td>                                                
                                                <td >Poland</td>
                                                <td><%=rs29.getString(10)%></td>
                                                <td><%=rs29.getString(7)%></td>
                                                <td><%=rs29.getString(8)%></td>
                                                <td><%=rs29.getString(9)%></td>
                                                <td><%=rs29.getString(12)%></td>
                                                <td><%=rs29.getString(13)%></td>
                                                 <td><%=rs29.getString(14)%></td>
                                                <td><%=rs29.getString(11)%></td>
                                            </tr>
                                            <%}%>
                                            
                                            
                                            
                                            
                                            <tr>
                                                
                                                 <%
                                                    PreparedStatement st31 = con.prepareStatement("select * from match_results where country = 'Colombia'");

                                                        ResultSet rs31 = st31.executeQuery();
                                                        while (rs31.next()) {
	
                                                    %>
                                                <td>4</td> 
                                                <td><img src="img/columbia.PNG"></td>                                                
                                                <td >Columbia</td>
                                                <td><%=rs31.getString(10)%></td>
                                                <td><%=rs31.getString(7)%></td>
                                                <td><%=rs31.getString(8)%></td>
                                                <td><%=rs31.getString(9)%></td>
                                                <td><%=rs31.getString(12)%></td>
                                                <td><%=rs31.getString(13)%></td>
                                                 <td><%=rs31.getString(14)%></td>
                                                <td><%=rs31.getString(11)%></td>
                                            </tr>
                                            <%}%>
                                            
                                         
                                            
                                        </tbody>
                                    </table>                                    
                                    
                                </div>
                            </div></div>
                            </div>
                            <!-- END DATATABLE  -->  
                    

                    
                </div>
                <!-- PAGE CONTENT WRAPPER -->                
            </div>            
            <!-- END PAGE CONTENT -->
        </div>
        <!-- END PAGE CONTAINER -->
        
        <!-- MESSAGE BOX-->
        <div class="message-box animated fadeIn" data-sound="alert" id="mb-signout">
            <div class="mb-container">
                <div class="mb-middle">
                    <div class="mb-title"><span class="fa fa-sign-out"></span> Log <strong>Out</strong> ?</div>
                    <div class="mb-content">
                        <p>Are you sure you want to log out?</p>                    
                        <p>Press No if you want to continue. Press Yes to logout Of FIFA 2018 World Cup Portal. </p>
                    </div>
                    <div class="mb-footer">
                        <div class="pull-right">
                            <a href="fifa_portal_login.jsp" class="btn btn-success btn-lg">Yes</a>
                            <button class="btn btn-default btn-lg mb-control-close">No</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- END MESSAGE BOX-->

        <!-- START PRELOADS -->
        <audio id="audio-alert" src="audio/alert.mp3" preload="auto"></audio>
        <audio id="audio-fail" src="audio/fail.mp3" preload="auto"></audio>
        <!-- END PRELOADS -->               
        
    <!-- START SCRIPTS -->
        <!-- START PLUGINS -->
        <script type="text/javascript" src="js/plugins/jquery/jquery.min.js"></script>
        <script type="text/javascript" src="js/plugins/jquery/jquery-ui.min.js"></script>
        <script type="text/javascript" src="js/plugins/bootstrap/bootstrap.min.js"></script>        
        <!-- END PLUGINS -->
        
        <!-- START THIS PAGE PLUGINS-->        
        <script type='text/javascript' src='js/plugins/icheck/icheck.min.js'></script>
        <script type="text/javascript" src="js/plugins/mcustomscrollbar/jquery.mCustomScrollbar.min.js"></script>
        
        <script type="text/javascript" src="js/plugins/nvd3/lib/d3.v3.js"></script>        
        <script type="text/javascript" src="js/plugins/nvd3/nv.d3.min.js"></script>
        <!-- END THIS PAGE PLUGINS-->        
              <script type="text/javascript" src="js/plugins/knob/jquery.knob.min.js"></script>
        <script type="text/javascript" src="js/plugins/owl/owl.carousel.min.js"></script>        
        <script type="text/javascript" src="js/plugins/tagsinput/jquery.tagsinput.min.js"></script>
        <!-- START TEMPLATE -->
     
        
        <script type="text/javascript" src="js/plugins.js"></script>        
        <script type="text/javascript" src="js/actions.js"></script>
        <script type="text/javascript" src="js/demo_charts_nvd3.js"></script>
        
        <!-- END TEMPLATE -->
        <!-- START THIS PAGE PLUGINS-->        
        <script type='text/javascript' src='js/plugins/icheck/icheck.min.js'></script>
        <script type="text/javascript" src="js/plugins/mcustomscrollbar/jquery.mCustomScrollbar.min.js"></script>
        
        <script type="text/javascript" src="js/plugins/datatables/jquery.dataTables.min.js"></script>
        <script type="text/javascript" src="js/plugins/tableexport/tableExport.js"></script>
	<script type="text/javascript" src="js/plugins/tableexport/jquery.base64.js"></script>
	<script type="text/javascript" src="js/plugins/tableexport/html2canvas.js"></script>
	<script type="text/javascript" src="js/plugins/tableexport/jspdf/libs/sprintf.js"></script>
	<script type="text/javascript" src="js/plugins/tableexport/jspdf/jspdf.js"></script>
	<script type="text/javascript" src="js/plugins/tableexport/jspdf/libs/base64.js"></script>        
        <!-- END THIS PAGE PLUGINS-->   
    <!-- END SCRIPTS -->        
    
    </body>
</html>







