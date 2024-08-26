package com.godigit.webapp.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {
    private String message;
    // LifeCycle of Servlet
    // init(), Service (doGet(), doPost(), destroy())
    public void init() {
        message = "Hello World!";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        response.setContentType("text/html");

        // Hello
        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<h1>" + message + request.getParameter("userName") + "</h1>");
        out.println("</body></html>");

    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        response.setContentType("text/html");
        /*PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<h1>" + request.getParameter("userName") + "</h1>");
        out.println("<h1>" + request.getParameter("password") + "</h1>");
        out.println("</body></html>");*/
        request.setAttribute("userName", request.getParameter("userName"));
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("NextNavigation.jsp");

        requestDispatcher.forward(request, response);
    }

    public void destroy() {
    }
}