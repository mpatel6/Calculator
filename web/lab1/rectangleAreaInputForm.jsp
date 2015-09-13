<%-- 
    Document   : rectangleAreaInputForm
    Created on : Sep 10, 2015, 8:41:08 PM
    Author     : Ankita
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Rectangle Area Calculator </title>
    </head>
    <body>

        <form id="rectForm" name="rectForm" method="POST" action="../MainController">
            <fieldset>
                <legend><h1>Rectangle Area Calculator</h1></legend>
                <h3>Enter Rectangle Dimensions </h3>

                <br>
                <label for="length">Length: </label>
                <input type="text" id="length" name="length" placeholder="Enter Length"/><br><br>

                <label for="width">Width : </label>
                <input type="text" id="width" name="width" placeholder="Enter Width"/><br><br>

                <input type="submit" id="rectAresSubmir" name="rectAreaSubmit" value="Calculate" />               
            </fieldset>
        </form>



    </body>
</html>
