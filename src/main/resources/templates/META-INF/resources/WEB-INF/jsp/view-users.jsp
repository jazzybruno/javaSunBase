<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Customer List</title>
    <link rel="stylesheet" href="path/to/feather.css"> <!-- Replace "path/to" with the actual path to your feather.css file -->
    <script src="https://unpkg.com/feather-icons"></script>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }

        h1 {
            text-align: center;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            border: none;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: transparent;
        }

        thead{
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
        }

        .action-icons {
            font-size: 18px;
            color: #007bff;
            cursor: pointer;
            margin-right: 10px;
        }

        .action-icons.delete {
            color: #ff0000;
        }

    </style>
</head>
<body>
<h1>Customer List</h1>
<table>
    <thead>
    <tr>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Address</th>
        <th>City</th>
        <th>State</th>
        <th>Email</th>
        <th>Phone</th>
        <th>Action</th>
    </tr>
    </thead>
    <tbody>
    <%-- Example customer data, replace with actual data from your Java code --%>
    <%
        // Example customer data, replace with actual data from your Java code
        String[][] customers = {
                {"John", "Doe", "123 St", "Town", "NY", "john@example.com", "(555) 555-1234"},
                {"Jane", "Smith", "456 Ave", "City", "CA", "jane@example.com", "(555) 555-5678"}
        };

        for (String[] customer : customers) {
    %>
    <tr>
        <td><%= customer[0] %></td>
        <td><%= customer[1] %></td>
        <td><%= customer[2] %></td>
        <td><%= customer[3] %></td>
        <td><%= customer[4] %></td>
        <td><%= customer[5] %></td>
        <td><%= customer[6] %></td>
        <td>
            <a href="[delete-url]" class="action-icons delete" title="Delete User"><i data-feather="x-circle"></i></a>
            <a href="[update-url]" class="action-icons" title="Update User"><i data-feather="edit-2"></i></a>
        </td>
    </tr>
    <% } %>
    </tbody>
</table>
<script>
    feather.replace(); // This will replace the data-feather attributes with SVG icons
</script>
</body>
</html>
