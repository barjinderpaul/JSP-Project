<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">
    <link rel='stylesheet' href='webjars/bootstrap/3.2.0/css/bootstrap.min.css'>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link href="css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
<div>
    <nav class="navbar navbar-expand-lg bg-white fixed-top">
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
            <span class="navbar-toggler-icon bg-primary text-white"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto ">
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
</div>

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
                <select class="custom-dropdown" name="cars">
                    <option class="dropdown-option" value="debt-consolidation">Debt Consolidation</option>
                    <option class="dropdown-option" value="home-improvement">Home Improvement</option>
                    <option class="dropdown-option" value="education">Education</option>
                    <option class="dropdown-option" value="appliances-and-electronics">Appliances and Electronics</option>
                    <option class="dropdown-option" value="wedding">Wedding</option>
                    <option class="dropdown-option" value="event-or-occasion">Event/Occasion</option>
                    <option class="dropdown-option" value="travel-or-holiday">Travel/Holiday</option>
                    <option class="dropdown-option" value="medical-expenses">Medical Expenses</option>
                    <option class="dropdown-option" value="business-investment">Business Investment</option>
                    <option class="dropdown-option" value="vehicle-purchase">Vehicle Purchase</option>
                    <option class="dropdown-option" value="down-payment">Down Payment</option>
                    <option class="dropdown-option" value="security-or-rental-deposit">Security or Rental Deposit</option>
                    <option class="dropdown-option" value="investment">Investment</option>
                    <option class="dropdown-option" value="others">Others</option>

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

            <div class=" how-finzy-works-image-column col-sm-4 align-items-center justify-content-center">
                <div class="how-finzy-works-image-div col-12">
                    <img class="how-finzy-works-image"
                         src="https://res.cloudinary.com/finzy/image/upload/v1496830327/Group_4_kendsi.png"
                         alt="first-image">
                    <br><br>
                    <p class="col-12">Digitally Connect borrowers and investors</p>
                </div>
            </div>
            <div class="col-sm-4  align-items-center justify-content-center">
                <div class="how-finzy-works-image-div col-12">
                    <img class="how-finzy-works-image"
                         src="https://res.cloudinary.com/finzy/image/upload/v1496830346/Group_3_tib7i9.png"
                         alt="first-image">
                    <br><br>
                    <p class="col-12">Digitally Connect borrowers and investors</p>
                </div>

            </div>
            <div class="col-sm-4 align-items-center justify-content-center">
                <div class=" how-finzy-works-image-div col-12">
                    <img class="how-finzy-works-image"
                         src="https://res.cloudinary.com/finzy/image/upload/v1496830393/Group_2_v5rg2k.png"
                         alt="first-image">
                    <br><br>
                    <p class="col-12">Digitally Connect borrowers and investors</p>

                </div>
            </div>
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
                <div class="col-xl-3 col-lg-4 col-md-6">
                    <div class="card" style="width: 25rem;">
                        <img src="https://res.cloudinary.com/finzy/image/upload/v1538986872/amit_ihskhe.jpg" class="card-img-top" alt="...">
                        <div class="card-body text-center"">
                            <h4>Amit More</h4>
                            <p>Founder & CEO</p>
                            <p class="card-text">Amit brings vision, business strategy and core financial sector domain knowledge to Finzy. Amit is an expert in the Indian Banking & Financial Services industry with over 16 years of experience across ICICI Bank, Credit Suisse AG and Edelweiss. </p>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-4 col-md-6 col-xm-6 c">
                    <div class="card" style="width: 25rem;">
                        <img src="https://res.cloudinary.com/finzy/image/upload/v1538986872/abhinandan_aukpdl.jpg" class="card-img-top" alt="...">
                        <div class="card-body text-center"">
                            <h4>Abhinandan Sangam</h4>
                            <p>Co-founder & CTO</p>
                            <p class="card-text">Abhinandan is an expert in building capabilities across geographies. He oversees Tech and Product at finzy and has over 19 years of experience with organizations like ThoughtWorks, Sabre, MindTree, Siemens, Amadeus. </p>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-4 col-md-6">
                    <div class="card" style="width: 25rem;">
                        <img src="https://res.cloudinary.com/finzy/image/upload/v1538986872/vishwas_ztkchg.jpg" class="card-img-top" alt="...">
                        <div class="card-body text-center">
                            <h4>Vishwas Dixit</h4>
                            <p>Co-founder & CMO</p>
                            <p class="card-text">Vishwas is the face of Finzy. With 23 years of Sales, Marketing & Distribution experience in organizations like Toyota, TVS and Dunlop,he brings in expertise in market expansion projects and creating distribution networks. </p>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-4 col-md-6">
                    <div class="card" style="width: 25rem;">
                        <img src="https://res.cloudinary.com/finzy/image/upload/v1538986872/apoorv_mt9lo0.jpg" class="card-img-top" alt="...">
                        <div class="card-body text-center">
                            <h4>Apoorv Gawde</h4>
                            <p>CIO & Head of Product</p>
                            <p class="card-text">Apoorv has over 13 years of experience in envisioning and building digital products. He has worked across the globe to create and deliver products. With a passion for experience design, at finzy, he focuses on product strategy and service design. </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- YOUR CODE HERE -->
    <%--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>--%>
    <script src="https://code.jquery.com/jquery.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
            integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
            crossorigin="anonymous"></script>
    <%--<script type="text/javascript" src="webjars/jquery/2.1.1/jquery.min.js"></script>--%>
    <%--<script type="text/javascript" src="webjars/bootstrap/3.2.0/js/bootstrap.min.js"></script>--%>
</div>
</body>
</html>