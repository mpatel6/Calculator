<%-- 
    Document   : geometricAreaCalculator
    Created on : Sep 12, 2015, 9:23:00 PM
    Author     : Ankita
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">       
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
        <title>Geometric Area Calculator</title>
    </head>
    <body>
      <!--  <div class="container-fluid">-->

            <div class="col-sm-4">
                <form class="form-horizontal" role="form" name="rectForm" id="rectForm" method="GET" action="../MainControllerLab3">
                    <input id="shape" name="shape" type="hidden" value="rect">
                    <div class="form-group">
                        <label class="control-label col-sm-4" for="length"> Length: </label>
                        <div class="col-sm-8">                    
                            <input class="form-control" type="text" id="length" name="length" placeholder="Enter Length">
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-sm-4"for="width"> Width: </label>
                        <div class="col-sm-8">
                            <input class="form-control" type="text" id="width" name="width" placeholder="Enter Width">
                        </div>
                    </div>   

                    <div class="col-sm-offset-4">
                        <input type="submit" id="rectAreaSubmit" name="rectAreaSubmit" value="Submit" class="btn btn-success">
                    </div>
                    
                    <h1>Rectangle Area: ${areaRect}</h1>
                    
                </form>
                
            </div>
<!--
            <div class="col-sm-4">
                <form class="form-horizontal" role="form" name="triangleForm" id="triangleForm" method="POST" action="../MainControllerLab3">
                    <div class="form-group">
                        <label class="control-label col-sm-4" for="height"> Height: </label>
                        <div class="col-sm-8">
                            <input class="form-control" type="text" id="height" name="height" placeholder="Enter Height">
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-sm-4" for="base"> Base: </label>
                        <div class="col-sm-8">
                        <input class="form-control" type="text" id="width" name="base" placeholder="Enter Base">
                    </div> 
                        </div>

                    <div class="col-sm-offset-4">
                    <input type="submit" id="triangleAreaSubmit" name="triangleAreaSubmit" value="Calculate">
                    </div>
                </form>

            </div>

            <div class="col-sm-4">
                <form class="form-horizontal" role="form" name="circleForm" id="circleForm" method="POST" action="../MainControllerLab3">
                    <div class="form-group">
                        <label class="control-label col-sm-4"for="radius"> Radius: </label>
                        <div class="col-sm-8">
                        <input class="form-control" type="text" id="radius" name="radius" placeholder="Enter Radius">
                   </div>
                    </div>
                    
                 

                    
                    

                    <div class="row-3 col-sm-offset-4">
                    <input type="submit" id="triangleAreaSubmit" name="triangleAreaSubmit" value="Calculate">
               </div>
                    </form>

            </div>
-->
       <!-- </div>-->
    </body>
</html>
