<%--
  Created by IntelliJ IDEA.
  User: barjinder
  Date: 11/12/19
  Time: 1:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="css/login.css">

    <title>Admin Login</title>
</head>
<body>


<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div>
        <a class="navbar-brand" href="#">
            <img src="https://res.cloudinary.com/finzy/image/upload/v1491394379/logoWeb1x_1_thzngg.png" alt="Logo">
        </a>
        <a class="navbar-brand" href="#">
            <img src="https://finzy.com/assets/images/badge_small.png" width="60px" alt="">
        </a>
        <span>
                    NBFC-P2P
                </span>
    </div>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav ml-auto ">
            <li class="nav-item active">
                <a class="nav-link" href="index.jsp">
                    <p>Home</p>
                </a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="contact-us.jsp">
                    <p>Contact Us</p>
                </a>
            </li>
            <li>
                <a href="login.jsp" class="login-btn">
                    <input type="submit" class="btn" value="Login">
                </a>
            </li>
        </ul>
    </div>
</nav>

<div class = "container">
        <div class="wrapper">
            <form action="login" method="post" name="Login_Form" class="form-signin">
                <h3 class="form-signin-heading">Welcome Back! Please Sign In</h3>
                <hr class="colorgraph"><br>

                <input type="text" class="form-control" name="Username" placeholder="Username" required="" autofocus="" />
                <input type="password" class="form-control" name="Password" placeholder="Password" required=""/>

                <button class="btn btn-lg btn-primary btn-block"  name="Submit" value="Login" type="Submit">Login</button>
            </form>
        </div>
    </div>

<%@ include file="html/footer.html"%>