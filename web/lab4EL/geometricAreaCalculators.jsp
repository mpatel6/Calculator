

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>       



<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">       
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
        <title>Geometric Area Calculator</title>

    </head>
    <body>
        <div class="container-fluid">
            <div class="page-header text-center">
                <h1>Geometric Area Calculator</h1>      
            </div>

            <div class="col-sm-4 jumbotron"> 

                <div class="text-center">
                    <h2><strong>RECTANGLE</strong></h2>
                </div>


                <form class="form-horizontal" role="form" name="rectForm" id="rectForm" method="POST" action="MainControllerLab4">
                    <input id="shape" name="shape" type="hidden" value="rect">
                    <div class="form-group">
                        <label class="control-label col-sm-4" for="length"> Length: </label>
                        <div class="col-sm-8">                    
                            <input class="form-control" type="text" id="length" name="length" placeholder="Enter Length" value="${param.length}" >
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label col-sm-4"for="width"> Width: </label>
                            <div class="col-sm-8">
                                <input class="form-control" type="text" id="width" name="width" placeholder="Enter Width" value= "<c:out value="${param.width}"> </c:out>">
                            </div>
                        </div>   

                        <div class="col-sm-offset-4">
                            <input type="submit" id="rectAreaSubmit" name="rectAreaSubmit" value="Calculate" class="btn btn-primary">
                        </div>

                        <div class="text-center">
                            <h3> <strong>Area:<fmt:formatNumber type="number" value="${areaRect}" pattern="#0.00"  /> </strong> </h3>
                    </div>
                </form>


            </div>

            <div class="col-sm-4 jumbotron">
                <div class="text-center">
                    <h2><strong>TRIANGLE</strong></h2>
                </div>
                <form class="form-horizontal" role="form" name="triangleForm" id="triangleForm" method="POST" action="MainControllerLab4?shape=tri">
                    <div class="form-group">
                        <label class="control-label col-sm-4" for="height"> Height: </label>
                        <div class="col-sm-8">
                            <input class="form-control" type="text" id="height" name="height" placeholder="Enter Height" value="<c:out value="${param.height}"> </c:out>">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label col-sm-4" for="base"> Base: </label>
                            <div class="col-sm-8">
                                <input class="form-control" type="text" id="width" name="base" placeholder="Enter Base" value="${param.base}">
                            </div> 
                        </div>

                        <div class="col-sm-offset-4">
                            <input type="submit" id="triangleAreaSubmit" name="triangleAreaSubmit" value="Calculate" class="btn btn-primary">
                        </div>

                        <div class="text-center">
                            <h3> <strong>Area:  <fmt:formatNumber type="number" value="${areaTri}" pattern="#0.00"  /></h3>
                    </div>   
                </form>

            </div>

            <div class="col-sm-4 jumbotron">
                <div class="text-center">
                    <h2><strong>CIRCLE</strong></h2>
                </div>
                <form class="form-horizontal" role="form" name="circleForm" id="circleForm" method="POST" action="MainControllerLab4">
                    <input id="shape" name="shape" type="hidden" value="circ">
                    <div class="form-group">
                        <label class="control-label col-sm-4"for="radius"> Radius: </label>
                        <div class="col-sm-8">
                            <input class="form-control" type="text" id="radius" name="radius" placeholder="Enter Radius" value="<c:out value="${param.radius}"> </c:out>">
                            </div>
                        </div>


                        <div class="row-3 col-sm-offset-4">
                            <input type="submit" id="triangleAreaSubmit" name="triangleAreaSubmit" value="Calculate" class="btn btn-primary">
                        </div>

                        <div class="text-center">
                            <h3> <strong>Area: 
                                <fmt:formatNumber type="number" value="${areaCirc}" pattern="#0.00"  />
                        </h3>
                    </div>
                </form>

            </div>
 </div>
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner" role="listbox">
                    <div class="item active">
                        <img src="image/circle.jpg" alt="circle" width="460" height="345">
                    </div>

                    <div class="item image-rounded">
                        <img src="image/rectangle.jpg" alt="rectangle" width="460" height="345">
                    </div>

                    <div class="item">
                        <img src="image/triangle.jpg" alt="triangle" width="460" height="345">
                    </div>

                </div>

                <!-- Left and right controls -->
                <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>


       
    </body>
</html>
