<%-- 
    Document   : view_project_dashboard
    Created on : 9 Oct 2023, 21:11:01
    Author     : trung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Project Dashboard Fall 2023</title>
    <style>
        /* Add your CSS styles here */
        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            border: 1px solid #ccc;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <h1>Project Dashboard</h1>
    <select id="combobox1">
    <option value="option1">Subject ID</option>
    <option value="option2">Option 2</option>
    <option value="option3">Option 3</option>
</select>
    <br>
    <br>

<select id="combobox2">
    <option value="option1">From Date</option>
    <option value="option2">Option 2</option>
    <option value="option3">Option 3</option>
</select>

<select id="combobox3">
    <option value="option1">To Date</option>
    <option value="option2">Option 2</option>
    <option value="option3">Option 3</option>
</select>
    <br>
    <br>
 <h5>Project Commit by Student</h5>
 
 <select id="combobox2">
    <option value="option1">From Date</option>
    <option value="option2">Option 2</option>
    <option value="option3">Option 3</option>
</select>

<select id="combobox3">
    <option value="option1">To Date</option>
    <option value="option2">Option 2</option>
    <option value="option3">Option 3</option>
</select>
  <br>
    <br>
 
 
 <table>
        <thead>
            <tr>
                <th>Column 1</th>
                <th>Column 2</th>
                <th>Column 3</th>
                <th>Column 4</th>
                <th>Column 5</th>
                <th>Column 6</th>
                <th>Column 7</th>
                <th>Column 8</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Data 1</td>
                <td>Data 2</td>
                <td>Data 3</td>
                <td>Data 4</td>
                <td>Data 5</td>
                <td>Data 6</td>
                <td>Data 7</td>
                <td>Data 8</td>
            </tr>
            <!-- Add more rows with data as needed -->
        </tbody>
    </table>

</body>
</html>