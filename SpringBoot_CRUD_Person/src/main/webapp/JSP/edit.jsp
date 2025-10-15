<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
    <h2>Edit Page</h2>
    <form action="editsuccess" >
    <div class="input-group">
        <label for="id">Id</label>
        <input type="text" id="id"  value="${p.id}" name="id" >
      </div>
      <div class="input-group">
        <label for="fullname">Full Name</label>
        <input type="text" id="fullname"  value="${p.name}" name="name" >
      </div>
      <div class="input-group">
        <label for="email">Email</label>
        <input type="email" id="email"  name="email" value="${p.email}" >
      </div>
      
	
	<div class="input-group">
	  <label for="phone">Phone Number</label>
	  <input type="tel" id="phone"  name="mobile" value="${p.mobile}">
	</div>
	
	<div class="input-group">
	  <label for="dob">Date of Birth</label>
	  <input type="date" id="dob" name="dob" value="${p.dob}">
	</div>
	<div class="input-group">
		  <label for="username">Username</label>
		  <input type="text" id="username"  name="username" value="${p.username}">
	</div>
      <div class="input-group">
        <label for="password">Password</label>
        <input type="password" id="password"  name="password" value="${p.password}">
      </div>
      <button type="submit" class="btn">UPDATE</button>
      
      <p class="back-home"><a href="home">← Back to Home</a></p>
    </form>
  </div>
</body>
</html>