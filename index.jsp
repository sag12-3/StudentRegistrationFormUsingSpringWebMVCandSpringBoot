<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Registration</title>

<style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    html, body {
        height: 100%;
        width: 100%;
        font-family: Arial, sans-serif;
    }

    body {
        display: flex;
        justify-content: center;
        align-items: center;
        background-image: url('https://static.vecteezy.com/system/resources/thumbnails/050/814/942/small_2x/organized-back-to-school-top-view-of-school-supplies-frame-on-wooden-desk-photo.jpeg');
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
    }

    .form-container {
        background: rgba(255, 255, 255, 0.95);
        padding: 40px 50px;
        border-radius: 15px;
        box-shadow: 0 0 20px rgba(0, 0, 0, 0.4);
        width: 100%;
        max-width: 600px;
    }

    .form-container h2 {
        color: green;
        text-align: center;
        margin-bottom: 20px;
    }

    .form-group {
        margin-bottom: 15px;
    }

    .form-group label {
        display: block;
        margin-bottom: 5px;
        font-weight: bold;
    }

    input[type="submit"] {
        padding: 10px 20px;
        font-size: 16px;
        cursor: pointer;
        background-color: green;
        color: white;
        border: none;
        border-radius: 5px;
    }

    a {
        display: block;
        text-align: center;
        margin-top: 15px;
        color: blue;
        text-decoration: none;
    }

    .password-toggle {
        display: flex;
        align-items: center;
    }

    .password-toggle input {
        flex: 1;
    }

    .toggle-btn {
        margin-left: 10px;
        cursor: pointer;
        padding: 6px 10px;
        background: #eee;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 12px;
    }
</style>

<script>
    function validateForm() {
        const email = document.getElementById("email").value.trim();
        const password = document.getElementById("password").value;

        const emailPattern = /^[a-zA-Z0-9._%+-]+@(gmail|yahoo)\.com$/;
        const passwordPattern = /.{6,}/;

        if (email === "") {
            alert("Email is required.");
            return false;
        }

        if (!emailPattern.test(email)) {
            alert("Please enter a valid @gmail.com or @yahoo.com email address.");
            return false;
        }

        if (password === "") {
            alert("Password is required.");
            return false;
        }

        if (!passwordPattern.test(password)) {
            alert("Password must be at least 6 characters long.");
            return false;
        }

        return true;
    }

    function togglePasswordVisibility() {
        const passwordField = document.getElementById("password");
        const toggleBtn = document.getElementById("togglePassword");

        if (passwordField.type === "password") {
            passwordField.type = "text";
            toggleBtn.textContent = "Hide";
        } else {
            passwordField.type = "password";
            toggleBtn.textContent = "Show";
        }
    }
</script>

</head>
<body>

<div class="form-container">
    <h2>Student Registration Form</h2>

    <form:form action="save" modelAttribute="student" method="POST" onsubmit="return validateForm();" autocomplete="off">
        <div class="form-group">
            <label>Name:</label>
            <form:input path="sName"/>
        </div>

        <div class="form-group">
            <label>Email:</label>
            <input type="text" id="email" name="email" autocomplete="off" value="" />
        </div>

        <div class="form-group">
            <label>Password:</label>
            <div class="password-toggle">
                <input type="password" id="password" name="password" autocomplete="new-password" value="" />
                <button type="button" id="togglePassword" class="toggle-btn" onclick="togglePasswordVisibility()">Show</button>
            </div>
        </div>

        <div class="form-group">
            <label>Gender:</label>
            <form:radiobutton path="gender" value="Male"/> Male
            <form:radiobutton path="gender" value="Female"/> Female
        </div>

        <div class="form-group">
            <label>Course:</label>
            <form:select path="course">
                <form:option value="">-Select-</form:option>
                <form:options items="${CoursesList}" />
            </form:select>
        </div>

        <div class="form-group">
            <label>Timing:</label>
            <form:checkboxes items="${timingList}" path="timings"/>
        </div>

        <input type="submit" value="Save "/>
    </form:form>

    <h5>If you already registered →</h5>
    <a href="loginForm">LogIn</a>

    <h2>${msg}</h2>
    <h2>${exist}</h2>
    <h2>${blank}</h2>
    
    
</div>

</body>
</html>
