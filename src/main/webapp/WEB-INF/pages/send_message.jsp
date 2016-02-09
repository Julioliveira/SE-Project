<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Send Message</title>
    <link href="/resources/css/header_stylesheet.css" rel="stylesheet" type="text/css"/>
    <link href="/resources/css/send_message_stylesheet.css" rel="stylesheet" type="text/css">
    <link href="/resources/images/static_ico.ico" rel="shortcut icon"/>
</head>
    <body class="darkGreen">
    <%@include file="header.jsp"%>
    <div class="mainForm">
        <form action="/send" method="GET">
            <input type="hidden" value="<%= request.getParameter("receiver_user_id") %>" name="receiver_user_id">
            <input type="hidden" value="${sessionScope.currentUser.id}" name="sender_user_id"><br/>
            Subject:</br>
            <input type="text" size="30" value="${user.email}" name="subject"><br/><br/>
            Body:</br>
            <textarea rows="10" cols="64" name="message"></textarea></br><br/>
            <input class="greenButton" type="submit" value="Send Message">
        </form>
    </div>
    </body>
</html>