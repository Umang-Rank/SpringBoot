<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Success</title>
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #43e97b, #38f9d7);
            margin: 0;
            padding: 30px;
            text-align: center;
        }

        h1 {
            color: #333;
            margin-bottom: 20px;
        }

        table {
            width: 90%;
            margin: 0 auto;
            border-collapse: collapse;
            background: #fff;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
            border-radius: 10px;
            overflow: hidden;
        }

        th, td {
            border-bottom: 1px solid #ddd;
            padding: 12px 15px;
            text-align: center;
        }

        th {
            background-color: #2575fc;
            color: white;
            text-transform: uppercase;
            letter-spacing: 0.5px;
        }

        tr:hover {
            background-color: #f5f5f5;
        }

        button {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 6px 12px;
            border-radius: 5px;
            cursor: pointer;
            transition: 0.3s;
        }

        button:hover {
            background-color: #388E3C;
        }

        .delete-btn {
            background-color: #e53935;
        }

        .delete-btn:hover {
            background-color: #c62828;
        }

        .logout {
            display: inline-block;
            margin-top: 25px;
            padding: 10px 20px;
            background-color: #ff3b30;
            color: white;
            border-radius: 8px;
            text-decoration: none;
            transition: 0.3s;
        }

        .logout:hover {
            background-color: #d93429;
        }
    </style>
    
    <script type="text/javascript">
    	function deleteData() {
			alert("deleteData() called....");
			document.fn.action="delete";
			document.submit();
		}
    	
    	function editData() {
    	    alert("editData() called....")
    	    document.fn.action = "edit";
    	    document.fn.submit();
    	}
    </script>
</head>
<body>

<h1>LOGIN SUCCESS ✅</h1>

<form action="" name="fn">
<table>
    <tr>
    	<th>Select</th>
        <th>Id</th>
        <th>Name</th>
        <th>Email</th>
        <th>Mobile</th>
        <th>Dob</th>
        <th>Username</th>
        <th colspan="2">Action</th>
    </tr>

    <c:forEach var="st" items="${data}">
        <tr>
        	<td><input type="radio" name="id" value="${st.id}"></td>
            <td>${st.id}</td>
            <td>${st.name}</td>
            <td>${st.email}</td>
            <td>${st.mobile}</td>
            <td>${st.dob}</td>
            <td>${st.username}</td>
            <td><button onclick="editData()">EDIT</button></td>
            <td><button class="delete-btn" onclick="deleteData()">DELETE</button></td>
        </tr>
    </c:forEach>
</table>
</form>

<a href="home" class="logout">HOME</a>

</body>
</html>
