<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Register</title>
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: 'Poppins', sans-serif;
    }

    body {
      background: linear-gradient(135deg, #6a11cb, #2575fc);
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }

    .form-container {
      background: white;
      padding: 40px 35px;
      border-radius: 15px;
      width: 350px;
      color: #333;
      box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
    }

    h2 {
      text-align: center;
      margin-bottom: 25px;
    }

    form {
      display: flex;
      flex-direction: column;
    }

    .input-group {
      margin-bottom: 15px;
    }

    label {
      margin-bottom: 5px;
      font-weight: 600;
    }

    input {
      padding: 10px;
      border: 1px solid #ccc;
      border-radius: 8px;
      width: 100%;
    }

    .btn {
      background-color: #34c759;
      color: white;
      padding: 10px;
      border: none;
      border-radius: 8px;
      cursor: pointer;
      transition: 0.3s;
    }

    .btn:hover {
      background-color: #2fa94b;
    }

    .switch, .back-home {
      text-align: center;
      margin-top: 15px;
      font-size: 0.9rem;
    }

    .switch a, .back-home a {
      color: #2575fc;
      text-decoration: none;
    }

    .switch a:hover, .back-home a:hover {
      text-decoration: underline;
    }
  </style>
</head>
<body>
  <div class="form-container">
    <h2>Register</h2>
    <form action="success">
      <div class="input-group">
        <label for="fullname">Full Name</label>
        <input type="text" id="fullname" placeholder="Enter your full name" name="name" required>
      </div>
      <div class="input-group">
        <label for="email">Email</label>
        <input type="email" id="email" placeholder="Enter your email" name="email" required>
      </div>
     
	
	<div class="input-group">
	  <label for="phone">Phone Number</label>
	  <input type="tel" id="phone" placeholder="Enter your phone number" name="mobile" required>
	</div>
	
	<div class="input-group">
	  <label for="dob">Date of Birth</label>
	  <input type="date" id="dob" name="dob" required>
	</div>
	 <div class="input-group">
		  <label for="username">Username</label>
		  <input type="text" id="username" placeholder="Choose a username" name="username" required>
	</div>
      <div class="input-group">
        <label for="password">Password</label>
        <input type="password" id="password" placeholder="Create a password" name="password" required>
      </div>
      <button type="submit" class="btn">Register</button>
      <p class="switch">Already have an account? <a href="login">Login here</a></p>
      <p class="back-home"><a href="home">← Back to Home</a></p>
    </form>
  </div>
</body>
</html>
