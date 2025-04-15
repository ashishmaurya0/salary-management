<style>
    body, html {
        height: 100%;
        display: flex;
        flex-direction: column;
    }

    .container {
        flex: 1;
    }

    .custom-footer {
        background: linear-gradient(to right, #141e30, #243b55);
        color: white;
        padding: 16px 0;
        text-align: center;
        width: 100%;
        box-shadow: 0 -2px 10px rgba(0, 0, 0, 0.3);
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        font-size: 14px;
        margin-top: auto;
    }

    .custom-footer p {
        margin: 4px 0;
    }

    .custom-footer i.fa-heart {
        color: #ff4757;
        animation: pulse 1.5s infinite;
    }

    @keyframes pulse {
        0% { transform: scale(1); opacity: 0.8; }
        50% { transform: scale(1.2); opacity: 1; }
        100% { transform: scale(1); opacity: 0.8; }
    }
</style>

<div class="custom-footer">
    <p>&copy; <%= java.time.Year.now() %> Salary Management System. All rights reserved.</p>
    <p>Made with <i class="fas fa-heart"></i> by <strong>Ashish</strong></p>
</div>
