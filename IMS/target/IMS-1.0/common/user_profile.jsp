<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profile</title>
</head>
<body>
    <h1>User Profile</h1>
    
    <div>
        <h2>Profile Information</h2>
        <form action="update_profile.php" method="post">
            <label for="full_name">Full Name:</label>
            <input type="text" id="full_name" name="full_name" value="John Doe" required>
            <br>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" value="johndoe@example.com" required>
            <br>

            <label for="mobile">Mobile:</label>
            <input type="text" id="mobile" name="mobile" value="123-456-7890" required>
            <br>

            <label for="avatar">Avatar Image:</label>
            <input type="file" id="avatar" name="avatar">
            <br>

            <input type="submit" value="Update Profile">
        </form>
    </div>

    <div>
        <h2>Email and Mobile Verification</h2>
        <p>Verify your email and mobile number if you have updated them:</p>
        
        
    </div>

    <div>
        <h2>User Role</h2>
        <p>Your current user role is: <strong>User</strong></p>
    </div>
</body>
</html>
