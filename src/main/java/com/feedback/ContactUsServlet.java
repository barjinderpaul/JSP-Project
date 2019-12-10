package com.feedback;

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

        PrintWriter out = response.getWriter();
//        out.println("name = " + name
//                    + "mobile number = " + mobileNumber
//                    + "email = " + email
//                    + "message = " + message
//                    );

//        request.setAttribute("sum", sum);
//        request.setAttribute("diff",diff);
//        request.setAttribute("mul",mul);
//        request.setAttribute("div",div);
//
//        request.setAttribute("firstNumber",firstNumber);
//        request.setAttribute("secondNumber",secondNumber);
//
//        RequestDispatcher rd = request.getRequestDispatcher("advanceCalculations");
          RequestDispatcher rd = request.getRequestDispatcher("feedback_submitted.jsp");
         rd.forward(request,response);
    }

}
