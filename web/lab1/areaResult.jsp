<%-- 
    Document   : areaResult
    Created on : Sep 10, 2015, 9:49:16 PM
    Author     : Ankita
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Geometric Area Calculator</title>
    </head>
    <body>
        <h1>Rectangle area using EL expression</h1>
        <h1><mark>Rectangle Area: ${area}</mark></h1>
        
        
        <br><br>
        
        <h1>Rectangle ares using JAVA code</h1>
        <h1><mark>Rectangle Area: <% Object objResult =  request.getAttribute("area");
                                 // double dblResult;
                                  if(objResult !=null){
                                      out.print(objResult);
                                  }%>
        </mark></h1>
    </body>
</html>
