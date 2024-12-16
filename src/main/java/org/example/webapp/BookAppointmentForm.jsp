<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Patient - Book Appointment</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: #e3f2fd;
        }
        .appointment-form {
            margin: 50px auto;
            max-width: 600px;
            padding: 30px;
            background: white;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.2);
        }
    </style>
</head>
<body>
    <div class="appointment-form">
        <h2 class="text-center">Book an Appointment</h2>
        <form action="appointmentServlet" method="post">
            <!-- Patient Name -->
            <div class="mb-3">
                <label for="patientName" class="form-label">Full Name</label>
                <input type="text" id="patientName" name="patientName" class="form-control" placeholder="Enter your full name" required>
            </div>
            <!-- Patient Email -->
            <div class="mb-3">
                <label for="patientEmail" class="form-label">Email</label>
                <input type="email" id="patientEmail" name="patientEmail" class="form-control" placeholder="Enter your email" required>
            </div>
            <!-- Appointment Date -->
            <div class="mb-3">
                <label for="appointmentDate" class="form-label">Appointment Date</label>
                <input type="date" id="appointmentDate" name="appointmentDate" class="form-control" required>
            </div>
            <!-- Time Slot -->
            <div class="mb-3">
                <label for="appointmentTime" class="form-label">Preferred Time</label>
                <input type="time" id="appointmentTime" name="appointmentTime" class="form-control" required>
            </div>
            <!-- Doctor Selection -->
            <div class="mb-3">
                <label for="doctor" class="form-label">Select Doctor</label>
                <select id="doctor" name="doctor" class="form-select">
                    <!-- Dynamic doctor dropdown -->
                    <c:forEach var="doctor" items="${doctors}">
                        <option value="${doctor.id}">${doctor.name} (Specialty: ${doctor.specialty})</option>
                    </c:forEach>
                </select>
            </div>
            <!-- Submit Button -->
            <button type="submit" class="btn btn-primary w-100">Confirm Appointment</button>
        </form>
    </div>
</body>
</html>