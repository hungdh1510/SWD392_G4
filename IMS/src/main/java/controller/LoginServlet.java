/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author trung
 */
public class LoginServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // Initialize database connection variables
        String jdbcUrl = "jdbc:mysql://localhost:3306/issue_management_system";
        String dbUser = "root";
        String dbPassword = "123456";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection connection = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword);

            String query = "SELECT user_id, user_role FROM Users WHERE email = ? AND password = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, email);
            preparedStatement.setString(2, password);

            ResultSet resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                int userId = resultSet.getInt("user_id");
                String userRole = resultSet.getString("user_role");

                HttpSession session = request.getSession();
                session.setAttribute("user_id", userId);
                session.setAttribute("user_role", userRole);

                // Redirect based on user role
                if ("Student".equals(userRole)) {
                    response.sendRedirect(request.getContextPath() + "/student");
                } else if ("Teacher".equals(userRole)) {
                    response.sendRedirect(request.getContextPath() + "/teacher");
                } else if ("Manager".equals(userRole)) {
                    response.sendRedirect(request.getContextPath() + "/manager");
                } else if ("Admin".equals(userRole)) {
                    response.sendRedirect(request.getContextPath() + "/admin");
                } else {
                    request.setAttribute("error", "Unknown user role: " + userRole);
                    RequestDispatcher dispatcher = request.getRequestDispatcher("common/login.jsp");
                    dispatcher.forward(request, response);
                }
            } else {
                request.setAttribute("error", "Login failed. Incorrect email or password.");
                RequestDispatcher dispatcher = request.getRequestDispatcher("common/login.jsp");
                dispatcher.forward(request, response);
            }

            resultSet.close();
            preparedStatement.close();
            connection.close();
        } catch (Exception e) {
            request.setAttribute("error", "An error occurred: " + e.getMessage());
            RequestDispatcher dispatcher = request.getRequestDispatcher("common/login.jsp");
            dispatcher.forward(request, response);
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
        processRequest(request, response);
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
        processRequest(request, response);
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
