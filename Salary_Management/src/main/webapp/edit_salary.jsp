<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="navbar.jsp" %>
<%
    String id = request.getParameter("id");
    String empId = "", name = "", salary = "", date = "";

    if (id != null) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/salary_management", "root", "cgc123");

            String sql = "SELECT * FROM employee_salary WHERE id = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, Integer.parseInt(id));
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                empId = rs.getString("employee_id");
                name = rs.getString("employee_name");
                salary = rs.getString("salary");
                date = rs.getString("salary_date");
            }

            rs.close();
            ps.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
%>

<!DOCTYPE html>
<html>
<head>
    <title>Edit Salary</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h3>Edit Employee Salary</h3>
    <form action="UpdateSalaryServlet" method="post">
        <input type="hidden" name="id" value="<%= id %>">

        <div class="mb-3">
            <label>Employee ID</label>
            <input type="text" name="employee_id" class="form-control" value="<%= empId %>" readonly>
        </div>

        <div class="mb-3">
            <label>Employee Name</label>
            <input type="text" name="employee_name" class="form-control" value="<%= name %>" readonly>
        </div>

        <div class="mb-3">
            <label>Salary</label>
            <input type="number" name="salary" class="form-control" value="<%= salary %>" required>
        </div>

        <div class="mb-3">
            <label>Salary Date</label>
            <input type="date" name="salary_date" class="form-control" value="<%= date %>" required>
        </div>
         <div class="mb-3">
        <button type="submit" class="btn btn-success">Update</button>
        <a href="dashboard.jsp" class="btn btn-secondary">Cancel</a>
        </div>
    </form>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>
