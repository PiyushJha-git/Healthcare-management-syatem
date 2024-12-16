<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>User Management</title>
    <style>
        /* Table CSS */
        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
            font-size: 18px;
            text-align: left;
        }
        table th, table td {
            padding: 12px;
            border: 1px solid #ddd;
        }
        table tr:hover {
            background-color: #f1f1f1;
        }
    </style>
    <script>
        // JS for managing user actions
        function confirmDelete(userId) {
            return confirm("Are you sure you want to delete user with ID " + userId + "?");
        }
    </script>
</head>
<body>
    <div class="container mt-3">
        <h2 class="text-center">User Management</h2>

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
                            <button onclick="return confirmDelete(${user.id})">Delete</button>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>