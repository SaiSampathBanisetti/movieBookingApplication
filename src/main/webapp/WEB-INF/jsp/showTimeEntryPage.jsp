<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!-- <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>show Time Entry Page</p>
	<div align="center">
		<h1>Show Time Entry Page</h1>
		<h2>
			<form:form action = "/addShowTime" method ="post" modelAttribute = "ShowTimeRecord">
				<form:hidden path="showTimeId"/>
				<form:hidden path = "showTimeRoyalPrice"/>
				Enter Show Time Name : <form:input path="showTimeName"/>
				<br/><br>
				Enter Show Time Premiere Price : <form:input path="showTimePremierePrice"/>
				<br/><br>
				<button type = "submit">Submit</button>
				<button type = "reset">Reset</button>
			</form:form>
		</h2>
	</div>
</body>
</html> -->





<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Movie Booking System - Add Show Time</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f9;
        color: #333;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }
    .container {
        text-align: center;
        width: 100%;
    }
    .form-container {
        background: #ffffff;
        padding: 20px 40px;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        max-width: 400px;
        margin: auto;
    }
    h1, h2 {
        color: #555;
    }
    label {
        display: block;
        margin-bottom: 5px;
        font-weight: bold;
    }
    .input-field {
        width: 100%;
        padding: 8px;
        margin-bottom: 15px;
        border: 1px solid #ddd;
        border-radius: 4px;
    }
    .button-group {
        display: flex;
        justify-content: space-between;
    }
    button {
        background-color: #4CAF50;
        color: white;
        padding: 10px 15px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }
    button[type="reset"] {
        background-color: #f44336;
    }
    button:hover {
        opacity: 0.9;
    }
</style>
</head>
<body>
    <div class="container">
        <div class="form-container">
            <h1>Add Show Time</h1>
            <h2>Please Enter Show Time Details</h2>
            <form:form action="/addShowTime" method="post" modelAttribute="ShowTimeRecord">
                <form:hidden path="showTimeId"/>
                <form:hidden path="showTimeRoyalPrice"/>

                <label for="showTimeName">Show Time Name:</label>
                <form:input path="showTimeName" cssClass="input-field" id="showTimeName"/>
                
                <label for="showTimePremierePrice">Show Time Premiere Price:</label>
                <form:input path="showTimePremierePrice" cssClass="input-field" id="showTimePremierePrice"/>

                <div class="button-group">
                    <button type="submit">Submit</button>
                    <button type="reset">Reset</button>
                </div>
            </form:form>
        </div>
    </div>
</body>
</html>





