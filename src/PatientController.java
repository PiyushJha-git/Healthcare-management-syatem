package com.example.healthcaremanagement.controller;

import com.example.healthcaremanagement.model.Appointment;
import com.example.healthcaremanagement.service.AppointmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/patient")
public class PatientController {
    @Autowired
    private AppointmentService appointmentService;

    @PostMapping("/appointments")
    public Appointment bookAppointment(@RequestBody Appointment appointment) {
        return appointmentService.saveOrUpdateAppointment(appointment);
    }

    @GetMapping("/appointments")
    public List<Appointment> getAppointments(@RequestParam Long patientId) {
        return appointmentService.getAppointmentsByPatientId(patientId);
    }

    @GetMapping("/appointments/history")
    public List<Appointment> getAppointmentHistory(@RequestParam Long patientId) {
        return appointmentService.getAppointmentsByPatientId(patientId);
    }
}