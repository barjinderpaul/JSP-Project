package com.feedback;

import com.constants.ENV;
import com.entities.Admin;
import com.entities.FeedbackEntries;
import org.mindrot.jbcrypt.BCrypt;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

//@WebServlet(value = "/register")
public class RegisterServlet extends HttpServlet {

    private String generateHashedPassword (String password ) {
        return BCrypt.hashpw(password, ENV.SALT.value);
    }

    private boolean adminExists(String adminUsername) {

        EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("contactUsPersistanceUnit");
        EntityManager entityManager = entityManagerFactory.createEntityManager();

        CriteriaBuilder criteriaBuilder = entityManager.getCriteriaBuilder();
        CriteriaQuery<Admin> criteriaQuery = criteriaBuilder.createQuery(Admin.class);
        Root<Admin> itemRoot = criteriaQuery.from(Admin.class);

        Predicate predicateForUsername = criteriaBuilder.equal(itemRoot.get("name"),adminUsername);

        criteriaQuery.where(predicateForUsername);

        List<Admin> adminData = entityManager.createQuery(criteriaQuery).getResultList();

        return adminData.size() > 0 ? true : false;
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/WEB-INF/register.jsp");
        requestDispatcher.forward(request,response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("username");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");

        System.out.println("name = "  + name + " " + password + " " + confirmPassword + " "  + generateHashedPassword(password));

        if( (password.equals(confirmPassword)) ) {

            if ( adminExists(name) ) {
                request.setAttribute("adminExists","Username already exists");
                RequestDispatcher requestDispatcher = request.getRequestDispatcher("/register.jsp");
                requestDispatcher.forward(request,response);
            }
            else {
                EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("contactUsPersistanceUnit");
                EntityManager entityManager = entityManagerFactory.createEntityManager();

                Admin admin = new Admin();

                admin.setName(name);
                admin.setPassword(generateHashedPassword(password));

                entityManager.getTransaction().begin();
                entityManager.persist(admin);
                entityManager.getTransaction().commit();

                entityManager.close();
                entityManagerFactory.close();

                request.setAttribute("registerSuccessful", "Successfully registered, please log in");
                RequestDispatcher requestDispatcher = request.getRequestDispatcher("WEB-INF/login.jsp");
                requestDispatcher.forward(request, response);
            }
        }
        else {
            request.setAttribute("errorMessage","Passwords do not match");
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("WEB-INF/register.jsp");
            requestDispatcher.forward(request,response);
        }
    }
}
