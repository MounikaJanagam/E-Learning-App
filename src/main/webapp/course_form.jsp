<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="css/course_form.css">
</head>
<body>

<div class="form">
  <form action="addCourse" method="post">
      <div class="title">Add Course</div>
      <div class="input-container ic1">
        <input id="cname" name="cname" class="input" type="text"  placeholder=" " required ="true" >
        <div class="cut"></div>
        <label for="cname" class="placeholder" >Course name</label>
      </div>
      <div class="input-container ic2">
        <input id="ctech" name="ctech" class="input" type="text" placeholder=" " required ="true">
        <div class="cut"></div>
        <label for="ctech" class="placeholder">Course Tech</label>
      </div>
      <div class="input-container ic2">
        <input id="cduration"  name="cduration" class="input" type="number" placeholder=" " required ="true">
        <div class="cut"></div>
        <label for="cduration" class="placeholder">Course Duration</label>
      </div>
      <div class="input-container ic2">
        <input id="cdescription" name="cdescription" class="input" type="textarea" placeholder=" "  required ="true">
        
        <div class="cut"></div>
        <label for="cdescription" class="placeholder">Course Description</label>
      </div>
      <div class="input-container ic2">
        <input id="ccontent" name="ccontent" class="input" type="text" placeholder=" " required ="true">
        <div class="cut cut-short"></div>
        <label for="ccontent" class="placeholder">Course content </label>
      </div>
      <button  type="submit" class="submit">submit</button>
    </form>
 </div>
    <script>function a()
    {
      window.open("courses.html");
    }
      </script>
</body>
</html>
