<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
    
   
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
<link rel="stylesheet" href="<c:url value="/resources/assets/bootstrap/css/bootstrap.min.css"/>">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Cookie">
    <link rel="stylesheet" href="<c:url value="/resources/assets/fonts/font-awesome.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/styles.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/Google-Style-Login.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/Pretty-Registration-Form.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/category.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/product.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/Pretty-Footer.css"/>">
</head>

<body>
    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header"><a class="navbar-brand navbar-link" href="category">CATEGORY </a>
                <button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
            </div>
            <div class="collapse navbar-collapse" id="navcol-1">
                <ul class="nav navbar-nav">
                    <li role="presentation"><a href="supplier">SUPPLIER </a></li>
                    <li role="presentation"><a href="product">PRODUCT </a></li>
                                           <sec:authorize access="isAuthenticated()">
                              <li> <a href="<c:url value="j_spring_security_logout" />">Logout</a></li>
                          
                   </sec:authorize>
                    
                </ul>
            </div>
        </div>
    </nav>
    
    
    <form:form action="category.do" method="POST" modelAttribute="category">
    <div class="container">
        <div class="well">
            <div class="row">
                <div class="col-md-12">
                    <form:label path="categoryId">CATEGORY ID</form:label>
                    <form:input class="form-control" path="categoryId" type="text"/>
                </div>
            </div>
        </div>
        <div class="well">
            <div class="row">
                <div class="col-md-12">
                    <form:label path="categoryName">CATEGORY NAME</form:label>
                    <form:input class="form-control" path="categoryName" type="text"/>
                </div>
            </div>
        </div>
        <input type="submit" name="action" value="Add" />
				<input type="submit" name="action" value="Edit" />
				<input type="submit" name="action" value="Delete" />
				<input type="submit" name="action" value="Search" />  
				
    </div>
    </form:form>
				  
	<script src"<c:url value="resources/assets/js/jquery.min.js"/>"></script>
    <script src"<c:url value="/resources/assets/bootstrap/js/bootstrap.min.js"/>"></script></script>></script>
</body>

</html>