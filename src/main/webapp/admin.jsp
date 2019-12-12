<%@ page import="com.entities.FeedbackEntries" %>
<%@ page import="java.util.List" %>
<%@ page import="javax.persistence.Persistence" %>
<%@ page import="javax.persistence.EntityManager" %>
<%@ page import="javax.persistence.EntityManagerFactory" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="javax.persistence.Query" %>
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
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="css/admin.css">


</head>
<body>

    <%@ include file="html/navbar.jsp"%>
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

    <h1 class="text-center">Feedback entries</h1><br>
<%--    <%!--%>
<%--        public List<FeedbackEntries> getFeedback() {--%>
<%--            EntityManagerFactory factory = Persistence.createEntityManagerFactory("contactUsPersistanceUnit");--%>
<%--            EntityManager em = factory.createEntityManager();--%>
<%--            Query q = em.createQuery("from contact_us_entries entry", FeedbackEntries.class);--%>
<%--            return q.getResultList();--%>
<%--        }--%>
<%--    %>--%>

    <%!
        public List<FeedbackEntries> getFeedback() {
            EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("contactUsPersistanceUnit");
            EntityManager entityManager = entityManagerFactory.createEntityManager();

            CriteriaBuilder criteriaBuilder = entityManager.getCriteriaBuilder();
            CriteriaQuery<FeedbackEntries> query = criteriaBuilder.createQuery(FeedbackEntries.class);
            Root<FeedbackEntries> root = query.from(FeedbackEntries.class);

            query.select(root);

            return  entityManager.createQuery(query).getResultList();

        }
    %>

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

            <%
                List<FeedbackEntries> entries = getFeedback();
                for( FeedbackEntries entry : entries ) {
            %>
                <tr scope="row">
                    <td><%= entry.getId() %></td>
                    <td><%= entry.getName() %></td>
                    <td><%= entry.getMobileNumber() %></td>
                    <td><%= entry.getEmailId() %></td>
                    <td><%= entry.getMessage() %></td>
                </tr>
            <%
                }
            %>
        </tbody>
    </table>



<%@ include file="html/footer.html"%>