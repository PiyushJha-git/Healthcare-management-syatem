package com.healthcare.patient.dao;

import com.healthcare.management.model.Patient;
import java.util.List;
import java.util.Optional;

public interface PatientDao {
    List<Patient> getAllPatients();
    Optional<Patient> getPatientById(Long id);
    Patient savePatient(Patient patient);
    void deletePatient(Long id);
    Patient updatePatient(Long id, Patient patientDetails);
}
