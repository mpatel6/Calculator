<%-- 
    Document   : geometricAreaCalculator
    Created on : Sep 10, 2015, 10:00:05 PM
    Author     : Ankita
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Geometric Area Calculator</title>
        <link href="../css/style.css" rel="stylesheet" type="text/css"/>


        <style>
            h1{color: red;}
        </style>

    </head>
    <body>

        <header><h1>RECTANGLE AREA CALCULATOR</h1></header>


        <form name="rect" id="rect" method="GET" action="../MainControllerLab2"> 
            <table>
                <caption>Enter Rectangle Dimensions</caption>
                
                <tr>
                    <th>Length</th>
                    <th>Width </th>
                </tr>   

                <tr>
                    <td><input type="text" id="length" name="length" placeholder="Length" 
                        <%
                            Object length = request.getParameter("length");
                            if (length != null) 
                            {
                            out.print("value=\"" + length + "\"");
                            }
                        %>>
                    </td>
                    
                    <td><input type="text" id="width" name="width" placeholder="Width"<%
                            Object width = request.getParameter("width");
                            if (width != null) 
                            {
                            out.print("value=\"" + width + "\"");
                            }
                        %>>
                    </td>                    
                </tr>
                
                
                <tr>
                    <td colspan="2"> <input type="submit" name="calcAreaSubmit" id="calcAreaSubmit" value="Submit"></td>
                </tr>
            </table>
        </form>
                
                
        <h1>Rectangle Area final: ${area}</h1>

        <h1>Rectangle Area: <%            
            Object objResult = request.getAttribute("area");
            if (objResult != null) 
            {
            out.print(objResult);  
            }
            %>
        </h1>

    </body>
</html>
