<%-- 
    Document   : index
    Created on : Sep 3, 2015, 1:37:17 PM
    Author     : Adam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculator Lab</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    </head>
    <body>
        <h1>Calculate the Area of a Rectangle</h1>
        <p>
            <!-- fix spacing-->
        <form name="rectangleForm" method=POST action="controller">
            <input type="hidden" id="formType" name="formType" value="rectangle">
            Length: <input type ="text" name="length" placeholder= "Enter Length"> <br>
            Width: <input type ="text" name="width" placeholder="Enter Width"> <br>
            <button type="submit" value="calcRectangleSubmit">Calculate Area</button>
        </form>
        ${rectangleArea}
        
        <hr>
        
        <h1>Calculate the Area of a Circle</h1>
        <form name="circleForm" method=POST action="controller">
            <input type="hidden" id="formType" name="formType" value="circle">
            Radius: <input type ="text" name="radius" placeholder= "Enter Radius"> <br>
            <button type="submit" value="calcCircleSubmit">Calculate Area</button>
        </form>
        
        ${circleArea}
        <hr>
        
        <h1>Calculate the Area of a Triangle</h1>
        <form name="triangleForm" method=POST action="controller">
            <input type="hidden" id="formType" name="formType" value="triangle">
            Base: <input type ="text" name="base" placeholder= "Enter Base"> <br>
            Height: <input type ="text" name="height" placeholder="Enter Height"> <br>
            <button type="submit" value="calcTriangleSubmit">Calculate Area</button>
        </form>
        
        ${triangleArea}
        </p>
        
    </body>
</html>
