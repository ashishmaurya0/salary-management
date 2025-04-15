<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ include file="navbar.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <title>Add Employee Salary</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

    <style>
        body {
            background: linear-gradient(to right, #e0eafc, #cfdef3);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        .form-box {
            max-width: 650px;
            margin: 60px auto 30px auto;
            padding: 40px 30px;
            border-radius: 20px;
            background-color: #fff;
            box-shadow: 0 12px 30px rgba(0, 0, 0, 0.1);
            transition: 0.3s ease;
        }

        .form-box:hover {
            transform: translateY(-5px);
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.15);
        }

        .form-label i {
            margin-right: 8px;
            color: #0d6efd;
        }

        .form-control:focus {
            box-shadow: 0 0 0 0.2rem rgba(13, 110, 253, 0.25);
        }

        .form-box h4 {
            font-weight: 600;
            color: #0d6efd;
        }

        button[type="submit"] {
            background-color: #0d6efd;
            border: none;
            transition: 0.3s ease;
        }

        button[type="submit"]:hover {
            background-color: #0b5ed7;
        }

        .back-btn {
            max-width: 300px;
            margin: 0 auto 50px auto;
        }
    </style>
</head>
<body>

<div class="container">
    <div class="form-box">
        <h4 class="mb-4 text-center">
            <i class="fas fa-money-bill-wave"></i> Add Employee Salary
        </h4>

        <form action="AddSalaryServlet" method="post">
            <div class="mb-3">
                <label for="empName" class="form-label">
                    <i class="fas fa-user"></i> Employee Name
                </label>
                <input type="text" class="form-control" id="empName" name="empName" placeholder="Enter employee name" required>
            </div>

            <div class="mb-3">
                <label for="empId" class="form-label">
                    <i class="fas fa-id-badge"></i> Employee ID
                </label>
                <input type="text" class="form-control" id="empId" name="empId" placeholder="Enter employee ID" required>
            </div>

            <div class="mb-3">
                <label for="salary" class="form-label">
                    <i class="fas fa-coins"></i> Salary Amount
                </label>
                <input type="number" class="form-control" id="salary" name="salary" placeholder="Enter salary" required>
            </div>

            <div class="mb-3">
                <label for="date" class="form-label">
                    <i class="fas fa-calendar-alt"></i> Date
                </label>
                <input type="date" class="form-control" id="date" name="date" required>
            </div>

            <button type="submit" class="btn btn-primary w-100">
                <i class="fas fa-check-circle"></i> Submit
            </button>
        </form>
    </div>

    <div class="back-btn d-flex justify-content-center mt-3">
        <a href="dashboard.jsp" class="btn btn-outline-secondary w-100">
            <i class="fas fa-arrow-left"></i> Back to Dashboard
        </a>
    </div>
</div>

<%@ include file="footer.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

