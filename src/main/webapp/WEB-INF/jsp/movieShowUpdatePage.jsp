<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Movie Show Time</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background-color: #f5f5f5;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
        }

        h1, h2, h3 {
            color: #ff5733;
            text-align: center;
        }

        .container {
            max-width: 1000px;
            margin-top: 50px;
            background-color: #ffffff;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.1);
        }

        table {
            width: 100%;
            margin-top: 20px;
            border-collapse: collapse;
        }

        th, td {
            padding: 15px;
            text-align: center;
            vertical-align: middle;
            border: 1px solid #ced4da;
        }

        th {
            background-color: #ff5733;
            color: white;
            font-weight: bold;
        }

        td {
            background-color: #f9f9f9;
        }

        .form-control {
            border-radius: 8px;
            border: 1px solid #ced4da;
            padding: 12px;
            background-color: #f9f9f9;
        }

        .form-control:focus {
            border-color: #ff5733;
            box-shadow: 0 0 5px rgba(255, 87, 51, 0.25);
        }

        .btn-primary {
            background-color: #ff5733;
            border: none;
            color: white;
        }

        .btn-primary:hover {
            background-color: #e64a19;
        }

        .btn-secondary {
            background-color: #6c757d;
            border: none;
            color: white;
        }

        .btn-secondary:hover {
            background-color: #5a6268;
        }

        .d-grid {
            margin-top: 20px;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .container {
                padding: 20px;
            }

            h1, h2, h3 {
                font-size: 1.5rem;
            }

            th, td {
                font-size: 0.9rem;
                padding: 10px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Update Show Time</h2>

        <form action="/updateMovieShow" method="post">
            <input type="hidden" name="movieId" value="${movie.movieId}"/>

            <table class="table">
                <tr>
                    <td><strong>The Movie ID:</strong></td>
                    <td>${movie.movieId}</td>
                </tr>
                <tr>
                    <td><strong>Movie Name:</strong></td>
                    <td>${movie.movieName}</td>
                </tr>
                <tr>
                    <td><strong>Movie Language:</strong></td>
                    <td>${movie.language}</td>
                </tr>
                <tr>
                    <td><strong>Movie Genre:</strong></td>
                    <td>${movie.genre}</td>
                </tr>
                <tr>
                    <td><strong>Movie Duration:</strong></td>
                    <td>${movie.duration}</td>
                </tr>
                <tr>
                    <td><strong>Movie Ratings:</strong></td>
                    <td>${movie.ratings}</td>
                </tr>
            </table>

            <h3 class="mt-4">Show Time Update</h3>

            <table class="table">
                <tr>
                    <th>Show Time ID</th>
                    <th>Premier Seats</th>
                    <th>Royal Seats</th>
                </tr>
                <c:forEach var="index" begin="1" end="6">
                    <tr>
                        <td>
                            <input list="shows" name="show${index}" class="form-control"/>
                            <datalist id="shows">
                                <c:forEach items="${showTimeList}" var="sid">
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
        </form>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
