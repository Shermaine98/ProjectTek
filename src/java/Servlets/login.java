/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import DAO.Accounts;
import Model.User;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Geraldine Atayan
 */
public class login extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        String username = request.getParameter("username");
        String pass = request.getParameter("password");
        Accounts dao = new Accounts();

        if (dao.authenticate(username, pass)) {
            HttpSession session = request.getSession();
            ServletContext context = getServletContext();
            session.setAttribute("name", username);
            RequestDispatcher rd = context.getRequestDispatcher("/home.jsp");
            rd.forward(request, response);
        } else {
            out.print("Sorry, username or password error!");
            request.getRequestDispatcher("login.html").include(request, response);
        }
        out.close();

    }
}
