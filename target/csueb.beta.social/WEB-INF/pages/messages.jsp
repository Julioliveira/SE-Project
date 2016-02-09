<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Message List</title>
    <link href="/resources/css/messages_stylesheet.css" rel="stylesheet" type="text/css"/>
    <link href="/resources/css/header_stylesheet.css" rel="stylesheet" type="text/css"/>
    <link href="/resources/images/static_ico.ico" rel="shortcut icon"/>
</head>
<body class="darkGreen">
<%@include file="header.jsp"%>
<div class="mainDiv">
<ul class="list">
  <c:choose>
  <c:when test="${messageList.size() == 0}">
    <div style="color: #7A991A; text-align: center">
      No messages found
    </div>
  </c:when>
  <c:otherwise>
      <c:forEach var="i" items="${messageList}">
        <li>
          <a style="text-transform: uppercase; color: #7A991A; text-decoration: none" href="/message/${i.id}">${i.subject}</a>
        </li>
      </c:forEach>
    </c:otherwise>
    </c:choose>
</ul>
</div>
</body>
</html>
