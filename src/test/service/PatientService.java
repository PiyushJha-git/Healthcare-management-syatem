package com.healthcare.management.service;

import com.healthcare.management.dao.PatientDao;
import com.healthcare.management.model.Patient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class PatientService {

    @Autowired
    private PatientDao patientDao;

    public List<Patient> getAllPatients() {
        return patientDao.getAllPatients();
    }

    public Optional<Patient> getPatientById(Long id) {
        return patientDao.getPatientById(id);
    }

    public Patient savePatient(Patient patient) {
        return patientDao.savePatient(patient);
    }

    public void deletePatient(Long id) {
        patientDao.deletePatient(id);
    }

    public Patient updatePatient(Long id, Patient patientDetails) {
        return patientDao.updatePatient(id, patientDetails);
    }
}
