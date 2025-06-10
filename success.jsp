<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Details</title>
<style>
    body {
        margin: 0;
        padding: 0;
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
        background-image: url('https://wallpaperaccess.com/full/2766100.jpg'); /* Change to your image */
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
        font-family: Arial, sans-serif;
    }

    .container {
        background: rgba(255, 255, 255, 0.9);
        padding: 30px 50px;
        border-radius: 10px;
        text-align: center;
        box-shadow: 0 0 15px rgba(0, 0, 0, 0.3);
    }

    h1 {
        color: red;
        margin-bottom: 20px;
    }

    table {
        width: 100%;
        border-collapse: collapse;
        margin-bottom: 20px;
    }

    th, td {
        border: 1px solid black;
        padding: 10px;
    }

    th {
        background-color: #f2f2f2;
    }

    a {
        text-decoration: none;
        color: blue;
        font-weight: bold;
    }
</style>
</head>
<body>

<div class="container">
    <h1>View Student</h1>
    <table>
        <thead>
            <tr>
                <th>S.No</th>
                <th>Name</th>
                <th>Email</th>
                <th>Gender</th>
                <th>Course</th>
                <th>Timings</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>${rtv.sId}</td>
                <td>${rtv.sName}</td>
                <td>${rtv.email}</td>
                <td>${rtv.gender}</td>
                <td>${rtv.course}</td>
                <td>${rtv.timings}</td>
            </tr>
        </tbody>
    </table>

    <a href="data">Logout</a>
</div>

</body>
</html>
