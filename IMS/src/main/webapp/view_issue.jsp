<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="model.Issue" %>
<%@ page import="dao.DBContext" %>
<%@ page import="dao.IssueDAO" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
    <head>
        <!-- Meta Tags -->
        <meta charset="utf-8">
        <!-- Title -->
        <title>Issue Management System</title>       
         <!--  CSS -->
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

    </head>

    <body>
        <!-- Header Area -->
        <header class="header" st>           
            <div class="header-inner">
                <div class="container">
                    <div class="inner">
                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-12">
                                <!-- Start Logo -->
                                <div class="logo">
                                    <a href="user_student.html"><img src="CSS+JS/img/logo.png" alt="#" style="width: 120px; height: 50px;"></a>
                                </div>
                                <!-- End Logo -->
                            </div>
                            <div class="col-lg-7 col-md-9 col-12">
                                <!-- Main Menu -->
                                <div class="main-menu">
                                    <nav class="navigation">
                                        <ul class="nav menu">
                                            <li class="active"><a href="user_student.html">Home </a>
                                            </li>
                                        </ul>
                                    </nav>
                                </div>
                                <!--/ End Main Menu -->
                            </div>
                            <div class="col-lg-2 col-12">
                                <div class="get-quote">
                                    <a href="index.html" class="btn">Sign out</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>           
        </header>
        <!--/ End Header -->




        <!--/ Body -->        
        <div class="col-lg-5 col-12 mx-auto " style="padding-top: 20px">      
            <div class="main-sidebar">                
                <!-- Single Widget -->
                <div class="single-widget">                   

                    <div style="display: flex; justify-content: center;">
                        <!-- Button group -->
                        <button class="btn" style="margin-right: 10px;" onclick="openAddIssue()">Add New</button>
                        <button class="btn" style="margin-right: 10px;" onclick="importFromExcel()">Import from Excel</button>
                        <button class="btn" style="margin-right: 10px;" onclick="exportToExcel()">Export to Excel</button>
                        <button class="btn" style="margin-right: 10px;" onclick="syncToGitLab()">Sync to GitLab</button>

                        <script>
                            function openAddIssue() {
                                window.location.href = "add_issue.jsp";
                            }

                            function importFromExcel() {
                                window.location.href = "import_from_excel.jsp";
                            }

                            function exportToExcel() {
                                window.location.href = "export_to_excel.jsp";
                            }

                            function syncToGitLab() {
                                window.location.href = "sync_to_gitlab.jsp";
                            }
                        </script>
                    </div>

                    <!-- Table -->
                    <div class="site-content" style="margin-top: 30px">                             
                        <table border="1">
                            <thead>
                                <tr>
                                    <th>Issue ID</th>
                                    <th>Project ID</th>
                                    <th>Issue Type</th>
                                    <th>Issue Status</th>
                                    <th>Issue Description</th>
                                    <th>Created Date</th>
                                    <th>Updated Date</th>  
                                    <th>Action</th>  

                                    <!-- Add other table headers as needed -->
                                </tr>
                            </thead>
                            <tbody>
                                <%-- Iterate through the issues and print table rows --%>
                                <%
                                    IssueDAO issueDAO = new IssueDAO();
                                    // Retrieve all issues from the database using the DAO
                                    List<Issue> issues = issueDAO.getAllIssues();
                                    for (Issue issue : issues) {%>
                                <tr>
                                    <td><%= issue.getIssueId()%></td>
                                    <td><%= issue.getProjectId()%></td>
                                    <td><%= issue.getIssueType()%></td>
                                    <td><%= issue.getIssueStatus()%></td>
                                    <td><%= issue.getIssueDescription()%></td>
                                    <td><%= issue.getCreatedDate()%></td>
                                    <td><%= issue.getUpdatedDate()%></td>
                                    <td>
                                        <button class="action-button1">Edit</button>
                                        <button class="action-button2">View</button>
                                    </td>
                                    <!-- Add other table data as needed -->
                                </tr>
                                <% }%>
                            </tbody>
                        </table>
                    </div>
                    <!--/ Table -->       
                </div>





            </div>
            <!--/ End Single Widget -->
        </div>
    </div>
    <!--/ Body -->    

    <!-- Footer -->
    <footer id="footer" class="footer" style="padding-top: 100px">
        <!-- ... (your footer code) ... -->
        <div class="copyright">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-12">
                        <div class="copyright-content">
                            <p>© Copyright 2023 | All Rights Reserved by <a href="" target="_blank">Group 4 - SWD392</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer -->

    <script src="CSS+JS/js/jquery.min.js"></script>
    <script src="CSS+JS/js/jquery-migrate-3.0.0.js"></script>
    <script src="CSS+JS/js/jquery-ui.min.js"></script>
    <script src="CSS+JS/js/easing.js"></script>
    <script src="CSS+JS/js/colors.js"></script>
    <script src="CSS+JS/js/popper.min.js"></script>
    <script src="CSS+JS/js/bootstrap-datepicker.js"></script>
    <script src="CSS+JS/js/jquery.nav.js"></script>
    <script src="CSS+JS/js/slicknav.min.js"></script>
    <script src="CSS+JS/js/jquery.scrollUp.min.js"></script>
    <script src="CSS+JS/js/niceselect.js"></script>
    <script src="CSS+JS/js/tilt.jquery.min.js"></script>
    <script src="CSS+JS/js/owl-carousel.js"></script>
    <script src="CSS+JS/js/jquery.counterup.min.js"></script>
    <script src="CSS+JS/js/steller.js"></script>
    <script src="CSS+JS/js/wow.min.js"></script>
    <script src="CSS+JS/js/jquery.magnific-popup.min.js"></script>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/waypoints/2.0.3/waypoints.min.js"></script>
    <script src="CSS+JS/js/bootstrap.min.js"></script>
    <script src="CSS+JS/js/main.js"></script>

    <style>
        /* Style for the buttons */
        .action-button1 {
            background-color: #4CAF50; /* Green background color for Edit button */
            color: white; /* White text color */
            border: none; /* Remove border */
            padding: 5px 10px; /* Add some padding */
            cursor: pointer; /* Add a pointer cursor on hover */
            margin-right: 5px; /* Add some spacing between buttons */
            width: 80px; /* Set the width of both buttons */
            height: 30px; /* Set the height of both buttons */
        }
        .action-button2 {
            background-color: #FF7F50; /* Green background color for View button */
            color: white; /* White text color */
            border: none; /* Remove border */
            padding: 5px 10px; /* Add some padding */
            cursor: pointer; /* Add a pointer cursor on hover */
            margin-right: 5px; /* Add some spacing between buttons */
            width: 80px; /* Set the width of both buttons */
            height: 30px; /* Set the height of both buttons */
        }
    </style>
    <style>
        .pagination {
            margin-top: 20px;
            display: flex;
            justify-content: center;
        }

        .pagination a {
            margin: 0 5px;
            padding: 6px 12px;
            border: 1px solid #ddd;
            color: #333;
            text-decoration: none;
            background-color: #fff;
            transition: background-color 0.3s ease;

            justify-content: center;
        }

        .pagination a:hover {
            background-color: #f4f4f4;
            justify-content: center;
        }

        .pagination .active {
            background-color: #007bff;
            justify-content: center;
            color: #fff;
        }
    </style>
    <style>
        /* Table styles */
        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            padding: 8px;
            border: 1px solid #ddd;
            align-content: center;
        }

        th {
            background-color: #f2f2f2;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
    </style>
    <script>
    // Get all the table rows
    const tableRows = document.querySelectorAll('table tr');

    // Set the number of rows to display per page
    const rowsPerPage = 10;

    // Calculate the total number of pages
    const totalPages = Math.ceil(tableRows.length / rowsPerPage);

    // Display the table rows for the specified page
    function showPage(page) {
        const startIndex = (page - 1) * rowsPerPage;
        const endIndex = startIndex + rowsPerPage;

        // Hide all table rows
        tableRows.forEach((row, index) => {
            if (index >= startIndex && index < endIndex) {
                row.style.display = 'table-row'; // Display the row
            } else {
                row.style.display = 'none'; // Hide the row
            }
        });
    }

    // Create pagination links
    function createPaginationLinks() {
        const pagination = document.createElement('div');
        pagination.className = 'pagination';

        for (let i = 1; i <= totalPages; i++) {
            const link = document.createElement('a');
            link.href = '#';
            link.innerText = i;

            // Set the active class for the current page
            if (i === 1) {
                link.className = 'active';
            }

            // Add an event listener to each pagination link
            link.addEventListener('click', function () {
                // Remove the active class from all links
                pagination.querySelectorAll('a').forEach((a) => {
                    a.classList.remove('active');
                });

                // Set the active class for the clicked link
                this.classList.add('active');

                // Show the corresponding page
                showPage(i);
            });

            pagination.appendChild(link);
        }

        return pagination;
    }

    // Show the first page initially
    showPage(1);

    // Create pagination links and append them to the document
    const paginationContainer = document.querySelector('.site-content');
    const paginationLinks = createPaginationLinks();
    paginationContainer.appendChild(paginationLinks);
    </script>
    <!--  CSS -->
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
</body>
</html>
