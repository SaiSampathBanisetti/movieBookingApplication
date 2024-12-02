<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!--  <!DOCTYPE html>
<html>
<head>
    <title>Select Language</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            padding: 20px;
        }
        .container {
            width: 50%;
            margin: 0 auto;
            text-align: center;
        }
        select {
            padding: 10px;
            font-size: 16px;
            width: 100%;
            margin-top: 20px;
        }
        button {
            padding: 10px 20px;
            font-size: 16px;
            margin-top: 20px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Select Language</h2>
        <form action="/movieReportLanguage" method="post">
            <label for="languages">Choose a Language:</label>
            <select id="languages" name="languages">
                <c:forEach var="language" items="${languageSet}">
                    <option value="${language}">${language}</option>
                </c:forEach>
            </select>
            <button type="submit">Submit</button>
        </form>
    </div>
</body>
</html> -->



<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Select Language</title>

    <!-- Include Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background-color: #f5f5f5; /* Light gray background */
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
        }

        h2 {
            color: #ff5733; /* Bright orange for headings */
        }

        .container {
            max-width: 600px;
            margin-top: 50px;
            background-color: #ffffff; /* White background for the form container */
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.1);
        }

        .page-title {
            font-size: 2.5rem;
            font-weight: 700;
            color: #ff5733; /* Bright orange color */
            text-align: center;
            margin-bottom: 30px;
            text-transform: uppercase;
            letter-spacing: 2px;
        }

        .form-label {
            font-size: 1.1em;
            color: #495057;
            margin-bottom: 10px; /* Add some spacing below the label */
            display: block; /* Ensure the label is displayed as a block */
        }

        .form-control {
            border-radius: 8px;
            border: 1px solid #ced4da;
            box-shadow: none;
            padding: 12px;
            background-color: #f9f9f9; /* Light gray background for inputs */
            width: 100%; /* Set to 100% to align with the container */
            margin-bottom: 20px; /* Space below the select dropdown */
        }

        .form-control:focus {
            border-color: #ff5733; /* Highlight color on focus */
            box-shadow: 0 0 5px rgba(255, 87, 51, 0.25);
        }

        .btn {
            padding: 10px 20px;
            font-size: 1.1em;
            border-radius: 8px;
            transition: all 0.3s ease;
            display: block; /* Ensures the button is a block-level element */
            margin: 20px auto 0 auto; /* Centers the button */
        }

        .btn-primary {
            background-color: #ff5733; /* Orange color */
            border: none;
            color: white;
        }

        .btn-primary:hover {
            background-color: #e64a19; /* Darker orange on hover */
            transform: translateY(-2px);
        }

        .d-grid {
            display: grid;
            gap: 20px;
        }

		.return-link {
            text-align: center;
            margin-top: 20px;
        }

        .return-link a {
            font-size: 1.1em;
            color: #ff5733;
            text-decoration: none;
            transition: color 0.3s ease;
        }

        .return-link a:hover {
            color: #e64a19;
            text-decoration: underline;
        }
        /* Responsive Design */
        @media (max-width: 768px) {
            .container {
                padding: 20px;
            }

            h2 {
                font-size: 2rem;
            }
        }
    </style>
</head>

<body>

    <div class="container">
        <h2 class="page-title">Select Language</h2>
        <form action="/movieReportLanguage" method="post">
            <div class="mb-3">
                <label for="languages" class="form-label">Choose a Language:</label>
                <select id="languages" name="languages" class="form-control">
                    <c:forEach var="language" items="${languageSet}">
                        <option value="${language}">${language}</option>
                    </c:forEach>
                </select>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
        <div class="return-link">
            <a href="/index">Return to Previous Page</a>
        </div>
    </div>

    <!-- Include Bootstrap JS and dependencies -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
</body>

</html>

    