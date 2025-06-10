<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>

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
        background-image: url('https://pics.craiyon.com/2023-10-13/05835c527e3b4aab988da80be04526e7.webp');
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
    }

    .login-container {
        background: rgba(255, 255, 255, 0.95);
        padding: 40px 50px;
        border-radius: 15px;
        box-shadow: 0 0 20px rgba(0, 0, 0, 0.4);
        width: 100%;
        max-width: 400px;
    }

    .login-container h2 {
        text-align: center;
        color: #333;
        margin-bottom: 25px;
    }

    .form-group {
        margin-bottom: 20px;
    }

    .form-group label {
        font-weight: bold;
        display: block;
        margin-bottom: 5px;
    }

    .form-group input {
        width: 100%;
        padding: 10px;
        font-size: 14px;
        border: 1px solid #ccc;
        border-radius: 5px;
    }

    input[type="submit"] {
        width: 100%;
        padding: 12px;
        font-size: 16px;
        background-color: #28a745;
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }

    input[type="submit"]:hover {
        background-color: #218838;
    }
</style>

</head>
<body>

<div class="login-container">
    <h2>User Login</h2>
    
    <!-- Disable browser autocomplete -->
    <form action="loginSave" method="POST" autocomplete="off">
        <div class="form-group">
            <label>Email:</label>
            <input type="email" name="email" autocomplete="off" required />
        </div>

        <div class="form-group">
            <label>Password:</label>
            <input type="password" name="password" autocomplete="new-password" required />
        </div>

        <input type="submit" value="Login">
    </form>

    <font>${message }</font>
   
    <font>${message1 }</font>
    <font color="green">${blank}</font>
    <font color="green">${error}</font>
    <font color="green">${error1}</font>

    <a href="data">Register Here</a>
</div>

</body>
</html>
