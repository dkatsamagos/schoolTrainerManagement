<%-- 
    Document   : listOfTrainers
    Created on : Jun 28, 2020, 10:19:43 PM
    Author     : dkats
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="springform" uri="http://www.springframework.org/tags/form" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Trainers</title>
        <link href="https://unpkg.com/bootstrap@4.3.1/dist/css/bootstrap.min.css" rel="stylesheet"/>

    </head>
    <body class="bg-light">
        <div class="container">
            <div class="col-md-offset-1 col-md-10 m-5">

                <!-- Search form -->
                <form method="get" action="search">
                    <input type="text" name="keyword" placeholder="find" /> &nbsp;
                    <input  type="submit" value="Search" />
                </form>

                <table class="table table-striped table-bordered" border="1"  id="table">
                    <tr class="bg-primary text-white text-center">
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Subject</th>
                        <th>Actions</th>
                    </tr>
                    <tbody>
                        <!-- loop over and print our trainers -->
                        <c:forEach var="tr" items="${trainers}">

                            <tr class="text-center">
                                <td>${tr.firstname}</td>
                                <td>${tr.lastname}</td>
                                <td>${tr.subjs}</td>

                                <td>
                                    <a href="/school/update?id=${tr.id}">Update</a>
                                    | <a href="/school/delete?id=${tr.id}" onclick="if (!(confirm('Are you sure you want to delete this trainer?')))
                                                return false">Delete</a>
                                </td>

                            </tr>

                        </c:forEach>
                    </tbody>
                </table>

                <input type="button" value="Add Trainer"
                       onclick="window.location.href = 'showAddForm';
                               return false;"
                       class="btn btn-primary" /> <br />
                <br />


            </div>
        </div>
   
    </body>
</html>
