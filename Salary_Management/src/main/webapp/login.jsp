<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="navbar.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login - Salary Management</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

    <style>
        body {
            background: url("image/image form.jpg") no-repeat center center fixed;
            background-size: cover;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        .login-box {
    max-width: 420px;
    margin: 80px auto;
    padding: 40px 30px;
    border-radius: 20px;
    background-color: rgba(255, 255, 255, 0.6); /* More transparent */
    box-shadow: 0 10px 35px rgba(0, 0, 0, 0.15);
    transition: all 0.3s ease-in-out;
}

        .login-box:hover {
            transform: scale(1.02);
        }

        .form-label {
            font-weight: 500;
            color: #333;
        }

        .form-control {
            padding-left: 40px;
        }

        .input-icon {
            position: absolute;
            left: 15px;
            top: 10px;
            color: #6c757d;
        }

        .input-group {
            position: relative;
        }

        .login-btn {
            width: 100%;
            padding: 10px;
            border-radius: 8px;
            font-weight: 600;
        }

        .login-title {
            font-weight: 700;
            color: #007bff;
        }
    </style>
</head>
<body>

<div class="container">
    <div class="login-box">
        <h3 class="text-center login-title mb-4"><i class="fas fa-sign-in-alt me-2"></i>Login</h3>

        <form action="LoginServlet" method="post">
            <div class="mb-3 input-group">
                <i class="fas fa-user input-icon"></i>
                <input type="text" class="form-control" id="username" name="username" placeholder="Username" required>
            </div>

            <div class="mb-4 input-group">
                <i class="fas fa-lock input-icon"></i>
                <input type="password" class="form-control" id="password" name="password" placeholder="Password" required>
            </div>

            <button type="submit" class="btn btn-primary login-btn">
                <i class="fas fa-arrow-right me-1"></i> Login
            </button>
        </form>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<%@ include file="footer.jsp" %>
</body>
</html>

