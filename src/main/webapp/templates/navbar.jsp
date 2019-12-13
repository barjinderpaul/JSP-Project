<%--
  Created by IntelliJ IDEA.
  User: barjinder
  Date: 12/12/19
  Time: 12:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href=<%=request.getParameter("cssFile")%>>
    <title> <%= request.getParameter("title") %> </title>
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
        <span> NBFC-P2P </span>
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

            <% if(session.getAttribute("Username") != null) { %>
                <li>
                    <a href="admin.jsp" class="logout-btn" style="border-bottom: 0">
                        <input type="submit" class="btn" value="Home">
                    </a>
                </li>
                <li>
                    <form action="logout">
                        <a href="login.jsp" class="logout-btn" style="border-bottom: 0">
                            <input type="submit" class="btn" value="Logout">
                        </a>
                    </form>
                </li>
            <% } else { %>
                <li>
                    <a href="login.jsp" class="login-btn">
                        <input type="submit" class="btn" value="Login">
                    </a>
                </li>
                <li>
                    <a href="register.jsp" class="login-btn">
                        <input type="submit" class="btn" value="Register">
                    </a>
                </li>

            <% } %>

        </ul>
    </div>
</nav>