<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin - User Management</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: #f4f4f9;
        }
        .table-container {
            margin: 50px auto;
            padding: 20px;
            background: white;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
        }
        .btn-delete {
            color: white;
            background-color: red;
            border: none;
            border-radius: 5px;
            padding: 5px 10px;
        }
        .btn-edit {
            color: white;
            background-color: blue;
            border: none;
            border-radius: 5px;
            padding: 5px 10px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="table-container">
            <h2 class="text-center">User Management</h2>
            <table class="table table-hover mt-4">
                <thead class="thead-light">
                    <tr>
                        <th>ID</th>
                        <th>Full Name</th>
                        <th>Email</th>
                        <th>Role</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- Dynamic data to be inserted -->
                    <c:forEach var="user" items="${users}">
                        <tr>
                            <td>${user.id}</td>
                            <td>${user.name}</td>
                            <td>${user.email}</td>
                            <td>${user.role}</td>
                            <td>
                                <button class="btn-edit">Edit</button>
                                <button class="btn-delete" onclick="confirmDelete(${user.id});">Delete</button>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
            <button class="btn btn-primary w-100 mt-3">Add New User</button>
        </div>
    </div>
    <script>
        function confirmDelete(userId) {
            if(confirm(`Are you sure you want to delete the user with ID: ${userId}?`)) {
                alert("Deleted successfully.");
                // Delete operation would go here (via backend servlet).
            }
        }
    </script>
</body>
</html>