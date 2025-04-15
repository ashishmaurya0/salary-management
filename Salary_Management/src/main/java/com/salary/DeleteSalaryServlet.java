package com.salary;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.sql.*;

@WebServlet("/DeleteSalaryServlet")
public class DeleteSalaryServlet extends HttpServlet {

    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/salary_management";
    private static final String JDBC_USER = "root";
    private static final String JDBC_PASS = "cgc123";

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String id = request.getParameter("id");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASS);

            String sql = "DELETE FROM employee_salary WHERE id = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, Integer.parseInt(id));
            ps.executeUpdate();

            ps.close();
            conn.close();

            // Set success message
            HttpSession session = request.getSession();
            session.setAttribute("salaryStatus", "Salary record deleted successfully!");
            response.sendRedirect("ViewSalariesServlet");

        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("error", "Delete failed: " + e.getMessage());
            request.getRequestDispatcher("dashboard.jsp").forward(request, response);
        }
    }
}
