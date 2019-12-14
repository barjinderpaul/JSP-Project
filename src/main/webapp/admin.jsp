<%@ page import="com.entities.FeedbackEntries" %>
<%@ page import="java.util.List" %>
<%@ page import="javax.persistence.Persistence" %>
<%@ page import="javax.persistence.EntityManager" %>
<%@ page import="javax.persistence.EntityManagerFactory" %>
<%@ page import="javax.persistence.criteria.CriteriaBuilder" %>
<%@ page import="javax.persistence.criteria.CriteriaQuery" %>
<%@ page import="javax.persistence.criteria.Root" %>

<%--
  Created by IntelliJ IDEA.
  User: barjinder
  Date: 10/12/19
  Time: 11:04 PM
  To change this template use File | Settings | File Templates.
--%>
<jsp:include page="templates/navbar.jsp" >
    <jsp:param name="cssFile" value="css/admin.css" />
    <jsp:param name="title" value="Feedback Results"/>
</jsp:include>
    <%
        //To prevent the use of back button to go back to pages.
        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
        response.setHeader("Pragma","no-cache");
        response.setHeader("Expires","0");

        if(session.getAttribute("Username") == null ) {
            response.sendRedirect("login.jsp");
        }
    %>
    <br><br>
    <h1 class="text-center">Feedback entries</h1>
    <form action="generateCSV" class="text-center">
        <a href="login.jsp" class="logout-btn" style="border-bottom: 0">
            <input type="submit" class="btn" value="Generate CSV">
        </a>
    </form>
    <br>

    <table class="table table-striped table-bordered">
        <thead class="thead-dark">
            <tr>
                <td scope="col">#</td>
                <td scope="col">Name</td>
                <td scope="col">Mobile Number</td>
                <td scope="col">Email</td>
                <td scope="col">Message</td>
            </tr>
        </thead>
        <tbody>

            <% List<FeedbackEntries> entries = (List<FeedbackEntries>) request.getAttribute("entriesData");
                for( FeedbackEntries entry : entries ) { %>
                <tr scope="row">
                    <td><%= entry.getId() %></td>
                    <td><%= entry.getName() %></td>
                    <td><%= entry.getMobileNumber() %></td>
                    <td><%= entry.getEmailId() %></td>
                    <td><%= entry.getMessage() %></td>
                </tr>
            <% } %>
        </tbody>
    </table>

<%@ include file="templates/footer.html"%>