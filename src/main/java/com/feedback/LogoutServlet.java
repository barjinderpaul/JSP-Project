package com.feedback;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

//@WebServlet(value = "/logout")
public class LogoutServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request , HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();
        session.removeAttribute("Username");
        session.invalidate();

        response.sendRedirect("login");
    }
}
