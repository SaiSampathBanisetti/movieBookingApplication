<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Error Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            text-align: center;
            padding: 50px;
        }
        .error-container {
            background-color: #ffdddd;
            border: 1px solid #f2c6c6;
            border-radius: 5px;
            padding: 20px;
            max-width: 600px;
            margin: 0 auto;
        }
        .error-container h1 {
            color: #ff0000;
        }
        .error-container p {
            color: #333;
            font-size: 18px;
        }
        .back-link {
            margin-top: 20px;
            font-size: 16px;
            text-decoration: none;
            color: #007bff;
        }
        .back-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <div class="error-container">
        <h1>Error</h1>
        <p><strong>${error}</strong></p>
        <a href="/index" class="back-link">Go back to the homepage</a>
    </div>

</body>
</html>
