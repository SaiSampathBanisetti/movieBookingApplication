<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>




<!DOCTYPE html>
<html>
<head>
    <title>Movies in ${selectedLanguage}</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            color: #333;
            padding: 20px;
            margin: 0;
        }
        .movie-container {
            width: 90%;
            max-width: 1200px;
            margin: auto;
            text-align: center;
        }
        h2 {
            font-size: 2.5em;
            color: #ff5733;
            margin-bottom: 20px;
            text-decoration: underline;
            background: linear-gradient(135deg, #ff5733, #e01e37);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }
        .movie-list {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 20px;
        }
        .movie-item {
            background-color: #fff;
            border-radius: 8px;
            padding: 20px;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.3);
            text-align: left;
            display: flex;
            flex-direction: column;
            align-items: center;
            margin-bottom: 30px;
        }
        .movie-image {
            width: 100%;
            height: auto;
            max-height: 350px;
            object-fit: cover;
            border-radius: 8px;
            margin-bottom: 15px;
        }
        .movie-name {
            font-size: 1.5em;
            font-weight: bold;
            color: #ff5733;
            margin-bottom: 10px;
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
    </style>
</head>
<body>

<div class="movie-container">
    <h2>Movies in ${selectedLanguage}</h2>

    <div class="movie-list">
        <c:forEach var="movie" items="${movieList}">
            <div class="movie-item">
                
                <img src="${movie.posterUrl}" alt="${movie.movieName}" class="movie-image" />
                
                <div class="movie-name">${movie.movieName}</div>
                
                <div class="show-info">
                    <c:forEach var="movieShowDTO" items="${movieMap[movie.movieId]}">
                        <p><strong>Showtime:</strong> ${movieShowDTO.showTimeName}</p>
                        <p><strong>Royal Seats:</strong> ${movieShowDTO.royalSeatNumber} (Booked: ${movieShowDTO.royalBooked})</p>
                        <p><strong>Premier Seats:</strong> ${movieShowDTO.premierSeatNumber} (Booked: ${movieShowDTO.premierBooked})</p>
                        <hr style="border: 0.5px solid #ddd;"/>
                    </c:forEach>
                </div>
            </div>
        </c:forEach>
    </div>
</div>

</body>
</html> 







    