<h1>Healthcare Management System</h1>
    <p>A <strong>Healthcare Management System</strong> built using <strong>Java</strong>, <strong>Maven</strong>, <strong>JSP</strong>, <strong>Servlets</strong>, <strong>HTML</strong>, <strong>CSS</strong>, <strong>JavaScript</strong>, and a database (e.g., MySQL). This system helps manage patients, appointments, and doctors efficiently, providing a seamless interface between healthcare providers and patients.</p>

  <h2>Features</h2>
    <h3>For Patients</h3>
    <ul>
        <li>Book appointments with doctors</li>
        <li>View appointment status and history</li>
        <li>Update personal profile</li>
    </ul>

   <h3>For Doctors</h3>
    <ul>
        <li>View schedules and appointments</li>
        <li>Access patient history and manage their details</li>
    </ul>

   <h3>For Administrators</h3>
    <ul>
        <li>Manage user roles (patients and doctors)</li>
        <li>Manage and track appointment schedules</li>
        <li>Generate reports for system insights</li>
    </ul>

   <h2>Technologies Used</h2>
    <ul>
        <li><strong>Backend:</strong> Java, Maven, JSP, Servlets, JDBC or Hibernate, Spring (optional)</li>
        <li><strong>Frontend:</strong> HTML, CSS, JavaScript</li>
        <li><strong>Database:</strong> MySQL or PostgreSQL</li>
        <li><strong>Others:</strong> JSTL, Spring MVC (optional)</li>
    </ul>

   <h2>Project Setup</h2>
    <h3>1. Prerequisites</h3>
    <ul>
        <li>Java 11 or higher</li>
        <li>Apache Tomcat server</li>
        <li>Maven</li>
        <li>MySQL (or another relational database)</li>
    </ul>

   <h3>3. Configure the Database</h3>
    <ol>
        <li>Create a database named <code>healthcare</code>:
            <pre>
CREATE DATABASE healthcare;
            </pre>
        </li>
        <li>Add the following tables:
            <ul>
                <li><strong>Patients Table:</strong>
                    <pre>
CREATE TABLE patients (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    password VARCHAR(100),
    phone VARCHAR(15)
);
                    </pre>
                </li>
                <li><strong>Doctors Table:</strong>
                    <pre>
CREATE TABLE doctors (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    specialization VARCHAR(100),
    phone VARCHAR(15)
);
                    </pre>
                </li>
                <li><strong>Appointments Table:</strong>
                    <pre>
CREATE TABLE appointments (
    id INT AUTO_INCREMENT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    appointment_date DATE,
    FOREIGN KEY (patient_id) REFERENCES patients(id),
    FOREIGN KEY (doctor_id) REFERENCES doctors(id)
);
                    </pre>
                </li>
            </ul>
        </li>
    </ol>

   <h3>4. Setup Maven</h3>
   <p>Ensure your <code>pom.xml</code> contains the necessary dependencies:</p>
    <div class="code-block">
<pre>
<dependencies>
  <!-- Servlet API -->
    <dependency>
        <groupId>javax.servlet</groupId>
        <artifactId>javax.servlet-api</artifactId>
        <version>4.0.1</version>
        <scope>provided</scope>
    </dependency>

    <!-- MySQL Driver -->
   <dependency>
        <groupId>mysql</groupId>
        <artifactId>mysql-connector-java</artifactId>
        <version>8.0.33</version>
    </dependency>

   <!-- JSP Tag library -->
   <dependency>
        <groupId>taglibs</groupId>
        <artifactId>standard</artifactId>
        <version>1.1.2</version>
    </dependency>

    <!-- Spring Framework (Optional) -->
   <dependency>
        <groupId>org.springframework</groupId>
        <artifactId>spring-context</artifactId>
        <version>5.3.29</version>
    </dependency>
</dependencies>
</pre>
    </div>

   <p>Run the following command:</p>
    <pre>
mvn clean install
    </pre>

   <h3>5. Deploy the Application</h3>
   <ol>
        <li>Package the application:
            <pre>
mvn package
            </pre>
        </li>
        <li>Deploy the WAR file to a Tomcat server.</li>
        <li>Access the app at <code>http://localhost:8080/HealthcareManagementSystem</code>.</li>
    </ol>

   <h2>Modules and Components</h2>
   <h3>1. Controller (Servlet)</h3>
    <p>Handles user requests and responses.</p>
    <p><strong>Example:</strong> <code>PatientAppointmentBookingController.java</code> manages appointment booking logic and request handling.</p>

   <h3>2. Data Access Layer</h3>
   <p>Interacts with the database using JDBC or ORM tools like Hibernate.</p>
    <p><strong>Example:</strong> <code>PatientAppointmentDao.java</code>:</p>
    <pre>
@Repository
public class PatientAppointmentDao {
    @Autowired
    private JdbcTemplate jdbcTemplate;

   public void createAppointment(String patientId, String doctorId, String appointmentDate) {
        String sql = "INSERT INTO appointments (patient_id, doctor_id, appointment_date) VALUES (?, ?, ?)";
        jdbcTemplate.update(sql, patientId, doctorId, appointmentDate);
    }
}
    </pre>

   <h3>3. Frontend</h3>
    <ul>
        <li><strong>JSP Pages:</strong> For dynamic forms and views (e.g., <code>AppointmentBookingForm.jsp</code>).</li>
        <li><strong>CSS:</strong> Adds responsive styling.</li>
    </ul>

   <h2>Future Enhancements</h2>
    <ul>
        <li>Add authentication using Spring Security or JWT.</li>
        <li>Enhance UI using Bootstrap or React.</li>
        <li>Generate advanced reports and analytics.</li>
        <li>Enable notifications (e.g., email/SMS).</li>
    </ul>

   <h2>Contributing</h2>
   <ol>
        <li>Fork the repository.</li>
        <li>Create a new feature branch: <code>git checkout -b feature-name</code>.</li>
        <li>Commit your changes: <code>git commit -m "Added feature"</code>.</li>
        <li>Push to the branch: <code>git push origin feature-name</code>.</li>
        <li>Open a Pull Request.</li>
    </ol>

   <h2>License</h2>
    <p>This project is licensed under the MIT License. See the <a href="#">LICENSE</a> file for details.</p>
</body>
</html>
