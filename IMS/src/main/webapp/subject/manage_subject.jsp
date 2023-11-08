<%-- 
    Document   : manage_subject
    Created on : 10 Oct 2023, 16:25:32
    Author     : trung
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="model.Subject" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>

            .p-row{
                background-color: #C8C8C8;
            }
            table{
                margin-top: 25px;
                width: 100%;
            }

            td,th{
                padding: 10px;
                border: solid 1px black;
            }

            .btna{
                width: 200px;
                height: 50px;

            }
            .div1{
                text-align: end;
                margin: 0 100px;
            }
            .btne{
                width: 100px;
                height: 35px;
            }
            td{
                text-align: center;
            }
        </style>
    </head>
    <body>
        <h1>Manage subject</h1>

        <div class="div1">

            <input class="btna" id="btnAdd" type="button" name="btnAdds" value="Add New Subject" >

        </div>

        <table>

            <tbody>
                <tr class="p-row">
                    <th scope="col">Subject ID</th>
                    <th scope="col">Subject Code</th>
                    <th scope="col">Subject Name</th>
                    <th scope="col">Description</th>
                    <th scope="col">Gitlab Config</th>
                    <th scope="col">Manage Subject</th>
                </tr>
                <tr>
                    <c:forEach items="${listS}" var="item">

                        <td>${item.subjectId}</td>                   
                        <td>${item.subjectCode}</td>
                        <td>${item.subjectName}</td>
                        <td>${item.description}</td>
                        <td>${item.gitlabConfig}</td>

                        <td class="r-edit">
                            <input class="btne" id="btnEdit" type="button" name="btnEdits" value="Edit">
                        </td>

                    </c:forEach>
                </tr>
                <tr>
                    <td>${item.subjectId}</td>   


                    <td>${item.getSubjectCode()}</td>
                    <td>${item.getSubjectName()}</td>
                    <td>${item.getDescription()}</td>
                    <td>${item.getGitlabConfig()}</td>

                    <td class="r-edit">
                        <input class="btne" id="btnEdit" type="button" name="btnEdits" value="Edit">
                    </td>

                </tr>

                <tr>
                    <td>${item.subjectId}</td>                   
                    <td>${item.subjectCode}</td>
                    <td>${item.subjectName}</td>
                    <td>${item.description}</td>
                    <td>${item.gitlabConfig}</td>

                    <td class="r-edit">
                        <input class="btne" id="btnEdit" type="button" name="btnEdits" value="Edit">
                    </td>
                </tr>


            </tbody>
        </table>

    </body>
    <script>
        document.getElementById("btnEdit").onclick = function () {
            // Redirect to the Reset Password 
            window.location.href = "/IMS/EditSubjectServlet";
        };

        document.getElementById("btnAdd").onclick = function () {
            window.location.href = "/IMS/AddSubjectServlet";
        };
        document.getElementById("btnAdd").onclick = function () {
            // Redirect to the Reset Password 
            window.location.href = "/IMS/AddSubjectServlet";
        };
    </script>                   
</html>
