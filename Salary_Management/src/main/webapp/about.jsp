<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="navbar.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>About Us - Salary Management System</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

    <style>
        .about-section {
            padding: 60px 20px;
            background-color: #f8f9fa;
        }
        .about-section h2 {
            font-weight: bold;
            margin-bottom: 20px;
        }
        .about-card {
            transition: all 0.3s ease-in-out;
        }
        .about-card:hover {
            transform: scale(1.02);
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);
        }
    </style>
</head>
<body>

<div class="about-section text-center">
    <div class="container">
        <h2><i class="fas fa-info-circle text-primary"></i> About Our System</h2>
        <p class="lead">This project is designed to simplify salary processing, employee management, and payslip generation — all in one place.</p>

        <div class="row mt-5">
            <div class="col-md-4 mb-4">
                <div class="card about-card p-4">
                    <i class="fas fa-users fa-3x text-success mb-3"></i>
                    <h5>Who We Are</h5>
                    <p>A passionate team building smart HR & payroll solutions for modern businesses.</p>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="card about-card p-4">
                    <i class="fas fa-bullseye fa-3x text-danger mb-3"></i>
                    <h5>Our Mission</h5>
                    <p>To make salary management seamless, accurate, and efficient for all organizations.</p>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="card about-card p-4">
                    <i class="fas fa-cogs fa-3x text-info mb-3"></i>
                    <h5>Technologies Used</h5>
                    <p>Java, JSP, Bootstrap, Font Awesome, and more — to ensure power & simplicity.</p>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<%@ include file="footer.jsp" %>
</body>
</html>
