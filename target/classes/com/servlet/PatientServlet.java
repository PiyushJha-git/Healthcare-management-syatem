package com.healthcare.servlet;

import com.healthcare.management.model.Patient;
import com.healthcare.management.service.PatientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/patients")
public class PatientServlet extends HttpServlet {

    @Autowired
    private PatientService patientService;

    @GetMapping
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        List<Patient> patients = patientService.getAllPatients();
        response.getWriter().write(patients.toString());
    }

    @GetMapping("/{id}")
    protected void doGetById(@PathVariable Long id, HttpServletRequest request, HttpServletResponse response) throws IOException {
        Optional<Patient> patient = patientService.getPatientById(id);
        if (patient.isPresent()) {
            response.getWriter().write(patient.get().toString());
        } else {
            response.setStatus(HttpServletResponse.SC_NOT_FOUND);
            response.getWriter().write("Patient not found");
        }
    }

    @PostMapping
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        Patient patient = new Patient();
        patient.setFirstName(request.getParameter("firstName"));
        patient.setLastName(request.getParameter("lastName"));
        patient.setAge(Integer.parseInt(request.getParameter("age")));
        patient.setGender(request.getParameter("gender"));

        Patient savedPatient = patientService.savePatient(patient);
        response.getWriter().write(savedPatient.toString());
    }

    @DeleteMapping("/{id}")
    protected void doDelete(@PathVariable Long id, HttpServletRequest request, HttpServletResponse response) throws IOException {
        patientService.deletePatient(id);
        response.getWriter().write("Patient deleted successfully");
    }

    @PutMapping("/{id}")
    protected void doPut(@PathVariable Long id, HttpServletRequest request, HttpServletResponse response) throws IOException {
        Patient patientDetails = new Patient();
        patientDetails.setFirstName(request.getParameter("firstName"));
        patientDetails.setLastName(request.getParameter("lastName"));
        patientDetails.setAge(Integer.parseInt(request.getParameter("age")));
        patientDetails.setGender(request.getParameter("gender"));

        Patient updatedPatient = patientService.updatePatient(id, patientDetails);
        response.getWriter().write(updatedPatient.toString());
    }
}
