package com.salary;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.sql.*;

@WebServlet("/UpdateSalaryServlet")
public class UpdateSalaryServlet extends HttpServlet {

    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/salary_management";
    private static final String JDBC_USER = "root";
    private static final String JDBC_PASS = "cgc123";

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));
        String empId = request.getParameter("employee_id");
        String name = request.getParameter("employee_name");
        String salary = request.getParameter("salary");
        String date = request.getParameter("salary_date");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASS);

            String sql = "UPDATE employee_salary SET employee_id=?, employee_name=?, salary=?, salary_date=? WHERE id=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, empId);
            ps.setString(2, name);
            ps.setString(3, salary);
            ps.setString(4, date);
            ps.setInt(5, id);

            ps.executeUpdate();
            ps.close();
            conn.close();

            HttpSession session = request.getSession();
            session.setAttribute("salaryStatus", "Salary record updated successfully!");
            response.sendRedirect("ViewSalariesServlet");

        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("error", "Update failed: " + e.getMessage());
            request.getRequestDispatcher("edit_salary.jsp").forward(request, response);
        }
    }
}
