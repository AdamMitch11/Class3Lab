<%-- 
    Document   : calcResult
    Created on : Sep 8, 2015, 11:37:59 AM
    Author     : Adam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculator</title>
    </head>
    <body>
        <h1>Calculate the Area of a Rectangle</h1>
        <p>
            <!-- fix spacing-->
        <form id="rectangleForm" method=POST action="controller">
            Length: <input type ="text" name="length" placeholder= "Enter Length"> <br>
            Width: <input type ="text" name="width" placeholder="Enter Width"> <br>
            <button type="button" value="calcRectangle">Calculate Area</button>
        </form>
        <hr>
        <h1>Calculate the Area of a Circle</h1>
        <form id="circleForm" method=POST action="controller">
            Radius: <input type ="text" name="radius" placeholder= "Enter Radius"> <br>
            <button type="button" value="calcCircle">Calculate Area</button>
        </form>
        <hr>
        <h1>Calculate the Area of a Triangle</h1>
        <form id="triangleForm" method=POST action="controller">
            Base: <input type ="text" name="base" placeholder= "Enter Base"> <br>
            Height: <input type ="text" name="height" placeholder="Enter Height"> <br>
            <button type="button" value="calcTriangle">Calculate Area</button>
        </form>
        </p>
    </body>
</html>
