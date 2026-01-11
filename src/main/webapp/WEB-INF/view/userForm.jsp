<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User Form</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            display: flex;
            flex-direction: column;
            align-items: center;
            height: 100vh;
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
        .card {
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            padding: 20px;
            width: 300px;
            margin-top: 80px; /* space for fixed header */
        }
        h2 {
            text-align: center;
            color: #333;
        }
        input[type="text"], textarea {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }
        input[type="submit"] {
            background-color: #007BFF;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
        .validation-result, .response-message {
            margin-top: 10px;
        }
        .validation-result {
            color: green;
        }
        .response-message {
            color: red;
        }
    </style>
</head>
<body>
    <div class="header">
        <div class="nav-buttons">
            <a href="/users" style="color: white; text-decoration: none;">
                <span class="glyphicon glyphicon-list"></span> User List
            </a>
        </div>
        <div class="nav-buttons">
            <a href="/logout" style="color: white; text-decoration: none;">
                <span class="glyphicon glyphicon-log-out"></span> Logout
            </a>
        </div>
    </div>
    <div class="card">
        <h2>User Details Form</h2>
        <form id="userForm" action="/user" method="post">
            First Name: <input type="text" name="firstName" required/><br/>
            Last Name: <input type="text" name="lastName" required/><br/>
            Company Name: <input type="text" name="companyName" required/><br/>
            Aadhaar Card Number: 
            <input type="text" name="aadhaarNumber" id="aadhaarNumber" required pattern="\d{4}\s?\d{4}\s?\d{4}"/>
            <button type="button" onclick="validateAadhaar()">Validate</button>
			<div class="validation-result" id="validationResult"></div><br/>
			       <div class="response-message" id="responseMessage"></div><br/>
            <div class="validation-result" id="validationResult"></div><br/>
            Mobile Number: <input type="text" name="mobileNumber" required/><br/>
            Address: <textarea name="address" required></textarea><br/>
            <input type="submit" value="Submit"/>
          
        </form>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script>
		function validateAadhaar() {
		    const aadhaarNumber = document.getElementById('aadhaarNumber').value;
		    if (!aadhaarNumber) {
		        alert('Please enter an Aadhaar number');
		        return;
		    }

		    $.ajax({
		        url: '/validate-aadhaar',
		        type: 'POST',
		        contentType: 'application/json',
		        data: JSON.stringify(aadhaarNumber),
		        success: function(isValid) {
		            console.log('Received:', isValid);
		            const validationResultDiv = document.getElementById('validationResult');
		            const responseMessageDiv = document.getElementById('responseMessage');
		            
		            validationResultDiv.textContent = ''; // Clear previous validation results
		            responseMessageDiv.textContent = ''; // Clear previous messages

		            if (isValid) {
		                validationResultDiv.textContent = 'Aadhaar number is valid.';
		                validationResultDiv.style.color = 'green';
		                responseMessageDiv.textContent = 'You can proceed to submit the form.';
		                responseMessageDiv.style.color = 'green';
		            } else {
		                validationResultDiv.textContent = 'Aadhaar number is invalid.';
		                validationResultDiv.style.color = 'red';
		                responseMessageDiv.textContent = 'Please check your Aadhaar number and try again.';
		                responseMessageDiv.style.color = 'red';
		            }
		        },
		        error: function(jqXHR, textStatus, errorThrown) {
		            console.error('Error:', textStatus, errorThrown);
		            alert('Error validating Aadhaar number. Please try again.');
		        }
		    });
		}

    </script>
</body>
</html>
