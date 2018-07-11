<%-- 
    Document   : bank_login
    Created on : May 25, 2018, 8:49:30 AM
    Author     : Bernard Kapinda
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en" class="body-full-height" >
    <head>        
        
        <script >
function call()
{
if(document.f.bid.value==""){
alert("Please Enter Ur Name");
return false;
}
if(document.f.pwd.value==""){
alert("Please Enter Ur Password");
return false;
}
if((document.f.bid.value=="")||(document.f.pwd.value==""))
	{
alert("Please Enter Username& password");
return false;
}
}
</script>

        <!-- META SECTION -->
        <title>Fifa Portal Login</title>            
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />

        <link rel="icon" href="favicon.ico" type="image/x-icon" />
        <!-- END META SECTION -->

        <!-- CSS INCLUDE -->        
        <link rel="stylesheet" type="text/css" id="theme" href="css/theme-default.css"/>
        <link rel="stylesheet" type="text/css"  href="css/full_html.css"/>
        <link rel="stylesheet" type="text/css"  href="css/custom_buttons.css"/>

        <!-- EOF CSS INCLUDE -->                                    
    </head>
    <body >

        <div class="login-container">

            <div class="login-box animated fadeInDown">
                <div class="login-logo"></div>
                <div class="login-body">
                    <div class="login-title"><strong>Welcome</strong>, Please Login</div>
                    <form action="bloginch.jsp" name="f"  class="form-horizontal" method="post" onSubmit='return call()'>
                        <div class="form-group">
                            <div class="col-md-12">
                                <input type="text" class="form-control" placeholder="Username" name="name"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-12">
                                <input type="password" class="form-control" placeholder="Password" name="pwd"/>
                            </div>
                        </div>
                        <div class="form-group">
                           

                        </div>

                        <div class="form-group">
                            
                            
                            <div class="col-md-4">
                               
                                <button type="submit" class="btn btn-facebook btn-block">Log In</button>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="login-footer">
                    <div class="pull-left">
                        &copy; 2018 FIFA
                    </div>
                    <div class="pull-right">
                        <a href="#">About</a> |
                        <a href="#">Privacy</a> |
                        <a href="#">Contact Us</a>
                    </div>
                </div>
            </div>

        </div>

    </body>
</html>






