<%--<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>--%>
<%@ page import="com.constants.DROPDOWN" %>
<%@ page import="com.constants.HOW_FINZY_WORKS" %>
<%@ page import="com.constants.TEAM" %>

<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">
    <link rel='stylesheet' href='webjars/bootstrap/3.2.0/css/bootstrap.min.css'>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link href="css/style.css" rel="stylesheet" type="text/css">
</head>
<body>

<%@ include file="html/navbar.jsp"%>

<div class="container-fluid bg-image row align-items-end justify-content-end">
    <div class="row">
        <h4 class="loan-heading">Quick personal loans. Low interest rates</h4>
        <div class="apply-loan-div row">
            <div class="apply-loan-div-column col-sm-3 ">
                <label class="apply-loan-div-label" for="loan-amount">Loan Amount <br>
                    <input class="apply-loan-div-input" type="number" id="loan-amount" placeholder="Upto 5,00,000">
                </label>
            </div>
            <div class="apply-loan-div-column col-sm-3">

                <label class="apply-loan-div-label">Loan Purpose</label>
                <select class="custom-dropdown" name="loan-reasons">
                    <% for (DROPDOWN season : DROPDOWN.values()) { %>
                        <option class="dropdown-option" value="debt-consolidation"><%=season.label%></option>
                    <% } %>
                </select>

            </div>
            <div class="apply-loan-div-column col-sm-3">
                <label class="apply-loan-div-label" for="loan-duration">Tenure Duration<br>
                    <input class="apply-loan-div-input" type="text" id="loan-duration" placeholder="36 Months">
                </label>


            </div>
            <div class="apply-loan-div-column col-sm-2">
                <button class="apply-loan-div-button">
                    Apply Now
                </button>
            </div>
        </div>
        <div>
        </div>

    </div>
</div>

<div class="how-finzy-works ">
    <div class="row  align-items-center justify-content-center">
        <h1>How finzy works</h1>
    </div>
    <div class="how-finzy-works-description row align-items-center mt-4 justify-content-center">
        <p>finzy connects personal loan borrowers with investors</p>
    </div>
    <br><br><br>
    <div class="container">
        <div class="row">
           <% for (HOW_FINZY_WORKS element : HOW_FINZY_WORKS.values()) { %>
                <div class=" how-finzy-works-image-column col-sm-4 align-items-center justify-content-center">
                    <div class="how-finzy-works-image-div col-12">
                        <img class="how-finzy-works-image" src=<%=element.url%> alt=<%=element.alt%>>
                        <br><br>
                        <p class="col-12">Digitally Connect borrowers and investors</p>
                    </div>
                </div>
            <% } %>
        </div>
    </div>
    <br><br>

    <div class="container">
        <div class="row align-items-center justify-content-center">
            <h1>What do I need to do for a Personal Loan</h1>
        </div>
        <br><br>
        <div class="row align-items-center justify-content-center">
            <p>finzy makes entire borrowing process simple and user friendly You can get your loan funded in as little
                as 48 hours </p>
        </div>
        <br><br><br><br>
        <div class="row">
            <img src="https://res.cloudinary.com/finzy/image/upload/v1498288560/borrower_2div_ghvugv.png"
                 alt="Personal loan">
        </div>
    </div>
    <br><br><br>

    <div class="container-fluid" id="why-borrow-with-finzy">
        <div class="row align-items-center justify-content-center">
            <h1 class="why-borrow-with-finzy-h1">Why Borrow with finzy</h1>
        </div>
        <br>
        <div class="row align-items-center justify-content-center">
            <p>We strive to get you the loan in quickest turn around time, at lowest rate of interest and in a hassle
                free manner.</p>
        </div>
        <br>

        <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <div class="carousel-item-flex">
                        <div class="carousel-item-content-flex">
                            <h1>Quick. Easy</h1>
                            <ul>
                                <li>Online loan application process</li>
                                <li>Loans funded in as less as 48 hours</li>
                                <li>finzy facilitates execution of loan agreement either digitally or at your doorstep</li>
                            </ul>
                            <button>BORROW NOW</button>

                        </div>
                        <div>
                            <img class="img-size " src="https://res.cloudinary.com/finzy/image/upload/v1496667973/Group_29_y89deb.png" alt="">
                        </div>

                    </div>
                </div>

                <div class="carousel-item ">
                    <div class="carousel-item-flex">
                        <div class="carousel-item-content-flex">
                            <h1>Flexibility and Transparency</h1>
                            <p>At finzy we provide you the benefit of a low monthly EMI, thanks to our 36 month loan tenure. You also have the ability to prepay your loan fully or partially whenever you want with no penalties incurred.
                            </p>

                            <ul>
                                <li>No hidden charges</li>
                                <li>No lock-in</li>
                                <li>Visual dashboards to track your transactions</li>

                            </ul>
                            <button>BORROW NOW</button>
                        </div>
                        <div>
                            <img class="img-size " src="https://res.cloudinary.com/finzy/image/upload/v1496667973/Group_29_y89deb.png" alt="">
                        </div>

                    </div>
                </div>


                <div class="carousel-item ">
                    <div class="carousel-item-flex">
                        <div class="carousel-item-content-flex">
                            <h1>Security and Privacy</h1>

                            <ul>
                                <li>our personal information is never revealed to evaluating investors</li>
                                <li>Loans funded only by screened investors</li>
                                <li>finzy assures your personal data is secure and not shared or misused</li>
                                <li>finzy remains your contact point despite loans being funded by multiple investors</li>

                            </ul>
                            <button>BORROW NOW</button>
                        </div>
                        <div>
                            <img class="img-size " src="https://res.cloudinary.com/finzy/image/upload/v1496667973/Group_29_y89deb.png" alt="">
                        </div>

                    </div>
                </div>


                <div class="carousel-item ">
                    <div class="carousel-item-flex">
                        <div class="carousel-item-content-flex">
                            <h1>Credit Assessment </h1>
                            <p> Our evaluation process goes beyond the traditional approach of banks. By assessing borrowers on multiple parameters and not limited to just credit score or only to employees of Selective Corporate, we are able to offer loans to a much larger borrower segment </p>
                            <button>BORROW NOW</button>
                        </div>
                        <div>
                            <img class="img-size " src="https://res.cloudinary.com/finzy/image/upload/v1496667973/Group_29_y89deb.png" alt="">
                        </div>

                    </div>
                </div>

            </div>
            <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>


    </div>


    <br>
<%--    Team section--%>
    <div class="core-team ">
        <div class="row  align-items-center justify-content-center">
            <h1>Core Team</h1>
        </div>
        <div class="core-team-description row align-items-center mt-4 justify-content-center">
            <p>The founding team of Finzy are professionals who have excelled in their fields ranging across finance, technology, product, sales, marketing and leadership.</p>
        </div>
        <br>
        <div class="container-fluid ">
            <div class="row m-0 p-0 justify-content-center">

                <% for (TEAM team_member : TEAM.values()) { %>
                <div class="col-xl-3 col-lg-4 col-md-6">
                    <div class="card" style="width: 25rem;">
                        <img src=<%=team_member.imageUrl%> class="card-img-top" alt=<%= team_member.alt%> >
                        <div class="card-body text-center">
                            <h4><%= team_member.name %></h4>
                            <p> <%= team_member.designation %> </p>
                            <p class="card-text"> <%= team_member.about %> </p>
                        </div>
                    </div>
                </div>
                <% } %>

            </div>
        </div>
    </div>


<%@ include file="html/footer.html"%>