<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie Update</title>

    <!-- Bootstrap CSS -->
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
            font-size: 2rem;
            text-align: center;
            margin-bottom: 30px;
            text-transform: uppercase;
            letter-spacing: 2px;
        }

        .container {
            max-width: 800px;
            margin: 50px auto;
            background-color: #ffffff; /* White background for the form container */
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.1);
        }

        .form-label {
            font-size: 1.1em;
            color: #495057;
            font-weight: bold;
        }

        .form-control {
            border-radius: 8px;
            border: 1px solid #ced4da;
            box-shadow: none;
            padding: 12px;
            background-color: #f9f9f9; /* Light gray background for inputs */
        }

        .form-control:focus {
            border-color: #ff5733; /* Highlight color on focus */
            box-shadow: 0 0 5px rgba(255, 87, 51, 0.25);
        }

        .btn-custom {
            padding: 10px 20px;
            font-size: 1.1em;
            border-radius: 8px;
            background-color: #ff5733; /* Bright orange */
            color: white;
            border: none;
            transition: all 0.3s ease;
        }

        .btn-custom:hover {
            background-color: #e64a19; /* Darker orange on hover */
            transform: translateY(-2px);
        }

        .btn-reset {
            padding: 10px 20px;
            font-size: 1.1em;
            border-radius: 8px;
            background-color: #6c757d; /* Secondary button gray */
            color: white;
            border: none;
            transition: all 0.3s ease;
        }

        .btn-reset:hover {
            background-color: #5a6268;
            transform: translateY(-2px);
        }

        .text-center a {
            text-decoration: none;
            color: #ff5733;
            font-weight: bold;
            transition: color 0.3s;
        }

        .text-center a:hover {
            color: #e64a19; /* Darker orange on hover */
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .container {
                padding: 20px;
            }

            h2 {
                font-size: 1.8rem;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Update Movie Details</h2>

        <!-- Spring form tag with modelAttribute for binding -->
        <form:form action="/updateMovie" method="POST" modelAttribute="movie">
            
            <!-- Display Movie ID as read-only -->
            <div class="mb-3">
                <label for="movieId" class="form-label">Movie ID</label>
                <form:input id="movieId" path="movieId" readonly="true" class="form-control" />
            </div>

            <!-- Display Movie Name as read-only -->
            <div class="mb-3">
                <label for="movieName" class="form-label">Movie Name</label>
                <form:input id="movieName" path="movieName" readonly="true" class="form-control" />
            </div>

            <!-- Display Movie Language as read-only -->
            <div class="mb-3">
                <label for="language" class="form-label">Movie Language</label>
                <form:input id="language" path="language" readonly="true" class="form-control" />
            </div>

            <!-- Display Movie Genre as read-only -->
            <div class="mb-3">
                <label for="genre" class="form-label">Movie Genre</label>
                <form:input id="genre" path="genre" readonly="true" class="form-control" />
            </div>
            
            <!-- Editable poster URL field -->
            <div class="mb-3">
                <label for="posterUrl" class="form-label">Updated Poster URL</label>
                <form:input id="posterURL" path="posterUrl" required="true" class="form-control" />
            </div>

            <!-- Editable Duration field -->
            <div class="mb-3">
                <label for="duration" class="form-label">Updated Duration</label>
                <form:input id="duration" path="duration" required="true" class="form-control" />
            </div>

            <!-- Editable Ratings field -->
            <div class="mb-3">
                <label for="ratings" class="form-label">Updated Ratings</label>
                <form:input id="ratings" path="ratings" required="true" class="form-control" />
            </div>

            <!-- Submit and Reset buttons -->
            <div class="text-center">
                <button type="submit" class="btn btn-custom">Update Movie</button>
                <button type="reset" class="btn btn-reset">Reset</button>
            </div>
        </form:form>

        <!-- Link to navigate back to Movie Report -->
        <div class="text-center mt-3">
            <a href="/movieReport">Back to Movie Report</a>
        </div>
    </div>
</body>
</html>
