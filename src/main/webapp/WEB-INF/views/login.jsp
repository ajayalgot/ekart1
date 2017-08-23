<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Untitled</title>
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

<c:url var="actionUrl" value="j_spring_security_check" />


	 <div class="login-card"><img src="<c:url value="/resources/assets/img/login.png"/>" class="profile-img-card">
        <p class="profile-name-card"> </p>
        <form:form  method="post" action="${actionUrl }" class="form-signin"><span class="reauth-email"> </span>
            <input name="j_username" class="form-control" type="email" required="" placeholder="Email address" autofocus="" id="inputEmail">
            <input name="j_password" class="form-control" type="password" required="" placeholder="Password" id="inputPassword">
            <div class="checkbox">
                <div class="checkbox">
                    <label>
                        <input type="checkbox">Remember me</label>
                </div>
            </div>
            <button class="btn btn-primary btn-block btn-lg btn-signin" type="submit">Sign in</button>
        </form:form><a href="#" class="forgot-password">Forgot your password?</a></div>
    <div id="background"></div>
<script src="<c:url value="/resources/assets/js/jquery.min.js"/>"></script>  
    <script src="<c:url value="/resources/assets/bootstrap/js/bootstrap.min.js"/>"></script>
</body>

</html>