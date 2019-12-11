package com.feedback;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class LoginValidatorServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("Username");
        String password = request.getParameter("Password");

        RequestDispatcher rd = request.getRequestDispatcher("admin.jsp");
                ;
        if(username.equals("admin") && password.equals("admin")) {
            rd.forward(request,response);
        }
        else {
            PrintWriter out = response.getWriter();
            out.print("Wrong Username password");
        }
    }
}
