<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="dao.IssueDAO" %>
<%@ page import="model.Issue" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Issue Details</title>
    <!-- Add your CSS styles here, if needed -->
     <link href="https://fonts.googleapis.com/css?family=Poppins:200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="CSS+JS/css/bootstrap.min.css">
        <link rel="stylesheet" href="CSS+JS/css/nice-select.css">
        <link rel="stylesheet" href="CSS+JS/css/font-awesome.min.css">
        <link rel="stylesheet" href="CSS+JS/css/icofont.css">
        <link rel="stylesheet" href="CSS+JS/css/slicknav.min.css">
        <link rel="stylesheet" href="CSS+JS/css/owl-carousel.css">
        <link rel="stylesheet" href="CSS+JS/css/datepicker.css">
        <link rel="stylesheet" href="CSS+JS/css/animate.min.css">
        <link rel="stylesheet" href="CSS+JS/css/magnific-popup.css">      
        <link rel="stylesheet" href="CSS+JS/css/normalize.css">
        <link rel="stylesheet" href="CSS+JS/css/style.css">
        <link rel="stylesheet" href="CSS+JS/css/responsive.css">        
        <link rel="stylesheet" href="CSS+JS/css/customcss.css">
</head>
<body>
    <h1>Issue Details</h1>

    <%-- Retrieve the issueId parameter from the URL --%>
    <% String issueIdParam = request.getParameter("issueId");
       if (issueIdParam != null) {
           int issueId = Integer.parseInt(issueIdParam);
           IssueDAO issueDAO = new IssueDAO();
           Issue issue = issueDAO.getIssueById(issueId); // Implement this method in your DAO
           if (issue != null) {
    %>
    <table border="1">
        <tr>
            <th>Issue ID</th>
            <th>Project ID</th>
            <th>Issue Type</th>
            <th>Issue Status</th>
            <th>Issue Description</th>
            <th>Created Date</th>
            <th>Updated Date</th>
        </tr>
        <tr>
            <td><%= issue.getIssueId() %></td>
            <td><%= issue.getProjectId() %></td>
            <td><%= issue.getIssueType() %></td>
            <td><%= issue.getIssueStatus() %></td>
            <td><%= issue.getIssueDescription() %></td>
            <td><%= issue.getCreatedDate() %></td>
            <td><%= issue.getUpdatedDate() %></td>
        </tr>
    </table>
    <% 
           } else {
               // Handle the case where the issue with the given ID is not found
               out.println("<p>Issue not found</p>");
           }
       } else {
           // Handle the case where issueId parameter is not provided
           out.println("<p>Issue ID not provided</p>");
       }
    %>

    <!-- Add any additional content or links as needed -->

</body>
</html>
