

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>       



<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">       
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
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
                            <input class="form-control" type="text" id="length" name="length" placeholder="Enter Length" value="<c:out value="${param.length}"> </c:out>" >
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
                                <input class="form-control" type="text" id="width" name="base" placeholder="Enter Base" value="<c:out value="${param.base}"> </c:out>">
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
    </body>
</html>
