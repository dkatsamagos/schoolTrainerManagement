<%-- 
    Document   : trainerform
    Created on : Jun 28, 2020, 2:32:39 PM
    Author     : dkats
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="springform" uri="http://www.springframework.org/tags/form" %>  
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Trainer</title>
        <link href="https://unpkg.com/bootstrap@4.3.1/dist/css/bootstrap.min.css" rel="stylesheet"/>

    </head>
    <body class="bg-light">
        <div class="container d-flex justify-content-center">
            <div class="col-sm-6 mb-3 mb-md-0 m-5">
                <div class="card border-primary">
                    <div class="card-header bg-primary mb-3">
                        <div class="card-title text-white text-center h5">Add Trainer</div>
                    </div>
                    <div class="card-body">
                        <springform:form action="addTrainer" method="post" modelAttribute="newTrainer">


                            <div class="form-group">
                                <label for="firstname" class="col-md-3 control-label">First
                                    Name</label>
                                <div class="col-md-9">
                                    <springform:input path="firstname" cssClass="form-control"/>
                                    <springform:errors path="firstname" cssClass="text-danger font-weight-bold"/>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="lastname" class="col-md-3 control-label">Last Name</label>
                                <div class="col-md-9">
                                    <springform:input path="lastname" cssClass="form-control" />
                                    <springform:errors path="lastname"  cssClass="text-danger font-weight-bold"/>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="subjs" class="col-md-3 control-label">Subject</label>
                                <div class="col-md-9">
                                    <springform:input path="subjs" cssClass="form-control" />
                                    <springform:errors path="subjs" cssClass="text-danger font-weight-bold"/>
                                </div>
                            </div>

                            <!--Submit Button-->
                            <div class="col-md-offset-3 col-md-9">
                                <springform:button class="btn btn-primary">Submit</springform:button>
                                </div>   

                        </springform:form>
                    </div>
                </div>
            </div>     
        </div>
        

    </body>
</html>
