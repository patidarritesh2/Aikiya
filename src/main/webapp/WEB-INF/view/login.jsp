<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .card {
            background: white;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
            padding: 20px;
            width: 300px;
            text-align: center;
        }
        h2 {
            margin-bottom: 20px;
        }
        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ddd;
            border-radius: 4px;
        }
        input[type="submit"] {
            background-color: #5cb85c;
            color: white;
            border: none;
            border-radius: 4px;
            padding: 10px;
            cursor: pointer;
            width: 100%;
        }
        input[type="submit"]:hover {
            background-color: #4cae4c;
        }
        .error {
            color: red;
            margin-top: 10px;
        }
        .register-link {
            margin-top: 15px;
            display: block;
            color: #007bff;
            text-decoration: none;
        }
        .register-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="card">
        <h2>Login</h2>
        <form action="/login" method="post">
            UserName: <input type="text" name="userName" required/><br/>
            Password: <input type="password" name="password" required/><br/>
            <input type="submit" value="Login"/>
        </form>
        
        <c:if test="${not empty error}">
            <p class="error">${error}</p>
        </c:if>
        
        <a class="register-link" href="/register">Don't have an account? Register here.</a>
    </div>
</body>
</html>
