<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="/resources/css/message_stylesheet.css" rel="stylesheet" type="text/css"/>
    <link href="/resources/css/header_stylesheet.css" rel="stylesheet" type="text/css"/>
    <link href="/resources/images/static_ico.ico" rel="shortcut icon"/>
    <title>Message</title>
</head>
<body class="darkGreen">
<%@include file="header.jsp"%>
<div class="mainDiv">
<p class="message">${message.message}</p>
</div>
</body>
</html>
