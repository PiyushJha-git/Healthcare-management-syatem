package com.example.healthcaremanagement.model;

import javax.persistence.*;
import java.util.Date;

@Entity
public class Appointment {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    private User patient;

    @ManyToOne
    private User doctor;

    @Temporal(TemporalType.TIMESTAMP)
    private Date appointmentDate;

    private String status;

    // Getters and Setters...
}