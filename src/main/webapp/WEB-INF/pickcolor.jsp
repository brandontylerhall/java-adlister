<%--
  Created by IntelliJ IDEA.
  User: massb
  Date: 2/3/2023
  Time: 4:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form onsubmit="changeBackground(); return false;">
    <label for="color">Select your favorite color:</label>
    <select id="color" name="color">
        <option value="red">Red</option>
        <option value="green">Green</option>
        <option value="blue">Blue</option>
        <option value="purple">Purple</option>
        <option value="pink">Pink</option>
    </select>
    <br><br>
    <input type="submit" value="Submit">
</form>

<script>
    function changeBackground() {
        document.body.style.backgroundColor = document.getElementById("color").value;
    }
</script>
</body>
</html>
