<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Details</title>

<style>
    body {
        font-family: "Poppins", sans-serif;
        background: linear-gradient(135deg, #74ebd5, #ACB6E5);
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }

    .card {
        background-color: white;
        border-radius: 12px;
        padding: 30px 50px;
        box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
        text-align: left;
        width: 350px;
    }

    h2 {
        text-align: center;
        margin-bottom: 25px;
        color: #333;
    }

    .detail {
        margin: 10px 0;
        padding: 10px;
        border-bottom: 1px solid #ddd;
        font-size: 16px;
        color: #555;
    }

    .label {
        font-weight: bold;
        color: #222;
    }
</style>

</head>
<body>

<div class="card">
    <h2>Student Details</h2>
    <div class="detail"><span class="label">ID:</span> ${st.id}</div>
    <div class="detail"><span class="label">Name:</span> ${st.name}</div>
    <div class="detail"><span class="label">Email:</span> ${st.email}</div>
    <div class="detail"><span class="label">DOB:</span> ${st.dob}</div>
    <div class="detail"><span class="label">Mobile:</span> ${st.mobile}</div>
    <div class="detail"><span class="label">Username:</span> ${st.username}</div>
</div>

</body>
</html>
