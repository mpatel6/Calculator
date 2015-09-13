

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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


                <form class="form-horizontal" role="form" name="rectForm" id="rectForm" method="POST" action="MainControllerLab3">
                    <input id="shape" name="shape" type="hidden" value="rect">
                    <div class="form-group">
                        <label class="control-label col-sm-4" for="length"> Length: </label>
                        <div class="col-sm-8">                    
                            <input class="form-control" type="text" id="length" name="length" placeholder="Enter Length" value=<% Object objLen = request.getParameter("length");
                                if (objLen != null) {
                                    out.print("\"" + (String) objLen + "\"");
                                }%>>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-sm-4"for="width"> Width: </label>
                        <div class="col-sm-8">
                            <input class="form-control" type="text" id="width" name="width" placeholder="Enter Width" value= <% Object objWdt = request.getParameter("width");
                                if (objWdt != null) {
                                    out.print("\"" + (String) objWdt + "\"");
                                }%>>
                        </div>
                    </div>   

                    <div class="col-sm-offset-4">
                        <input type="submit" id="rectAreaSubmit" name="rectAreaSubmit" value="Calculate" class="btn btn-primary">
                    </div>

                    <div>
                        <h3> <strong>Area: 

                                <% Object objRectArea = request.getAttribute("areaRect");
                                    if (objRectArea != null) {
                                        out.print((Double) objRectArea);
                                }%>
                            </strong>
                        </h3>
                    </div>
                </form>


            </div>

            <div class="col-sm-4 jumbotron">
                <div class="text-center">
                    <h2><strong>TRIANGLE</strong></h2>
                </div>
                <form class="form-horizontal" role="form" name="triangleForm" id="triangleForm" method="POST" action="MainControllerLab3?shape=tri">
                    <div class="form-group">
                        <label class="control-label col-sm-4" for="height"> Height: </label>
                        <div class="col-sm-8">
                            <input class="form-control" type="text" id="height" name="height" placeholder="Enter Height" value=<% Object objHt = request.getParameter("height");
                                if (objHt != null) {
                                    out.print("\"" + (String) objHt + "\"");
                                }%>>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-sm-4" for="base"> Base: </label>
                        <div class="col-sm-8">
                            <input class="form-control" type="text" id="width" name="base" placeholder="Enter Base" value=<% Object objBse = request.getParameter("base");
                                if (objBse != null) {
                                    out.print("\"" + (String) objBse + "\"");
                                }%>>
                        </div> 
                    </div>

                    <div class="col-sm-offset-4">
                        <input type="submit" id="triangleAreaSubmit" name="triangleAreaSubmit" value="Calculate" class="btn btn-primary">
                    </div>

                    <div>
                        <h3> <strong>Area:  <% Object objTriArea = request.getAttribute("areaTri");
                            if (objTriArea != null) {
                                out.print((Double) objTriArea);
                            }%></h3>
                    </div>   
                </form>

            </div>

            <div class="col-sm-4 jumbotron">
                <div class="text-center">
                    <h2><strong>CIRCLE</strong></h2>
                </div>
                <form class="form-horizontal" role="form" name="circleForm" id="circleForm" method="POST" action="MainControllerLab3">
                    <input id="shape" name="shape" type="hidden" value="circ">
                    <div class="form-group">
                        <label class="control-label col-sm-4"for="radius"> Radius: </label>
                        <div class="col-sm-8">
                            <input class="form-control" type="text" id="radius" name="radius" placeholder="Enter Radius" value=<% Object objRadius = request.getParameter("radius");
                                if (objRadius != null) {
                                    out.print("\"" + (String) objRadius + "\"");
                                }%>>
                        </div>
                    </div>






                    <div class="row-3 col-sm-offset-4">
                        <input type="submit" id="triangleAreaSubmit" name="triangleAreaSubmit" value="Calculate" class="btn btn-primary">
                    </div>

                    <div>
                        <h3> <strong>Area: <% Object objCircArea = request.getAttribute("areaCirc");
                            if (objCircArea != null) {
                                out.print((Double) objCircArea);
                            }%>
                        </h3>
                    </div>
                </form>

            </div>

        </div>
    </body>
</html>
