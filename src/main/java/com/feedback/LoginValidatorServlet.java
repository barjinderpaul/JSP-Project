package com.feedback;

import com.constants.ENV;
import com.entities.Admin;
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
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

//@WebServlet(value = "/login")
public class LoginValidatorServlet extends HttpServlet {

    private String generateHashedPassword (String password ) {
        return BCrypt.hashpw(password, ENV.SALT.value);
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/WEB-INF/login.jsp");
        requestDispatcher.forward(request,response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("Username");
        String password = request.getParameter("Password");
        String hashedPassword = generateHashedPassword(password);

        EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("contactUsPersistanceUnit");
        EntityManager entityManager = entityManagerFactory.createEntityManager();

        CriteriaBuilder criteriaBuilder = entityManager.getCriteriaBuilder();
        CriteriaQuery<Admin> criteriaQuery = criteriaBuilder.createQuery(Admin.class);
        Root<Admin> itemRoot = criteriaQuery.from(Admin.class);

        Predicate predicateForUsername = criteriaBuilder.equal(itemRoot.get("name"),username);
        Predicate predicateForPassword = criteriaBuilder.equal(itemRoot.get("password"),hashedPassword);
        Predicate predicateForUsernameAndPassword = criteriaBuilder.and(predicateForUsername,predicateForPassword);

        criteriaQuery.where(predicateForUsernameAndPassword);
        List<Admin> adminData = entityManager.createQuery(criteriaQuery).getResultList();

        entityManager.close();
        entityManagerFactory.close();

       if(adminData.size() > 0) {
            HttpSession session = request.getSession();
            session.setAttribute("Username",username);
//           RequestDispatcher requestDispatcher = request.getRequestDispatcher("/admin");
//            requestDispatcher.forward(request,response);
            response.sendRedirect("admin");
        }
        else {
           request.setAttribute("errorMessage","Invalid username or password");
           RequestDispatcher requestDispatcher = request.getRequestDispatcher("WEB-INF/login.jsp");
           requestDispatcher.forward(request,response);
        }
    }
}
