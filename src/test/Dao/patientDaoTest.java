import org.junit.jupiter.api.*;
import java.sql.*;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

public class PatientDAOTest {
    private Connection connection;
    private PatientDAO patientDAO;

    @BeforeEach
    public void setUp() throws SQLException {
        // Setup in-memory database for testing
        connection = DriverManager.getConnection("jdbc:h2:mem:testdb;DB_CLOSE_DELAY=-1", "sa", "");
        Statement statement = connection.createStatement();
        statement.execute("CREATE TABLE patients (id INT AUTO_INCREMENT PRIMARY KEY, name VARCHAR(255), age INT)");

        patientDAO = new PatientDAO(connection);
    }

    @Test
    public void testAddPatient() throws SQLException {
        Patient patient = new Patient(0, "John Doe", 30);
        patientDAO.addPatient(patient);

        Patient retrievedPatient = patientDAO.getPatientById(1); // ID should be 1 because it's auto-incremented
        assertNotNull(retrievedPatient);
        assertEquals("John Doe", retrievedPatient.getName());
        assertEquals(30, retrievedPatient.getAge());
    }

    @Test
    public void testGetAllPatients() throws SQLException {
        Patient patient1 = new Patient(0, "Jane Doe", 25);
        Patient patient2 = new Patient(0, "Tom Smith", 40);
        patientDAO.addPatient(patient1);
        patientDAO.addPatient(patient2);

        List<Patient> patients = patientDAO.getAllPatients();
        assertEquals(2, patients.size());
    }

    @Test
    public void testUpdatePatient() throws SQLException {
        Patient patient = new Patient(0, "Alice", 28);
        patientDAO.addPatient(patient);
        Patient retrievedPatient = patientDAO.getPatientById(1);

        retrievedPatient.setName("Alice Updated");
        retrievedPatient.setAge(30);
        patientDAO.updatePatient(retrievedPatient);

        Patient updatedPatient = patientDAO.getPatientById(1);
        assertEquals("Alice Updated", updatedPatient.getName());
        assertEquals(30, updatedPatient.getAge());
    }

    @Test
    public void testDeletePatient() throws SQLException {
        Patient patient = new Patient(0, "Bob", 35);
        patientDAO.addPatient(patient);
        patientDAO.deletePatient(1);

        Patient deletedPatient = patientDAO.getPatientById(1);
        assertNull(deletedPatient);
    }

    @AfterEach
    public void tearDown() throws SQLException {
        connection.close();
    }
}
