<%-- 
    Document   : result
    Created on : Jun 29, 2020, 9:00:21 AM
    Author     : dkats
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Result</title>
    </head>
    <body>
        <div align="center">
            <h2>Search Result</h2>
            <table border="1" cellpadding="5">
                <tr>
                    <th>ID</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Subject</th>
                </tr>
                <c:forEach items="${res}" var="tr">
                    <tr>
                        <td>${tr.id}</td>
                        <td>${tr.firstname}</td>
                        <td>${tr.lastname}</td>
                        <td>${tr.subjs}</td>
                    </tr>
                </c:forEach>
            </table>
        </div>   
    </body>
</html>
