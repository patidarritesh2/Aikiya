<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #eaeef1;
            color: #2c3e50;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        header {
            background-color: #34495e;
            color: white;
            padding: 20px;
            text-align: center;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.3);
        }

        header h1 {
            margin: 0;
            font-size: 2.5em;
            font-weight: bold;
        }

        header h1 span {
            background: linear-gradient(45deg, #3498db, #9b59b6);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        header nav {
            margin-top: 10px;
        }

        header nav a {
            color: white;
            text-decoration: none;
            padding: 10px 20px;
            border: 2px solid transparent;
            border-radius: 5px;
            transition: background-color 0.3s, border-color 0.3s;
        }

        header nav a:hover {
            background-color: white;
            color: #34495e;
            border-color: #34495e;
        }

        main {
            flex: 1;
            padding: 40px 20px;
            text-align: center;
            max-width: 800px;
            margin: 0 auto;
        }

        main h2 {
            font-size: 2.5em;
            margin-bottom: 20px;
            color: #2980b9;
        }

        main p {
            font-size: 1.2em;
            margin: 0;
            line-height: 1.6;
        }

        footer {
            background-color: #2c3e50;
            color: white;
            text-align: center;
            padding: 15px 0;
            box-shadow: 0 -2px 10px rgba(0, 0, 0, 0.3);
        }

        footer p {
            margin: 0;
            font-size: 0.9em;
        }
    </style>
</head>
<body>
    <header>
        <h1><span>Power Zoom AI</span></h1>
        <nav>
            <a href="/logout">Logout</a>
        </nav>
    </header>

    <main>
        <h2>Welcome, ${username}!</h2>
        <p>You have successfully logged in.</p>
    </main>

    <footer>
        <p>&copy; 2024 Power Zoom Ai. All rights reserved.</p>
    </footer>
</body>
</html>
