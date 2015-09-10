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
    <div class="container">
    <body>
        <h2 class="text-center">Geometry Area Calculator <small> "Magic, usually"</small></h2>
        <h3>Calculate the Area of a Rectangle</h3>
        <p>
            <!-- fix spacing-->
        <form class="form-group" name="rectangleForm" method=POST action="controller">
            <input type="hidden" id="formType" name="formType" value="rectangle">
            Length: <input class="form-control" type ="text" name="length" placeholder= "Enter Length"> <br>
            Width: <input class="form-control" type ="text" name="width" placeholder="Enter Width"> <br>
            <button class="btn btn-primary" type="submit" value="calcRectangleSubmit">Calculate Area</button>
        </form>
        ${rectangleArea}
        
        <hr>
        
        <h3>Calculate the Area of a Circle</h3>
        <form class="form-group" name="circleForm" method=POST action="controller">
            <input type="hidden" id="formType" name="formType" value="circle">
            Radius: <input class="form-control" type ="text" name="radius" placeholder= "Enter Radius"> <br>
            <button class="btn btn-primary" type="submit" value="calcCircleSubmit">Calculate Area</button>
        </form>
        
        ${circleArea}
        <hr>
        
        <h3>Calculate the Area of a Triangle</h3>
        <form class="form-group" name="triangleForm" method=POST action="controller">
            <input type="hidden" id="formType" name="formType" value="triangle">
            Base: <input class="form-control" type ="text" name="base" placeholder= "Enter Base"> <br>
            Height: <input class="form-control" type ="text" name="height" placeholder="Enter Height"> <br>
            <button class="btn btn-primary" type="submit" value="calcTriangleSubmit">Calculate Area</button>
        </form>
        
        ${triangleArea}
        </p>
    </div>
    </body>
</html>
