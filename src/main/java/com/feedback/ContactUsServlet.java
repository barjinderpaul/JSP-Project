package com.feedback;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class ContactUsServlet extends HttpServlet {

    public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String mobileNumber = request.getParameter("mob-no");
        String email = request.getParameter("email");
        String message = request.getParameter("message");

//        PrintWriter out = response.getWriter();
        EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("contactUsPersistanceUnit");
        EntityManager entityManager = entityManagerFactory.createEntityManager();

        FeedbackEntries entry =  new FeedbackEntries();

        entry.setName(name);
        entry.setMobileNumber(mobileNumber);
        entry.setEmailId(email);
        entry.setMessage(message);

        entityManager.getTransaction().begin();
        entityManager.persist(entry);
        entityManager.getTransaction().commit();

        entityManager.close();
        entityManagerFactory.close();

        RequestDispatcher rd = request.getRequestDispatcher("feedback_submitted.jsp");
         rd.forward(request,response);
    }

}
