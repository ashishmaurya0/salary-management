package com.salary;

import java.io.IOException;
import java.sql.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/AddSalaryServlet")
public class AddSalaryServlet extends HttpServlet {

    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/salary_management";
    private static final String JDBC_USER = "root";
    private static final String JDBC_PASS = "cgc123";

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String empName = request.getParameter("empName");
        String empId = request.getParameter("empId");
        String salary = request.getParameter("salary");
        String date = request.getParameter("date");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASS);

            String sql = "INSERT INTO employee_salary (employee_id, employee_name, salary, salary_date) VALUES (?, ?, ?, ?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, empId);
            ps.setString(2, empName);
            ps.setBigDecimal(3, new java.math.BigDecimal(salary));
            ps.setDate(4, java.sql.Date.valueOf(date));

            int rows = ps.executeUpdate();

            HttpSession session = request.getSession();
            if (rows > 0) {
                session.setAttribute("salaryStatus", "Salary added successfully!");
            } else {
                session.setAttribute("salaryStatus", "Failed to add salary.");
            }

            response.sendRedirect("dashboard.jsp");

            ps.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("error", "Error: " + e.getMessage());
            request.getRequestDispatcher("dashboard.jsp").forward(request, response);
        }
    }
}
