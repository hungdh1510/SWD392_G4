<%-- 
    Document   : edit_subject
    Created on : Oct 29, 2023, 6:08:23 PM
    Author     : hello
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Subject Editor</h1>
        <form>
            Subject ID : <input type="text" disabled="" name="sId">
            <br><br>
            Subject Name : <input type="text" name="sName" >
            <br><br>
            Subject Code : <input type="text" name="sCode" >
            <br><br>
            Subject Description : <textarea name="sDes" rows="5" cols="10"></textarea>"
            <br><br>
            Subject Manager : <input type="text" name="sManager" >
            <br><br>

  
        </form>
    </body>
</html>-->


<!DOCTYPE html>
<html>
  <head>
    <title>Simple registration form</title>
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
    <style>
      html, body {
      display: flex;
      justify-content: center;
      height: 100%;
      }
      body, div, h1, form, input, p { 
      padding: 0;
      margin: 0;
      outline: none;
      font-family: Roboto, Arial, sans-serif;
      font-size: 16px;
      color: #666;
      }
      h1 {
      padding: 10px 0;
      font-size: 32px;
      font-weight: 300;
      text-align: center;
      }
      p {
      font-size: 12px;
      }
      hr {
      color: #a9a9a9;
      opacity: 0.3;
      }
      .main-block {
      max-width: 1000px; 
      min-height: 460px; 
      padding: 10px 0;
      margin: auto;
      border-radius: 5px; 
      border: solid 1px #ccc;
      box-shadow: 1px 2px 5px rgba(0,0,0,.31); 
      background: #ebebeb; 
      }
      form {
      margin: 0 30px;
      }
      .account-type, .gender {
      margin: 15px 0;
      }
      input[type=radio] {
      display: none;
      }
      label#icon {
      margin: 0;
      border-radius: 5px 0 0 5px;
      }
      label.radio {
      position: relative;
      display: inline-block;
      padding-top: 4px;
      margin-right: 20px;
      text-indent: 30px;
      overflow: visible;
      cursor: pointer;
      }
      label.radio:before {
      content: "";
      position: absolute;
      top: 2px;
      left: 0;
      width: 20px;
      height: 20px;
      border-radius: 50%;
      background: #1c87c9;
      }
      label.radio:after {
      content: "";
      position: absolute;
      width: 9px;
      height: 4px;
      top: 8px;
      left: 4px;
      border: 3px solid #fff;
      border-top: none;
      border-right: none;
      transform: rotate(-45deg);
      opacity: 0;
      }
      input[type=radio]:checked + label:after {
      opacity: 1;
      }
      input[type=text], input[type=password] {
      width: calc(100% - 57px);
      height: 36px;
/*      margin: 13px 0 0 -5px;*/
      padding-left: 10px; 
      border-radius: 0 5px 5px 0;
      border: solid 1px #cbc9c9; 
      box-shadow: 1px 2px 5px rgba(0,0,0,.09); 
      background: #fff; 
      }
      input[type=password] {
      margin-bottom: 15px;
      }
      #icon {
      display: inline-block;
      padding: 9.3px 15px;
      box-shadow: 1px 2px 5px rgba(0,0,0,.09); 
      background: #1c87c9;
      color: #fff;
      text-align: center;
      }
      .btn-block {
      margin-top: 10px;
      text-align: center;
      }
      button {
      width: 100%;
      padding: 10px 0;
      margin: 10px auto;
      border-radius: 5px; 
      border: none;
      background: #1c87c9; 
      font-size: 14px;
      font-weight: 600;
      color: #fff;
      }
      button:hover {
      background: #26a9e0;
      }
      
      button {
          width: 100px;
          margin: 30px 100px;
      }
    </style>
  </head>
  <body>
    <div class="main-block">
      <h1>Subject Editor</h1>
      <form action="/">
        <hr>
        
        <hr>
        

        
        
        <form>
            <div>Subject ID : <input type="text" disabled="" name="sId" value="1" style="color: #a9a9a9"></div>
            <br><br>
            Subject Name : <input type="text" name="sName" value="Java Web">
            <br><br><br>
            Subject Code : <input type="text" name="sCode" value="PRJ301">
            <br><br><br>
            Subject Description :<br> <textarea name="sDes" rows="10" cols="65" style="resize: none" > Subject Description 1</textarea>"
            <br><br><br>
            Subject Manager : <input type="text" name="sManager" value="Manager 1">
            <br><br><br>
            Gitlab Config : <a style="color: blue" href="">Gitlab Config 1</a>
        </form>
        <hr>
        
        <hr>
        <div class="btn-block">
          
          <button type="submit" href="/">Save</button>
          <button type="submit" href="/">Reset</button>
        </div>
      </form>
    </div>
  </body>
</html>
