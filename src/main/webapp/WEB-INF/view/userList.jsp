<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>User List</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
            margin: 0;
        }
        .header {
            width: 100%;
            background-color: #007BFF;
            color: white;
            padding: 10px;
            text-align: right;
            position: fixed;
            top: 0;
            right: 0;
            z-index: 1000;
        }
        .nav-buttons {
            display: inline-block;
            margin: 0 15px;
        }
        .container {
            margin-top: 60px; /* Space for fixed header */
            padding: 20px;
        }
        h2 {
            text-align: center;
            color: #333;
        }
        .table {
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
        }
        .table th, .table td {
            padding: 15px;
            text-align: left;
        }
    </style>
</head>
<body>
    <div class="header">
       
        <div class="nav-buttons">
            <a href="/logout" style="color: white; text-decoration: none;">
                <span class="glyphicon glyphicon-log-out"></span> Logout
            </a>
        </div>
    </div>

    <div class="container">
        <h2>User List</h2>
        <div class="table-responsive">
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Company Name</th>
                        <th>Aadhaar Number</th>
                        <th>Mobile Number</th>
                        <th>Address</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="user" items="${users}">
                        <tr>
                            <td>${user.firstName}</td>
                            <td>${user.lastName}</td>
                            <td>${user.companyName}</td>
                            <td>${user.aadhaarNumber}</td>
                            <td>${user.mobileNumber}</td>
                            <td>${user.address}</td>
                        </tr>
                    </c:forEach>
                    <c:if test="${empty users}">
                        <tr>
                            <td colspan="6" class="text-center">No users found.</td>
                        </tr>
                    </c:if>
                </tbody>
            </table>
        </div>
        <div class="text-center">
            <a href="/user" class="btn btn-primary">Add User</a>
        </div>
    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>
