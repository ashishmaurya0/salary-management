<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="navbar.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home - Salary Management</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

    <style>
        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f8f9fa;
        }

        .hero-section {
            padding: 100px 20px;
            background: linear-gradient(to right, #0f2027, #203a43, #2c5364);
            color: white;
            text-align: center;
        }

        .hero-section h1 {
            font-size: 3rem;
            font-weight: bold;
            margin-bottom: 15px;
        }

        .hero-section p {
            font-size: 1.25rem;
            color: #dcdcdc;
        }

        .container {
            margin-top: 60px;
            margin-bottom: 60px;
        }

        .card {
            border: none;
            border-radius: 15px;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            background-color: #ffffff;
        }

        .card:hover {
            transform: translateY(-8px) scale(1.03);
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
        }

        .card i {
            transition: transform 0.3s ease, color 0.3s ease;
        }

        .card:hover i {
            transform: rotate(5deg) scale(1.1);
        }

        .card h4 {
            font-weight: 600;
            margin-top: 10px;
        }

        .card p {
            font-size: 0.95rem;
            color: #555;
        }
    </style>
</head>
<body>

<div class="hero-section">
    <h1>Welcome to Salary Management System</h1>
    <p>Manage employee salaries, generate payslips, and more with ease!</p>
</div>

<div class="container">
    <div class="row text-center">
        <div class="col-md-4 mb-4">
            <div class="card shadow-sm p-4">
                <i class="fas fa-user fa-3x text-primary mb-3"></i>
                <h4>Employee Management</h4>
                <p>Add, update, and view all employees in one place.</p>
            </div>
        </div>
        <div class="col-md-4 mb-4">
            <div class="card shadow-sm p-4">
                <i class="fas fa-calculator fa-3x text-success mb-3"></i>
                <h4>Salary Calculator</h4>
                <p>Auto-calculate salaries with bonuses, deductions & more.</p>
            </div>
        </div>
        <div class="col-md-4 mb-4">
            <div class="card shadow-sm p-4">
                <i class="fas fa-file-invoice-dollar fa-3x text-warning mb-3"></i>
                <h4>Generate Payslips</h4>
                <p>Create and export professional payslips in PDF format.</p>
            </div>
        </div>
    </div>
</div>

<%@ include file="footer.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
