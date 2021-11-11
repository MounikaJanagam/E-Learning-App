<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
</head>
<body>
Home Page
<form action="getAllCourses">
<input type="submit" value="Show All Courses">
</form>

<form action="addCourse">

course id:<input type="text" name="cid"><br>
course name:<input type="text" name="cname"><br>
course tech:<input type="text" name="ctech"><br>
course duration:<input type="text" name="cduration"><br>
course description:<input type="text" name="cdescription"><br>
course date:<input type="text" name="cdate"><br>

<input type="submit" value="Add">
</form>

<form action="findByUid">

find by id:<input type="text" name="uid"><br>
<input type="submit" value="search">
</form>

<form action="findByEmail">

find by mail:<input type="text" name="email"><br>
<input type="submit" value="search">
</form>

</body>
</html>