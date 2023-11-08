<%-- 
    Document   : edit_subjectDetails
    Created on : Oct 29, 2023, 6:01:07 PM
    Author     : hello
--%>

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
        <h1>Hello World!</h1>
        
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
                    <td>1</td>
                    <td>PRJ301</td>
                    <td>Java Web</td>
                    <td>Description subject 1</td>
                    <td>
                        Gitlab config 1
<!--                        <span disabled="disabled">
                            <input id="ctl00_mainContent_gvRoom_ctl02_ctl00" type="checkbox" name="ctl00$mainContent$gvRoom$ctl02$ctl00" checked="checked" disabled="disabled">
                        </span>-->
                    </td>
                    <td class="r-edit">
                        <input class="btne" type="button" name="btnEdit" value="Edit">
                    </td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>DBI202</td>
                    <td>Database</td>
                    <td>Description subject 2</td>
                    <td>
                        Gitlab config 2
                    </td>
                    <td class="r-edit">
                        <input class="btne" type="button" name="btnEdit" value="Edit">
                    </td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>PRM292</td>
                    <td>Mobile</td>
                    <td>Description subject 3</td>
                    <td>
                        Gitlab config 3
                    </td>
                    <td>
                        <input class="btne" type="button" name="btnEdit" value="Edit">
                    </td>
                </tr>
                <tr>
                    <td>4</td>
                    <td>PRN211</td>
                    <td>.NET & C#</td>
                    <td>Description subject 4</td>
                    <td>
                        Gitlab config 4
                    </td>
                    <td>
                        <input class="btne" type="button" name="btnEdit" value="Edit">
                    </td>
                </tr>
            </tbody>
        </table>
    </body>
</html>
