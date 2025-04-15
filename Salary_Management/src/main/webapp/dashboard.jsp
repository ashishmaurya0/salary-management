<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.ArrayList" %>
<%@ include file="navbar.jsp" %>

<%
    String user = (String) session.getAttribute("username");
    if (user == null) {
        response.sendRedirect("login.jsp");
        return;
    }

    String loginToast = (String) session.getAttribute("loginSuccess");
    if (loginToast != null) {
        session.removeAttribute("loginSuccess");
    }

    String salaryToast = (String) session.getAttribute("salaryStatus");
    if (salaryToast != null) {
        session.removeAttribute("salaryStatus");
    }
%>

<!DOCTYPE html>
<html>
<head>
    <title>Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</head>
<body>

<div class="container mt-4">
    <h2 class="mb-4">Welcome, <%= user %> 👋</h2>
    <% if (loginToast != null) { %>
        <div class="alert alert-success alert-dismissible fade show" role="alert">
            <strong><i class="fas fa-check-circle"></i></strong> <%= loginToast %>
            <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
        </div>
    <% } %>
    <% if (salaryToast != null) { %>
        <div class="alert alert-info alert-dismissible fade show" role="alert">
            <strong><i class="fas fa-check-circle"></i></strong> <%= salaryToast %>
            <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
        </div>
    <% } %>
    <div class="row mb-4">
        <div class="col-md-4">
            <div class="card card-custom text-center">
                <div class="card-body">
                    <i class="fas fa-money-check-alt fa-3x text-primary mb-3"></i>
                    <h5 class="card-title">Add Employee Salary</h5>
                    <a href="add_salary.jsp" class="btn btn-outline-primary">
                        <i class="fas fa-plus-circle"></i> Add Salary
                    </a>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card card-custom text-center">
                <div class="card-body">
                    <i class="fas fa-table fa-3x text-success mb-3"></i>
                    <h5 class="card-title">View Salary List</h5>
                    <form action="ViewSalariesServlet" method="get">
                        <button type="submit" class="btn btn-outline-success">
                            <i class="fas fa-eye"></i> Show Salaries
                        </button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <%
        ArrayList<String[]> salaryList = (ArrayList<String[]>) request.getAttribute("salaryList");
        if (salaryList != null) {
    %>
        <jsp:include page="salary_table.jsp" />
    <% } %>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<%@ include file="footer.jsp" %>
</body>
</html>
