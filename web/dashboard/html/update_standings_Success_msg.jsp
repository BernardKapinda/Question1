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
        <title>Update Team Standings</title>            
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        
        <link rel="icon" href="favicon.ico" type="image/x-icon" />
        <!-- END META SECTION -->
        
        <!-- CSS INCLUDE -->        
        <link rel="stylesheet" type="text/css" id="theme" href="css/theme-default.css"/>
         <link rel="stylesheet" type="text/css" id="theme" href="css/custom_buttons.css"/>
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
                    
                      
                    
                    
                    <li class="xn-title">Fifa Dashboard</li>                    
                    <li><a href="fifa_main.jsp"><span class="fa fa-home"></span> <span class="xn-text">Home</span></a></li>
                         <li><a href="groups.jsp"><span class="fa fa-home"></span> <span class="xn-text">Group Teams</span></a></li>
                         <li><a href="standings.jsp"><span class="fa fa-home"></span> <span class="xn-text">Standings</span></a></li>
                         <li><a href="update_standings.jsp"><span class="fa fa-home"></span> <span class="xn-text">Update Standings</span></a></li>
                             
                       
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
                    <li><a href="#">Update</a></li>
                    <li class="active">Successful</li>
                </ul>
                <!-- END BREADCRUMB -->                
                
                <!-- PAGE TITLE -->
                
                <!-- END PAGE TITLE -->                
                
                <!-- PAGE CONTENT WRAPPER -->
                <div class="page-content-wrap">         
                    <center><img src="img/logo1.png"></center><br>
                    <center><h2>Match Standings Updated Successfully!</h2></center>
                   

                    

                    
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
    <!-- END SCRIPTS -->        
    </body>
</html>







