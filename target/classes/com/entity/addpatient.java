package com.healthcare.service;

import com.healthcare.management.model.Patient;
import com.healthcare.management.util.DBConnect;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class AddPatient {

    public boolean addPatient(Patient patient) {
        String query = "INSERT INTO patients (first_name, last_name, age, gender, address, phone_number) VALUES (?, ?, ?, ?, ?, ?)";

        try (Connection conn = DBConnect.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(query)) {

            pstmt.setString(1, patient.getFirstName());
            pstmt.setString(2, patient.getLastName());
            pstmt.setInt(3, patient.getAge());
            pstmt.setString(4, patient.getGender());
            pstmt.setString(5, patient.getAddress());
            pstmt.setString(6, patient.getPhoneNumber());

            int rowsAffected = pstmt.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
}
