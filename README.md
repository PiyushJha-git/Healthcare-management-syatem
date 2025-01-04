/online-healthcare-system
|-- /assets
|   |-- /images (Images for the app)
|   |-- /css (Stylesheets)
|   |-- /js (JavaScript files)
|-- /index.html ( Homepage for the app)
|-- /admin.html (Admin Dashboard page)
|-- /doctor.html (Doctor Dashboard page)
|-- /patient.html (Patient Dashboard page)
|-- /login.html (Login page for all users)
|-- /signup.html (Signup page for new users)
|-- /404.html (Page not found)
|-- /README.md (Project documentation)


KEY COMPONENTS:
Key Components
1. HTML Structure
Each user type (Admin, Doctor, Patient) has a dedicated HTML page. These pages define the structure of their respective dashboards and functionalities:

index.html: Homepage where users can navigate to login/signup.
admin.html: Admin dashboard with user management, appointment management, and system settings.
doctor.html: Doctor dashboard with schedule management, patient records, and appointment overview.
patient.html: Patient dashboard with appointment booking, medical history, and profile management.
login.html: Login page to authenticate users.
signup.html: Signup page to create new accounts.
2. CSS Styles
All stylesheets are located in the /assets/css directory:

styles.css: General styles for the entire application, including layout, colors, fonts, and responsiveness.
dashboard.css: Specific styles for the Admin, Doctor, and Patient dashboards.
forms.css: Styles for forms (login, signup, profile update).
3. JavaScript Logic
JavaScript files are located in the /assets/js directory:

main.js: Handles the main interactive features like form validation and UI updates.
admin.js: JavaScript logic for Admin functionalities (user management, appointment management).
doctor.js: JavaScript logic for Doctor functionalities (schedule management, patient records).
patient.js: JavaScript logic for Patient functionalities (appointment booking, medical history).
