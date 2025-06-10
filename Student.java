package com.sagar.Binding;

import java.util.Arrays;

import jakarta.persistence.Column;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Pattern;

public class Student {
	private Integer sId;
	@NotEmpty(message = "Name is required")
    private String sName;

    @Column(unique = true)
    @Email(message = "Invalid email")
    @NotEmpty(message = "Email is required")
    private String email;

    @Column(unique = true)
    @Pattern(regexp = "^(?=.*[!@#$%^&*]).{6,}$", message = "Password must be at least 6 characters with one special character")
    private String password;

    @NotNull(message = "Gender is required")
    private String gender;

    @NotNull(message = "Course is required")
    private String course;

    @NotNull(message = "Timing is required")
    private String[] timings;
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
	public String[] getTimings() {
		return timings;
	}
	public void setTimings(String[] timings) {
		this.timings = timings;
	}
	@Override
	public String toString() {
		return "Student [sId=" + sId + ", sName=" + sName + ", email=" + email + ", password=" + password + ", gender="
				+ gender + ", course=" + course + ", timings=" + Arrays.toString(timings) + "]";
	}
	
	
	
	


}
