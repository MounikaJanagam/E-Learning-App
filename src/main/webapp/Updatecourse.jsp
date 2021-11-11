<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@ page import="com.example.demo.model.Course" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Course</title>
</head>
<body>
<form action="addCourse" method="post">
course id:<input type="text" name="cid" value="${course.cid}" readonly="readonly" ><br>
course name:<input type="text" name="cname" value="${course.cname}"><br>
course tech:<input type="text" name="ctech" value="${course.ctech}"><br>
course duration:<input type="text" name="cduration" value="${course.cduration}"><br>
course description:<input type="text" name="cdescription" value="${course.cdescription}"><br>
course content:<input type="text" name="cdate" value="${course.ccontent}"><br>

<input type="submit" value="Update">
</form>

</body>
</html>