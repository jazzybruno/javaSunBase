<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <title>Customer Details Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
        }

        .customer-container {
            display: flex;
            width: 60%; /* Set the width of the container to 80% of the page */
            margin: 50px auto;
            padding: 20px;
            background-color: #ffffff;
            border: 1px solid #ccc;
            border-radius: 5px;
            justify-content: space-between;
        }

        .header {
            text-align: center;
            font-size: 24px;
            margin-bottom: 20px;
            color: #333;
            width: 100%;
        }

        .column {
            flex: 0 0 calc(50% - 10px); /* Adjusted the width to 50% minus 10px for spacing */
            padding: 10px;
        }

        .column label {
            display: block;
            margin-bottom: 5px;
            color: #555;
        }

        .column input {
            width: 80%;
            padding: 10px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin-bottom: 10px;
        }

        .signup-button {
            text-align: center;
        }

        .signup-button button {
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            cursor: pointer;
            font-size: 16px;

        }

        .signup-button button:hover {
            background-color: #0056b3;
        }
    </style>
</head>

<body>
<div class="header">
    <h3>Customer Details</h3>
</div>
<c:if test="${addUserSuccess}">
    <div>Successfully added User: ${savedUser.first_name}</div>
</c:if>
<div class="customer-container">
<form:form action="${add_user_url}" method="post"  >
    <div class="column">
        <label for="first-name">First Name</label>
        <input type="text" id="first-name" placeholder="Enter your first name" required>

        <label for="street">Street</label>
        <input type="text" id="street" placeholder="Enter your street" required>

        <label for="city">City</label>
        <input type="text" id="city" placeholder="Enter your city" required>

        <label for="email">Email</label>
        <input type="email" id="email" placeholder="Enter your email" required>
    </div>

    <div class="column">
        <label for="last-name">Last Name</label>
        <input type="text" id="last-name" placeholder="Enter your last name" required>

        <label for="address">Address</label>
        <input type="text" id="address" placeholder="Enter your address" required>

        <label for="state">State</label>
        <input type="text" id="state" placeholder="Enter your state" required>

        <label for="phone">Phone</label>
        <input type="tel" id="phone" placeholder="Enter your phone number" required>
    </div>
</form:form>
</div>
<div class="signup-button">
    <button type="submit">Sign Up</button>
</div>
</body>

</html>
