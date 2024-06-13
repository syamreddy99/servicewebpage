<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Settings Page</title>
<link rel="stylesheet" href="styles.css"> <!-- Link to external CSS file -->
</head>
<style>
/* Basic styling for the settings page */
body {
    font-family: Arial, sans-serif;
    background-color: #f0f0f0;
    margin: 0;
    padding: 0;
}

.settings-container {
    max-width: 600px;
    margin: 50px auto;
    background-color: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h1 {
    text-align: center;
    margin-bottom: 20px;
}

form {
    display: grid;
    gap: 15px;
}

.setting-item {
    display: grid;
    gap: 10px;
}

label {
    font-weight: bold;
}

input[type="text"],
input[type="email"],
select {
    width: 100%;
    padding: 8px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

input[type="checkbox"] {
    width: auto;
}

button {
    background-color: #4CAF50;
    color: white;
    border: none;
    padding: 10px 20px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    border-radius: 4px;
    cursor: pointer;
}

button:hover {
    background-color: #45a049;
}

</style>
<body>

<div class="settings-container">
    <h1>Settings</h1>
    
    <form id="settings-form">
        <div class="setting-item">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" placeholder="Enter your username">
        </div>
        
        <div class="setting-item">
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" placeholder="Enter your email address">
        </div>
        
        <div class="setting-item">
            <label for="notifications">Receive Notifications:</label>
            <input type="checkbox" id="notifications" name="notifications">
        </div>
        
        <div class="setting-item">
            <label for="theme">Choose Theme:</label>
            <select id="theme" name="theme">
                <option value="light">Light Theme</option>
                <option value="dark">Dark Theme</option>
            </select>
        </div>
        
        <div class="setting-item">
            <button type="submit">Save Settings</button>
        </div>
    </form>
</div>
<script>
//JavaScript for handling form submission
document.getElementById('settings-form').addEventListener('submit', function(event) {
    event.preventDefault(); // Prevent the form from submitting

    // Perform actions to save settings here (e.g., send data to server, update local storage)
    // This is where you would handle the form data and save settings

    alert('Settings saved successfully!');
});

</script>

</body>
</html>
