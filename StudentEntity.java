package com.sagar.Entity;


import java.time.LocalDate;
import java.time.LocalTime;

import org.hibernate.annotations.CreationTimestamp;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class StudentEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer sId;

    private String sName;

    @Column(unique = true)
    private String email;

    @Column(unique = true)
    private String password;

    private String gender;
    private String course;
    public String timings;
    @CreationTimestamp
    private LocalDate regdDtae;
    @CreationTimestamp
    private LocalTime regdTime;
 

    // Getters and setters
    public Integer getsId() {
        return sId;
    }

    public void setsId(Integer sId) {
        this.sId = sId;
    }

    public String getsName() {
        return sName;
    }

    public void setsName(String sName) {
        this.sName = sName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getCourse() {
        return course;
    }

    public void setCourse(String course) {
        this.course = course;
    }

    public String getTimings() {
        return timings;
    }

    public void setTimings(String timings) {
        this.timings = timings;
    }

    @Override
    public String toString() {
        return "StudentEntity [sId=" + sId + ", sName=" + sName + ", email=" + email + ", password=" + password
                + ", gender=" + gender + ", course=" + course + ", timings=" + timings + "]";
    }
}
