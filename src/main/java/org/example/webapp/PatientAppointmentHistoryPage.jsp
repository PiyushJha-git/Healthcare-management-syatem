<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <style>
        /* CSS Styling */
        body {
            background-color: #f8f9fa;
            font-family: Arial, sans-serif;
        }
        .container {
            max-width: 450px;
            margin: auto;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            background: #fff;
            padding: 20px;
            border-radius: 8px;
        }
        .header-image {
            width: 100%;
            border-radius: 8px;
            margin-bottom: 20px;
        }
    </style>
    <script>
        // JavaScript Validation
        function validateLoginForm() {
            const email = document.getElementById('email').value;
            const password = document.getElementById('password').value;

            if (email === '' || password === '') {
                alert('All fields are required!');
                return false;
            }
            return true; // Allow form submission
        }
    </script>
</head>
<body>
<div class="container mt-5">
    <h2 class="text-center mb-4">Login</h2>

    <!-- Header Image -->
    <img src="../images/healthcare.jpg" alt="Healthcare System" class="header-image">

    <!-- Login Form -->
    <form action="loginServlet" method="post" onsubmit="return validateLoginForm();">
        <div class="mb-3">
            <label for="email" class="form-label">Email address</label>
            <input type="email" class="form-control" id="email" name="email" required>
        </div>
        <div class="mb-3">
            <label for="password" class="form-label">Password</label>
            <input type="password" class="form-control" id="password" name="password" required>
        </div>
        <button type="submit" class="btn btn-primary w-100">Login</button>
    </form>
</div>
</body>
</html><%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard</title>
    <style>
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
        .dashboard-card img {
            width: 100%;
            height: 150px;
            border-radius: 10px;
            margin-bottom: 15px;
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
                <img src="../images/user-management.jpg" alt="User Management">
                <h5>User Management</h5>
                <p>Manage system users</p>
            </a>
        </div>
        <div class="col-md-4">
            <a href="appointmentManagement.jsp" class="dashboard-card">
                <img src="../images/appointment.jpg" alt="Appointments">
                <h5>Appointment Management</h5>
                <p>View and manage appointments</p>
            </a>
        </div>
        <div class="col-md-4">
            <a href="systemSettings.jsp" class="dashboard-card">
                <img src="../images/settings.jpg" alt="Settings">
                <h5>System Settings</h5>
                <p>Update configuration</p>
            </a>
        </div>
    </div>
</div>
</body>
</html><%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>User Management</title>
    <style>
        .header-image {
            width: 100%;
            margin-bottom: 30px;
            border-radius: 10px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        table th, table td {
            padding: 12px;
            border: 1px solid #ddd;
        }
        table tr:hover {
            background-color: #f1f1f1;
        }
    </style>
</head>
<body>
<div class="container mt-3">
    <h2 class="text-center">User Management</h2>

    <!-- Header Image -->
    <img src="../images/user-management.jpg" alt="User Management" class="header-image">

    <!-- User Table -->
    <table>
        <thead>
        <tr>
            <th>UID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Role</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <!-- Dynamic User List (JSP Integration) -->
        <c:forEach var="user" items="${users}">
            <tr>
                <td>${user.id}</td>
                <td>${user.name}</td>
                <td>${user.email}</td>
                <td>${user.role}</td>
                <td>
                    <button onclick="alert('Edit user: ${user.id}')">Edit</button>
                    <button onclick="return confirm('Delete user: ${user.id}?')">Delete</button>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html><%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Appointment History</title>
    <style>
        .header-image {
            width: 100%;
            margin-bottom: 20px;
            border-radius: 10px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        table th, table td {
            border: 1px solid black;
            text-align: left;
            padding: 8px;
        }
        table th {
            background-color: #f2f2f2;
        }
        table tr:hover {
            background-color: #f5f5f5;
        }
    </style>
</head>
<body>
<div class="container mt-3">
    <h2>Appointment History</h2>

    <!-- Header Image -->
    <img src="../images/appointment.jpg" alt="Appointments" class="header-image">

    <!-- Appointments Table -->
    <table>
        <thead>
        <tr>
            <th>Appointment ID</th>
            <th>Date</th>
            <th>Doctor</th>
            <th>Status</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="appointment" items="${appointments}">
            <tr>
                <td>${appointment.id}</td>
                <td>${appointment.date}</td>
                <td>${appointment.doctorName}</td>
                <td>${appointment.status}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html><%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Appointment History</title>
    <style>
        .header-image {
            width: 100%;
            margin-bottom: 20px;
            border-radius: 10px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        table th, table td {
            border: 1px solid black;
            text-align: left;
            padding: 8px;
        }
        table th {
            background-color: #f2f2f2;
        }
        table tr:hover {
            background-color: #f5f5f5;
        }
    </style>
</head>
<body>
<div class="container mt-3">
    <h2>Appointment History</h2>

    <!-- Header Image -->
    <img src="../images/appointment.jpg" alt="Appointments" class="header-image">

    <!-- Appointments Table -->
    <table>
        <thead>
        <tr>
            <th>Appointment ID</th>
            <th>Date</th>
            <th>Doctor</th>
            <th>Status</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="appointment" items="${appointments}">
            <tr>
                <td>${appointment.id}</td>
                <td>${appointment.date}</td>
                <td>${appointment.doctorName}</td>
                <td>${appointment.status}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html><%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Patient Appointment History</title>
    <style>
        /* Styling Table */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        table th, table td {
            border: 1px solid black;
            text-align: left;
            padding: 8px;
        }
        table th {
            background-color: #f2f2f2;
        }
        table tr:hover {
            background-color: #f5f5f5;
        }
    </style>
</head>
<body>
    <div class="container mt-3">
        <h2>Appointment History</h2>
        <table>
            <thead>
                <tr>
                    <th>Appointment ID</th>
                    <th>Date</th>
                    <th>Doctor</th>
                    <th>Status</th>
                </tr>
            </thead>
            <tbody>
                <!-- Dynamic Rows -->
                <c:forEach var="appointment" items="${appointments}">
                    <tr>
                        <td>${appointment.id}</td>
                        <td>${appointment.date}</td>
                        <td>${appointment.doctorName}</td>
                        <td>${appointment.status}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>