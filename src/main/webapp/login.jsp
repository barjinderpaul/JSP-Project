<%--
  Created by IntelliJ IDEA.
  User: barjinder
  Date: 11/12/19
  Time: 1:32 PM
  To change this template use File | Settings | File Templates.
--%>
<jsp:include page="templates/navbar.jsp" >
    <jsp:param name="cssFile" value="css/login.css" />
    <jsp:param name="title" value="Admin Login"/>
</jsp:include>

<%
    if(session.getAttribute("Username") != null ) {
        response.sendRedirect("admin.jsp");
    }
%>

<%--<%@ include file="templates/navbar.jsp" %>--%>

<div class = "container">
        <div class="wrapper">
            <form action="login" method="post" name="Login_Form" class="form-signin">
              <%if(request.getAttribute("errorMessage") != null ) { %>
                <div class="alert alert-danger">
                    <%= request.getAttribute("errorMessage")== null? "":request.getAttribute("errorMessage") %>
                </div>
               <% } %>
                <h3 class="form-signin-heading">Welcome Back! Please Sign In</h3>
                <hr class="colorgraph"><br>

                <input type="text" class="form-control" name="Username" placeholder="Username" required="" autofocus="" />
                <input type="password" class="form-control" name="Password" placeholder="Password" required=""/>

                <button class="btn btn-lg btn-primary btn-block"  name="Submit" value="Login" type="Submit">Login</button>
            </form>
        </div>
    </div>

<%@ include file="templates/footer.html"%>