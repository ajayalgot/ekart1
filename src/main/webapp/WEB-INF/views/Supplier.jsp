<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
    
   
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<h1></h1>
<form:form action="supplier.do" method="POST" modelAttribute="supplier" commandName="supplier">
	 <nav class="navbar navbar-default">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand navbar-link" href="#"> </a>
                <button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
            </div>
            <div class="collapse navbar-collapse" id="navcol-1">
                <ul class="nav navbar-nav">
                    <li class="active" role="presentation"><a href="category">Category </a></li>
                    <li role="presentation"><a href="supplier">Supplier</a></li>
                    <li role="presentation"><a href="product">Product </a></li>
                     <sec:authorize access="isAuthenticated()">
                              <li> <a href="<c:url value="j_spring_security_logout" />">Logout</a></li>
                          
                   </sec:authorize>
                    
                </ul>
            </div>
        </div>
    </nav>
    <div class="container">
        <div class="well">
            
                <div class="row">
                    <div class="col-lg-offset-4 col-sm-2 col-xs-6">
                        <form:label path="supplierid">Supplier Id </form:label>
                    </div>
                    <div class="col-sm-2 col-xs-6">
                        <form:input class="form-control input-sm" path="supplierid" type="text"/>
                    </div>
                </div>
            
        </div>
        <div class="well">
            
                <div class="row">
                    <div class="col-lg-offset-4 col-sm-2 col-xs-6">
                        <form:label path="supplierName">Supplier Name </form:label>
                    </div>
                    <div class="col-lg-4 col-md-8">
                        <form:input class="form-control" path="supplierName" type="text"/>
                    </div>
                </div>
            
        </div>
        <div class="well">
            
                <button class="btn btn-primary" type="submit">Button</button>
            
        </div>
    </div>		
    <td colspan="2">
				<input type="submit" name="action" value="Add" />
				<input type="submit" name="action" value="Edit" />
				<input type="submit" name="action" value="Delete" />
				<input type="submit" name="action" value="Search" />
			</td>
	
</form:form>
<br>
<table border="1">
	<th>ID</th>
	<th>Supplier name</th>
		
	<c:forEach items="${supplierList}" var="supplier">
		<tr>
			<td>${supplier.supplierid}</td>
			<td>${supplier.supplierName}</td>
			
			
		</tr>
	</c:forEach>
</table>
<script src="<c:url value="/resources/assets/js/jquery.min.js"/>"></script>
    <script src="<c:url value="/resources/assets/bootstrap/js/bootstrap.min.js"/>"></script>
</body>
</html>