<%--
  Created by IntelliJ IDEA.
  User: barjinder
  Date: 13/12/19
  Time: 3:03 PM
  To change this template use File | Settings | File Templates.
--%>
<jsp:include page="/templates/navbar.jsp" >
    <jsp:param name="cssFile" value="css/register.css" />
    <jsp:param name="title" value="Register"/>
</jsp:include>

<%
    if(session.getAttribute("Username") != null ) {
        response.sendRedirect("admin");
    }
%>

<div class = "container">
    <div class="wrapper">
        <form action="register" method="post" name="Register-form" class="form-signin">

            <%if(request.getAttribute("errorMessage") != null ) { %>
                <div class="alert alert-danger">
                    <%= request.getAttribute("errorMessage")== null? "":request.getAttribute("errorMessage") %>
                </div>
            <% } %>

            <%if(request.getAttribute("adminExists") != null ) { %>
                <div class="alert alert-danger">
                    <%= request.getAttribute("adminExists")== null? "":request.getAttribute("adminExists") %>
                </div>
            <% } %>

            <h3 class="form-signin-heading">Register yourself</h3>
            <hr class="colorgraph"><br>

            <input type="text" class="form-control" name="username" placeholder="Username" required="" autofocus="" />
            <input type="password" class="form-control" name="password" placeholder="Password" required=""/>
            <input type="password" class="form-control confirm-password" name="confirmPassword" placeholder="Confirm password" required=""/>

            <button class="btn btn-lg btn-primary btn-block"  name="Submit" value="Register" type="Submit">Register</button>
        </form>
    </div>
</div>

<%@ include file="/templates/footer.html"%>