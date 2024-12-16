<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Patient - Appointment History</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: #f8f9fa;
        }
        .history-container {
            margin: 50px auto;
            padding: 20px;
            max-width: 900px;
            background: white;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
        }
        .table th, .table td {
            vertical-align: middle;
        }
    </style>
</head>
<body>
    <div class="history-container">
        <h2 class="text-center">Appointment History</h2>
        <!-- Table to show appointment details -->
        <table class="table table-striped mt-4">
            <thead class="thead-dark">
                <tr>
                    <th>Appointment ID</th>
                    <th>Date</th>
                    <th>Time</th>
                    <th>Doctor</th>
                    <th>Status</th>
                </tr>
            </thead>
            <tbody>
                <!-- Dynamic data for each appointment -->
                <c:forEach var="appointment" items="${appointments}">
                    <tr>
                        <td>${appointment.id}</td>
                        <td>${appointment.date}</td>
                        <td>${appointment.time}</td>
                        <td>${appointment.doctor}</td>
                        <td>
                            <span class="badge 
                                <c:choose>
                                    <c:when test="${appointment.status == 'Completed'}">bg-success</c:when>
                                    <c:when test="${appointment.status == 'Pending'}">bg-warning</c:when>
                                    <c:otherwise>bg-danger</c:otherwise>
                                </c:choose>
                            ">
                                ${appointment.status}
                            </span>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>