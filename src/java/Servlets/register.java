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
import java.text.ParseException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Geraldine Atayan
 */
public class register extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     * @throws java.text.ParseException
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ParseException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        try {

            User newUser = new User();
            Accounts dao = new Accounts();

            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String gender = request.getParameter("gender");
            String birthdate = request.getParameter("birthdate");
            String division = request.getParameter("division");
            String email = request.getParameter("email");
            String username = request.getParameter("username");
            String password = request.getParameter("password");

            newUser.setFirstName(firstName);
            newUser.setLastName(lastName);
            newUser.setGender(gender);
            newUser.setBirthdate(birthdate);
            newUser.setDivision(division);
            newUser.setEmail(email);
            newUser.setUsername(username);
            newUser.setPassword(password);
            newUser.setUserID(dao.getLastUserID()+1);

            if (division.equalsIgnoreCase("Others")) {
                String reason = request.getParameter("reason");
                newUser.setReason(reason);
                String accessDate = request.getParameter("dateValid");
                newUser.setAccessDate(accessDate);

                if (dao.registerOthers(newUser)) {
                    ServletContext context = getServletContext();
                    RequestDispatcher rd = context.getRequestDispatcher("/index.jsp");
                    rd.forward(request, response);
                } else {
                    out.print("Something went wrong");
                    ServletContext context = getServletContext();
                    RequestDispatcher rd = context.getRequestDispatcher("/register.jsp");
                    rd.forward(request, response);
                }
            } else {
                String employmentDate = request.getParameter("employmentDate");
                newUser.setEmployment(employmentDate);
                
                if (dao.registerMembers(newUser)) {
                    ServletContext context = getServletContext();
                    RequestDispatcher rd = context.getRequestDispatcher("/index.jsp");
                    rd.forward(request, response);
                } else {
                    out.print("Something went wrong");
                    ServletContext context = getServletContext();
                    RequestDispatcher rd = context.getRequestDispatcher("/register.jsp");
                    rd.forward(request, response);
                }
            }

            
        } catch (ParseException ex) {
            Logger.getLogger(register.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

// <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ParseException ex) {
            Logger.getLogger(register.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ParseException ex) {
            Logger.getLogger(register.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
