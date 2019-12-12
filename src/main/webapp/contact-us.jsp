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

<div class="empty-div">

</div><br><br>
<div class="contact-container contact-form align-items-center justify-content-center">
    <div class="row ">
        <div class="col-xl-6 col-md-6 col-md-12 form-column">
            <h1>Do you have a question or feedback?</h1>
            <p>Send us a message and we will get back to you.</p>
            <form action="feedback" method="post" class="contact-form-fields">
                <label for="name"> Your name <br>
                    <input type="text" id="name" name="name" required>
                </label>
                <label for="mob-no"> Mobile Number <br>
                    <input type="number" id="mob-no" name="mob-no" required>
                </label>
                <label for="email"> Email <br>
                    <input type="text" id="email" name="email" required>
                </label>
                <label for="message-field">Enter message <br><br>
                    <textarea name="message" id="message-field" cols="50" rows="4">

                        </textarea>
                </label><br><br>
                <button type="submit" class="submit-button">
                    Submit
                </button>

            </form>
        </div>

        <div class="col-6 details-column">
            <h1>Call us</h1><br>
            <div class="row">
                <div class="col">
                    <h5>For support:</h5>
                    <p>Call us: +1234567890</p>
                    <p>Email us : support@finzy.com</p>
                </div>
                <div class="col">
                    <h5>For Grievances and Escalations</h5>
                    <p>Call us: +9876543210</p>
                    <p>Email us : grievances@finzy.com</p>
                </div>

            </div><br>
            <div class="row">
                <h1>Office Address</h1>
            </div>
            <div class="row">
                <p>Bridge Fintech Solutions Private Limited <br>
                    (CIN : U74999MH2016PTC286583)</p>
            </div>
            <div class="row">
                <div class="col">
                    <h5>Registered Office Address</h5>
                    <p>L&T Crescent Bay, T5 2002,<br>
                        Jerbai Wadia Road, Parel,<br>
                        Mumbai 400 012</p>
                </div>
                <div class="col">
                    <h5>Corporate Office Address</h5>
                    <p>118, 80 Feet Road,<br>
                        1st Floor, Koramangala <br>
                        7th Block, Bengaluru 560095</p>
                </div>
            </div>
        </div>
    </div>
</div>


<%@ include file="templates/footer.html"%>