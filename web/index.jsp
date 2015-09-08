<%-- 
    Document   : index
    Created on : Sep 3, 2015, 1:37:17 PM
    Author     : Adam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculator Lab</title>
    </head>
    <body>
        <h1>Calculate the Area of a Rectangle</h1>
        <p>
            <!-- fix spacing-->
        <form id="rectangleForm" method=POST action="controller">
            Length: <input type ="text" name="length"> <br>
            Width: <input type ="text" name="width"> <br>
            <button type="button" value="calcRectangle">Calculate Area</button>
        </form>
        <hr>
        <h1>Calculate the Area of a Circle</h1>
        <hr>
        <h1>Calculate the Area of a Triangle</h1>
        </p>
    </body>
</html>
