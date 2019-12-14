package com.feedback;

import com.entities.FeedbackEntries;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.util.List;

@WebServlet(value = "/admin")
public class AdminServlet extends HttpServlet {

    public List<FeedbackEntries> getFeedback() {
        EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("contactUsPersistanceUnit");
        EntityManager entityManager = entityManagerFactory.createEntityManager();

        CriteriaBuilder criteriaBuilder = entityManager.getCriteriaBuilder();
        CriteriaQuery<FeedbackEntries> query = criteriaBuilder.createQuery(FeedbackEntries.class);
        Root<FeedbackEntries> root = query.from(FeedbackEntries.class);

        query.select(root);

        return  entityManager.createQuery(query).getResultList();

    }

    public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<FeedbackEntries> data = getFeedback();
        request.setAttribute("entriesData",data);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("admin.jsp");
        requestDispatcher.forward(request,response);
    }



}
