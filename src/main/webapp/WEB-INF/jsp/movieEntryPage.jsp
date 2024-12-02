<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>



<!--  <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie Entry Page</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css">
    <style>
        body {
            background-image: url('https://static.wixstatic.com/media/1d6090cc4bbf44628dfd82a1979770e8.jpg/v1/fill/w_980,h_490,fp_0.50_0.50,q_90,usm_0.66_1.00_0.01/1d6090cc4bbf44628dfd82a1979770e8.jpg'); /* Replace with your dark background image */
            background-size: cover;
            background-position: center;
            font-family: Arial, sans-serif;
            color: #ffffff; /* Light text color for dark background */
        }
        .movie-container {
            background-color: rgba(245, 245, 245, 1); /* Darker semi-transparent background */
            border-radius: 8px;
            padding: 20px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.5);
            margin: 40px auto;
            max-width: 600px;
        }
        h2 {
            color: #074291; /* Bright accent color for headings */
            text-align: center;
            margin-bottom: 20px;
        }
        .form-label {
            font-weight: bold;
            color: #074291; /* Bright accent color for labels */
        }
        .form-control {
            background-color: #999; /* Dark background for inputs */
            border: 1px solid #ffcc00; /* Border color matching the accent */
            color: #ffffff; /* Light text color */
        }
        .form-control:focus {
            background-color: #555; /* Darker focus background */
            border-color: #ffcc00; /* Bright border on focus */
            color: #ffffff; /* Light text color */
        }
        .btn-primary {
            background-color: #ffcc00; /* Bright primary button */
            border-color: #ffcc00; /* Matching border */
            width: 100%;
        }
        .btn-primary:hover {
            background-color: #e6b800; /* Darker shade on hover */
        }
        .btn-secondary {
            background-color: #555; /* Dark secondary button */
            border-color: #666; /* Slightly lighter border */
            color: #ffffff; /* Light text color */
            width: 100%;
        }
        .d-grid {
            margin-top: 20px;
        }
        table {
            width: 100%;
            margin-top: 20px;
            border-collapse: collapse;
            background-color: rgba(255, 255, 255, 0.1); /* Semi-transparent background for the table */
        }
        table th, table td {
            padding: 10px;
            text-align: left;
            border: 1px solid #666; /* Light border for the table */
            color: #ffffff; /* Light text color */
        }
        table th {
            background-color: rgba(255, 255, 255, 0.2); /* Slightly brighter background for headers */
        }
    </style>
</head>
<body>

<div class="movie-container">
    <h2>Movie Entry Page</h2>
    <form:form id="movieForm" action="/addMovie" method="post" modelAttribute="movieRecord" class="mt-4">

        <div class="mb-3">
            <label class="form-label">Enter Movie Id</label>
            <form:input path="movieId" id="movieId" class="form-control" />
        </div>

        <div class="mb-3">
            <label class="form-label">Enter Movie Name</label>
            <form:input id="movieName" path="movieName" class="form-control" />
        </div>

        <div class="mb-3">
            <label class="form-label">Enter Movie Language</label>
            <form:input path="language" id="language" class="form-control" />
        </div>

        <div class="mb-3">
            <label class="form-label">Enter Genre</label>
            <form:input path="genre" id="genre" class="form-control" />
        </div>

        <div class="mb-3">
            <label class="form-label">Enter Duration</label>
            <form:input path="duration" id="duration" class="form-control" />
        </div>

        <div class="mb-3">
            <label class="form-label">Enter Ratings</label>
            <form:input id="ratings" path="ratings" class="form-control" />
        </div>

  

<div align="center">
    <h2>ShowTime Entry</h2>
    <table>
        <tr>
            <th>Show Time</th>
            <th>Premier Seats</th>
            <th>Royal Seats</th>
        </tr>
        <c:forEach var="index" begin="1" end="6">
            <tr>
                <td>
                    <input list="shows" name="show${index}" class="form-control"/>
                    <datalist id="shows">
                        <c:forEach items="${showTimeList }" var="sid">
                            <option value="${sid}"></option>
                        </c:forEach>
                    </datalist>
                </td>
                <td><input type="text" name="premier${index}" value="---" class="form-control"/></td>
                <td><input type="text" name="royal${index}" value="---" class="form-control"/></td>
            </tr>
        </c:forEach>
    </table>
          <div class="d-grid gap-2">
            <button type="submit" class="btn btn-primary">Submit</button>
            <button type="reset" class="btn btn-secondary">Reset</button>
        </div>

    </form:form>
</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html> -->




<!DOCTYPE html>
<html lang="en">

<head> 
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie Entry Page</title>

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
            max-width: 1000px;
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

        .table th,
        .table td {
            vertical-align: middle;
            text-align: center;
            font-size: 1.1em;
            padding: 15px;
        }

        .table th {
            background-color: #ff5733;
            font-weight: bold;
            color: white;
        }

        .table td {
            background-color: #f9f9f9;
        }

        .table input {
            width: 100%;
            padding: 10px;
            border-radius: 8px;
            border: 1px solid #ced4da;
            background-color: #f1f3f5;
        }

        .table input:focus {
            background-color: #ffffff;
            border-color: #ff5733; /* Focus color */
        }

        .btn {
            padding: 10px 20px;
            font-size: 1.1em;
            border-radius: 8px;
            transition: all 0.3s ease;
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

        .btn-secondary {
            background-color: #6c757d;
            border: none;
            color: white;
        }

        .btn-secondary:hover {
            background-color: #5a6268;
            transform: translateY(-2px);
        }

        .d-grid {
            display: grid;
            gap: 20px;
        }

        .movie-container {
            background-color: #ffffff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.1);
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .container {
                padding: 20px;
            }

            h2 {
                font-size: 2rem;
            }

            .table th,
            .table td {
                font-size: 1em;
                padding: 10px;
            }
        }
    </style>
</head>

<body>

    <div class="container">
        <div class="movie-container">
            <h2 class="page-title">Movie Entry Page</h2> <!-- Enhanced title styling -->
            <form:form id="movieForm" action="/addMovie" method="post" modelAttribute="movieRecord" class="mt-4">

                <!-- Movie Entry Section -->
                <div class="mb-4">
                    <label class="form-label" for="movieId">Enter Movie Id</label>
                    <form:input path="movieId" id="movieId" class="form-control" placeholder="M1234" />
                </div>

                <div class="mb-4">
                    <label class="form-label" for="movieName">Enter Movie Name</label>
                    <form:input id="movieName" path="movieName" class="form-control" placeholder="Inception" />
                </div>

                <div class="mb-4">
                    <label class="form-label" for="language">Enter Movie Language</label>
                    <form:input path="language" id="language" class="form-control" placeholder="English" />
                </div>

                <div class="mb-4">
                    <label class="form-label" for="genre">Enter Genre</label>
                    <form:input path="genre" id="genre" class="form-control" placeholder="Action" />
                </div>
                
                <div class="mb-4">
                    <label class="form-label" for="posterUrl">Enter Poster URL</label>
                    <form:input id="posterUrl" path="posterUrl" class="form-control" placeholder="Link for Poster" />
                </div>

                <div class="mb-4">
                    <label class="form-label" for="duration">Enter Duration (in minutes)</label>
                    <form:input path="duration" id="duration" class="form-control" placeholder="120" />
                </div>

                <div class="mb-4">
                    <label class="form-label" for="ratings">Enter Ratings (0 to 10)</label>
                    <form:input id="ratings" path="ratings" class="form-control" placeholder="8.5" />
                </div>

                <!-- Showtime Entry Section -->
                <div class="mb-4">
                    <h2>ShowTime Entry</h2>
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>Show Time</th>
                                <th>Premier Seats</th>
                                <th>Royal Seats</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="index" begin="1" end="6">
                                <tr>
                                    <td>
                                        <input list="shows" name="show${index}" class="form-control" />
                                        <datalist id="shows">
                                            <c:forEach items="${showTimeList}" var="sid">
                                                <option value="${sid}"></option>
                                            </c:forEach>
                                        </datalist>
                                    </td>
                                    <td><input type="text" name="premier${index}" value="---" class="form-control" /></td>
                                    <td><input type="text" name="royal${index}" value="---" class="form-control" /></td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>

                <div class="d-grid gap-3">
                    <button type="submit" class="btn btn-primary">Submit</button>
                    <button type="reset" class="btn btn-secondary">Reset</button>
                </div>

            </form:form>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>




