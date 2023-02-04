<%--
  Created by IntelliJ IDEA.
  User: massb
  Date: 2/3/2023
  Time: 3:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Pizza</title>
</head>
<body>

<div class="container">
    <div class="row p- m-1">
        <form method="POST" action="/pizza-order">
            <label for="crust">Crust Type:</label>
            <select id="crust" name="crust">
                <option value="thin">Thin</option>
                <option value="thick">Thick</option>
                <option value="stuffed">Stuffed</option>
            </select>
            <br><br>
            <label for="sauce">Sauce Type:</label>
            <select id="sauce" name="sauce">
                <option value="tomato">Tomato</option>
                <option value="bbq">BBQ</option>
                <option value="alfredo">Alfredo</option>
            </select>
            <br><br>
            <label for="size">Size:</label>
            <select id="size" name="size">
                <option value="small">Small</option>
                <option value="medium">Medium</option>
                <option value="large">Large</option>
            </select>
            <br><br>
            <%--why?--%>
            <label for="toppings">Toppings:</label><br>
            <input type="checkbox" id="pepperoni" name="toppings" value="pepperoni">
            <label for="pepperoni">Pepperoni</label><br>
            <input type="checkbox" id="mushroom" name="toppings" value="mushroom">
            <label for="mushroom">Mushroom</label><br>
            <input type="checkbox" id="olives" name="toppings" value="olives">
            <label for="olives">Olives</label><br>
            <br>
            <label for="address">Delivery Address:</label>
            <input type="text" id="address" name="address" required>
            <br><br>
            <button type="submit">Submit Order!</button>
        </form>

    </div>
</div>
</body>
</html>
