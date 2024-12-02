<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--  <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  margin :0;
  padding : 0;
}
 
.navbar {
  overflow: hidden;
  background-color: #333;
}
.navbar a {
  float: left;
  font-size: 16px;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}
 
.dropdown {
  float: left;
  overflow: hidden;
}
 
.dropdown .dropbtn {
  font-size: 16px;  
  border: none;
  outline: none;
  color: white;
  padding: 14px 16px;
  background-color: inherit;
  font-family: inherit;
  margin: 0;
}
 
.navbar a:hover, .dropdown:hover .dropbtn {
  background-color: red;
}
.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}
 
.dropdown-content a {
  float: none;
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}
 
.dropdown-content a:hover {
  background-color: #ddd;
}
 
.dropdown:hover .dropdown-content {
  display: block;
}
</style>
</head>
<body>

<div align="center">

<div class="navbar">
<div class="dropdown">
<button class="dropbtn">Movie Management
</button>
<div class="dropdown-content">
<a href="/">Movie Addition</a>
<a href="/">Movie Update</a>
<a href="/">Movie Deletion</a>
<a href="/">Movie Reports</a>
</div>
</div>
<div class="dropdown">
<button class="dropbtn">Theater Management
</button>
<div class="dropdown-content">
<a href="/">Theater Addition</a>
<a href="/">Theater Update</a>
<a href="/">Theater Deletion</a>
<a href="/">Theater Reports</a>
</div>
</div>
<div class="dropdown">
<button class="dropbtn">Show time Management
</button>
<div class="dropdown-content">
<a href="/">Show time Addition</a>
<a href="/">Show time Update</a>
<a href="/">Show time Deletion</a>
<a href="/">Show time Report</a>
</div>
</div>
<div class="dropdown">
<button class="dropbtn">Booking Management
</button>
<div class="dropdown-content">
<a href="/">New Booking</a>
<a href="/">Booking Update</a>
<a href="/">Cancellation</a>
<a href="/">Booking Report</a>
</div>
</div>
<a href="/logout">Logout</a>
</div>
<h1 style="font-family:Monotype Corsiva">Welcome To Online Movie Booking System</h1>
</div>
	
</body>
</html> -->





<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Online Movie Booking System</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
    body {
        font-family: 'Arial', sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f4f4f4;
        color: #333;
    }

    .navbar {
        display: flex;
        justify-content: space-between;
        align-items: center;
        background-color: #333;
        padding: 10px 20px;
        box-shadow: 0 4px 8px rgba(0,0,0,0.1);
    }

    .navbar a {
        font-size: 16px;
        color: white;
        text-decoration: none;
        padding: 10px 20px;
        transition: background-color 0.3s, border-bottom 0.3s;
    }

    .navbar a:hover, .dropdown:hover .dropbtn {
        background-color: #DAA520;
        border-radius: 4px;
        border-bottom: 3px solid white;
    }

    .dropdown {
        position: relative;
        display: inline-block;
    }

    .dropdown .dropbtn {
        background-color: inherit;
        color: white;
        font-size: 16px;
        border: none;
        cursor: pointer;
        padding: 10px 20px;
        transition: background-color 0.3s, border-bottom 0.3s;
    }

    .dropdown-content {
        display: none;
        position: absolute;
        background-color: #f9f9f9;
        min-width: 180px;
        box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        z-index: 1;
        border-radius: 4px;
        overflow: hidden;
    }

    .dropdown-content a {
        color: #333;
        padding: 12px 16px;
        text-decoration: none;
        display: block;
        transition: background-color 0.2s;
    }

    .dropdown-content a:hover {
        background-color: #ddd;
    }

    .dropdown:hover .dropdown-content {
        display: block;
    }

    h1 {
        font-family: 'Monotype Corsiva', cursive;
        color: #DAA520;
        text-align: center;
        margin-top: 30px;
        font-size: 3em;
    }

    /* Responsive Navbar */
    @media (max-width: 768px) {
        .navbar {
            flex-direction: column;
            align-items: flex-start;
        }

        .dropdown, .navbar a {
            width: 100%;
            text-align: left;
        }
    }
</style>
</head>
<body>

<div align="center">

<div class="navbar">
    <div class="dropdown">
        <button class="dropbtn">Movie Management</button>
        <div class="dropdown-content">
            <a href="/addMovie">Movie Addition</a>
            <a href="/movieReport">Movie Reports</a>
            <a href="/movieReportLanguage">Movies by Language</a>
        </div>
    </div>

    

    <div class="dropdown">
        <button class="dropbtn">Show Time Management</button>
        <div class="dropdown-content">
            <a href="/addShowTime">Show Time Addition</a>
            <a href="/showTimeReport">Show Time Report</a>
        </div>
    </div>

    <div class="dropdown">
        <button class="dropbtn">Booking Management</button>
        <div class="dropdown-content">
            <a href="/movieBookings">Booking Report</a>
        </div>
    </div>

    <a href="/logout">Logout</a>
</div>

<h1>Welcome To Online Movie Booking System</h1>

</div>

</body>
</html> 



