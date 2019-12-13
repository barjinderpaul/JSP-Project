package com.feedback;

import com.constants.ENV;
import com.entities.Admin;
import com.entities.FeedbackEntries;
import org.mindrot.jbcrypt.BCrypt;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(value = "/register")
public class RegisterServlet extends HttpServlet {

    private String generateHashedPassword (String password ) {
        return BCrypt.hashpw(password, ENV.SALT.value);
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/register.jsp");
        requestDispatcher.forward(request,response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("username");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");

        System.out.println("name = "  + name + " " + password + " " + confirmPassword + " "  + generateHashedPassword(password));

        if( (password.equals(confirmPassword)) ) {

            EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("contactUsPersistanceUnit");
            EntityManager entityManager = entityManagerFactory.createEntityManager();

            Admin user = new Admin();

            user.setName(name);
            user.setPassword(generateHashedPassword(password));

            entityManager.getTransaction().begin();
            entityManager.persist(user);
            entityManager.getTransaction().commit();

            entityManager.close();
            entityManagerFactory.close();

            response.sendRedirect("login.jsp");
        }
        else {
            request.setAttribute("errorMessage","Passwords do not match");
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("/register.jsp");
            requestDispatcher.forward(request,response);
        }
    }
}
