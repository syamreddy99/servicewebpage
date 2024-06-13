<!DOCTYPE html>
<html>
<head>
    <title>Login Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            background: linear-gradient(to right, #4CAF50, #45a049);
            color: #fff;
        }
        .container {
            background-color: rgba(255, 255, 25, 0.1);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 0px 15px 0px rgba(0,0,0,0.3);
            animation: fadeIn 0.5s ease;
        }
        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }
        .container h2 {
            margin-bottom: 20px;
            color: #fff;
            text-align: center;
        }
        .input-row {
            margin-bottom: 15px;
        }
        .input-row label {
            display: block;
            margin-bottom: 5px;
            color: #fff;
        }
        .input-row input {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 5px;
            box-sizing: border-box;
        }
        .input-row button {
            width: 48%;
            padding: 10px;
            border: none;
            border-radius: 5px;
            background-color: #007bff;
            color: white;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        .input-row button:hover {
            background-color: #0056b3;
        }
        .input-row button:nth-child(2) {
            background-color: #4CAF50;
        }
        .input-row button:nth-child(2):hover {
            background-color: #45a049;
        }
        .note {
            margin-top: 20px;
            text-align: center;
            color: #fff;
        }
        .admin-btn {
            position: absolute;
            top: 20px;
            right: 20px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        .admin-btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <button class="admin-btn" onclick="location.href='AdminLogin.jsp'">Admin Login</button>
    <div class="container">
        <h2>Login</h2>
        <form id="loginForm" action="Login" method="post" onsubmit="return validateForm()">
            <div class="input-row">
                <label for="userid">User ID:</label>
                <input type="text" id="userid" name="UserName" required>
            </div>
            <div class="input-row">
                <label for="password">Password:</label>
                <input type="password" id="password" name="PassWord" required>
            </div>
            <div class="input-row" style="display: flex; justify-content: space-between;">
                <button type="submit">Login</button>
                <button type="button" onclick="location.href='registration.jsp'">Registration</button>
            </div>
        </form>
        <div class="note">
            <p>If you are already a user, please login.</p>
            <p>Otherwise, register.</p>
        </div>
    </div>

    <script>
        function validateForm() {
            var userid = document.getElementById("userid").value;
            var password = document.getElementById("password").value;

            if (userid.trim() === "" || password.trim() === "") {
                alert("Please enter both User ID and Password.");
                return false;
            }

            return true;
        }
    </script>
</body>
</html>
