<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Panel</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            padding: 20px;
        }
        .container {
            max-width: 600px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        .button-container {
            display: flex;
            justify-content: space-around;
            margin-top: 20px;
        }
        .button-container button {
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            transition: background-color 0.3s ease;
        }
        .button-container button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Admin Panel</h2>

    <div class="button-container">
        <button onclick="location.href='adminProductAdd.jsp'">Add Product</button>
        <button onclick="location.href='deleteProduct.jsp'">Delete Product</button>
        <button onclick="location.href='inactiveProduct.jsp'">Inactive Product</button>
        <button onclick="location.href='DeleteCustomer.jsp'">Delete Customer</button>
        

    </div>
</div>
<div class="container">
    <h2>Admin Logout</h2>

    <div class="button-container">
        <button onclick="location.href='AdminLogout.jsp'">Logout</button>
        

    </div>
</div>
</body>
</html>
