<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!--  <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div align="center">
<h1><u>Movie Report</u></h1>
<br/>
<h3>
<table border="2">
<tr>
<th>Movie Number</th>
<th>Movie Name</th>
<th>Language</th>
<th>Genere</th>
<th>Duration</th>
<th>Rating</th>
<th>Show Details</th>
<th>Deletion</th>
<th>Updation</th>
</tr>
<c:forEach items="${movieList}" var="movie" >
<tr>
<td><img src="${movie.posterUrl}" alt="${movie.movieName}" class="movie-image" /></td>
<td>${movie.movieId}</td>
<td>${movie.movieName}</td>
<td>${movie.language}</td>
<td>${movie.genre}</td>
<td>${movie.duration}</td>
<td>${movie.ratings}</td>
<td>
<c:forEach items="${movieMap}" var="showTime">
<c:if test="${movie.movieId==showTime.key}">  
<c:forEach items="${showTime.value}" var="show" >
<table>
<tr> 
<td>Show Time Name:</td>
<td>${show.showTimeName}</td>
</tr>
<tr> 
<td>Royal Seat:</td>
<td>${show.royalSeatNumber}</td>
</tr>
<tr> 
<td>Royal Booked:</td>
<td>${show.royalBooked}</td>
</tr>
<tr> 
<td>Premier Seat:</td>
<td>${show.premierSeatNumber}</td>
</tr>
<tr> 
<td>Premier Booked:</td>
<td>${show.premierBooked}</td>
</tr>
</table>
    ----------------------------------
</c:forEach>
</c:if>  
</c:forEach>
</td>
<td><a href="/movieDeletion/${movie.movieId}">Movie Deletion</a></td>
<td><a href="/movieUpdate/${movie.movieId}">Movie Update</a></td>
</tr>
</c:forEach>
</table>
</h3>
<br/>
<h3><a href="/index">Return</a></h3>
</div>
</body>
</html> -->




<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Movie Report</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f5f5f5;
        color: #333;
        margin: 0;
        padding: 0;
    }
    .container {
        width: 90%;
        max-width: 1200px;
        margin: auto;
        padding: 20px;
        text-align: center;
    }
    h1 {
        font-size: 2.5em;
        color: #ff5733;
        margin-bottom: 20px;
        text-decoration: underline;
        background: linear-gradient(135deg, #ff5733, #e01e37);
    	-webkit-background-clip: text;
    	-webkit-text-fill-color: transparent;
    }
    .movie-grid {
        display: flex;
        flex-wrap: wrap;
        gap: 20px;
        justify-content: center;
    }
    .movie-card {
        background-color: #fff;
        width: 350px; /* Increased width for better presentation */
        padding: 20px;
        border-radius: 8px;
        /* box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); */
        display: flex;
        flex-direction: column;
        align-items: center;
        text-align: left;
        box-shadow: 0 6px 12px rgba(0, 0, 0, 0.3);
        margin-bottom: 30px; /* Increased space between movie cards */
    }
    .movie-image {
        width: 100%;
        height: auto;
        max-height: 350px; /* Increased height for better visibility */
        object-fit: cover;
        border-radius: 8px;
        margin-bottom: 15px;
    }
    .movie-header {
        font-size: 1.2em;
        font-weight: bold;
        color: #ff5733;
        margin-bottom: 10px;
        text-align: center;
    }
    .movie-details p {
        margin: 5px 0;
    }
    .show-info {
        background-color: #f9f9f9;
        padding: 10px;
        border-radius: 4px;
        margin-top: 10px;
    }
    .action-buttons {
        display: flex;
        flex-wrap: wrap;
        gap: 10px;
        justify-content: center;
        margin-top: 15px;
    }
    .action-btn {
        flex: 1 1 calc(33% - 10px); /* Ensures buttons align neatly in a row */
        padding: 10px 15px;
        border: none;
        border-radius: 4px;
        color: #fff;
        cursor: pointer;
        font-size: 0.9em;
        text-decoration: none;
        text-align: center;
    }
    .delete-btn {
        background-color: #e74c3c;
    }
    .update-btn {
        background-color: #3498db;
    }
    .action-btn:hover {
        opacity: 0.9;
    }
    .return-btn {
        display: inline-block;
        margin-top: 20px;
        font-size: 1.1em;
        text-decoration: none;
        color: #3498db;
        border: 1px solid #3498db;
        padding: 10px 20px;
        border-radius: 4px;
    }
    .return-btn:hover {
        background-color: #3498db;
        color: #fff;
    }
</style>
</head>
<body>

<div class="container">
    <h1>Movie Report</h1>
    
    <div class="movie-grid">
        <c:forEach items="${movieList}" var="movie">
            <div class="movie-card">
                <!-- Movie Image -->
                <img src="${movie.posterUrl}" alt="${movie.movieName}" class="movie-image" />
                <!-- Movie Details -->
                <div class="movie-header">${movie.movieName}</div>
                <div class="movie-details">
                    <p><strong>Language:</strong> ${movie.language}</p>
                    <p><strong>Genre:</strong> ${movie.genre}</p>
                    <p><strong>Duration:</strong> ${movie.duration} mins</p>
                    <p><strong>Rating:</strong> ${movie.ratings}</p>
                </div>
                <!-- Show Info -->
                <div class="show-info">
                    <c:forEach items="${movieMap}" var="showTime">
                        <c:if test="${movie.movieId == showTime.key}">
                            <c:forEach items="${showTime.value}" var="show">
                                <p><strong>Show Time:</strong> ${show.showTimeName}</p>
                                <p><strong>Royal Seats:</strong> ${show.royalSeatNumber}</p>
                                <p><strong>Royal Booked:</strong> ${show.royalBooked}</p>
                                <p><strong>Premier Seats:</strong> ${show.premierSeatNumber}</p>
                                <p><strong>Premier Booked:</strong> ${show.premierBooked}</p>
                                <hr style="border: 0.5px solid #ddd;"/>
                            </c:forEach>
                        </c:if>
                    </c:forEach>
                </div>
                <!-- Action Buttons -->
                <div class="action-buttons">
                    <a href="/movieDeletion/${movie.movieId}" class="action-btn delete-btn">Delete</a>
                    <a href="/updateMovie/${movie.movieId}" class="action-btn update-btn">Update Movie</a>
                    <a href="/updateMovieShow/${movie.movieId}" target="_blank" class="action-btn update-btn">Update Show Time</a>
                </div>
            </div>
        </c:forEach>
    </div>

    <a href="/index" class="return-btn">Return</a>
</div>

</body>
</html>

