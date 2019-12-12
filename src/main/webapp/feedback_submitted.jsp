<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <!-- <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge"> -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="css/contact_us.css">
    <title>Contact Us</title>
</head>

<body>

<%@ include file="templates/navbar.jsp"%>

<div class="jumbotron text-center">
    <h1 class="display-3">Thank You!</h1>
    <p class="lead"><strong>Please check your email</strong> for further instructions on how to complete your account setup.</p>
    <hr>
    <p>
        Having trouble? <a href="contact-us.jsp">Contact us</a>
    </p>
    <p class="lead">
        <a class="btn btn-primary btn-sm" href="index.jsp" role="button">Continue to homepage</a>
    </p>
</div>



<%@ include file="templates/footer.html"%>