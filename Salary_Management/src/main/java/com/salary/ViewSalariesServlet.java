package com.salary;

import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/ViewSalariesServlet")
public class ViewSalariesServlet extends HttpServlet {

    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/salary_management";
    private static final String JDBC_USER = "root";
    private static final String JDBC_PASS = "cgc123";

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        ArrayList<String[]> salaryList = new ArrayList<>();

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASS);

            String sql = "SELECT * FROM employee_salary ORDER BY id DESC";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                String[] row = new String[5];
                row[0] = String.valueOf(rs.getInt("id"));
                row[1] = rs.getString("employee_id");
                row[2] = rs.getString("employee_name");
                row[3] = rs.getString("salary");
                row[4] = rs.getString("salary_date");
                salaryList.add(row);
            }

            rs.close();
            ps.close();
            conn.close();

            request.setAttribute("salaryList", salaryList);
            request.getRequestDispatcher("dashboard.jsp").forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("error", "Error: " + e.getMessage());
            request.getRequestDispatcher("dashboard.jsp").forward(request, response);
        }
    }
}
