<jsp:include page="templates/navbar.jsp" >
    <jsp:param name="cssFile" value="" />
    <jsp:param name="title" value="Thank You!"/>
</jsp:include>

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