// Handle Login Form Submit
document.getElementById('loginForm').addEventListener('submit', function(event) {
    event.preventDefault();
    let email = document.getElementById('email').value;
    let password = document.getElementById('password').value;

    if (email === "" || password === "") {
        alert("Please fill out all fields.");
    } else {
        alert("Login successful!");
        window.location.href = "admin-dashboard.html"; // Redirect based on user role
    }
});

// Handle Add User Form Submit
document.getElementById('userForm').addEventListener('submit', function(event) {
    event.preventDefault();
    let name = document.getElementById('userName').value;
    let email = document.getElementById('userEmail').value;
    let role = document.getElementById('userRole').value;

    if (name === "" || email === "") {
        alert("Please fill out all fields.");
    } else {
        alert("User added successfully!");

        // Close the modal
        let modal = new bootstrap.Modal(document.getElementById('addUserModal'));
        modal.hide();
    }
});

// Handle Login Form Submit (login.html)
document.getElementById('loginForm').addEventListener('submit', function(event) {
    event.preventDefault();
    let email = document.getElementById('email').value;
    let password = document.getElementById('password').value;

    // Simulate login process (replace with actual logic)
    if (email === "doctor@clinic.com" && password === "doctor123") {
        window.location.href = "doctor-dashboard.html";
    } else if (email === "patient@health.com" && password === "patient123") {
        window.location.href = "patient-dashboard.html";
    } else {
        alert("Invalid credentials");
    }
});

// Handle Appointment Form Submit (patient-dashboard.html)
document.getElementById('appointmentForm').addEventListener('submit', function(event) {
    event.preventDefault();
    let doctor = document.getElementById('doctor').value;
    let appointmentDate = document.getElementById('appointmentDate').value;
    
    // Simulate booking appointment process
    alert(`Appointment booked with ${doctor} on ${appointmentDate}`);
});



