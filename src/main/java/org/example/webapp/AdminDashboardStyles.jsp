<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard</title>
    <style>
        /* CSS for Dashboard */
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
        }
        .dashboard-card {
            border: 1px solid #e5e5e5;
            border-radius: 10px;
            text-align: center;
            padding: 20px;
            text-decoration: none;
            color: #000;
            display: block;
            margin-bottom: 20px;
        }
        .dashboard-card:hover {
            background-color: #e9ecef;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="container mt-3">
        <h2 class="text-center">Admin Dashboard</h2>

        <!-- Dashboard Links -->
        <div class="row mt-4">
            <div class="col-md-4">
                <a href="userManagement.jsp" class="dashboard-card">
                    <h5>User Management</h5>
                    <p>Manage system users</p>
                </a>
            </div>
            <div class="col-md-4">
                <a href="appointmentManagement.jsp" class="dashboard-card">
                    <h5>Appointment Management</h5>
                    <p>View and manage appointments</p>
                </a>
            </div>
            <div class="col-md-4">
                <a href="systemSettings.jsp" class="dashboard-card">
                    <h5>System Settings</h5>
                    <p>Update configuration</p>
                </a>
            </div>
        </div>
    </div>
</body>
</html>