<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Home | My Website</title>
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: 'Poppins', sans-serif;
    }

    body {
      background: linear-gradient(135deg, #6a11cb, #2575fc);
      color: #fff;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }

    .container {
      text-align: center;
      background: rgba(255, 255, 255, 0.1);
      padding: 40px 50px;
      border-radius: 15px;
      backdrop-filter: blur(10px);
    }

    h1 {
      font-size: 2.5rem;
      margin-bottom: 10px;
    }

    p {
      margin-bottom: 20px;
    }

    .button-group {
      display: flex;
      justify-content: center;
      gap: 20px;
    }

    .btn {
      display: inline-block;
      text-decoration: none;
      color: white;
      background-color: #4a90e2;
      padding: 10px 25px;
      border-radius: 8px;
      transition: 0.3s;
    }

    .btn:hover {
      background-color: #357ABD;
    }

    .btn-secondary {
      background-color: #34c759;
    }

    .btn-secondary:hover {
      background-color: #2fa94b;
    }
  </style>
</head>
<body>
  <div class="container">
    <h1>Welcome to My Website</h1>
    <p>Access your account or create a new one below.</p>
    <div class="button-group">
      <a href="login" class="btn">Login</a>
      <a href="studentlogin" class="btn">Student Login</a>
      <a href="registration" class="btn btn-secondary">Register</a>
    </div>
  </div>
</body>
</html>
