<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sorting Viewer</title>
    <link rel="stylesheet" href="WebContent/css/style.css">
    <style>
        .bar {
            display: inline-block;
            width: 30px;
            margin: 0 5px;
            background-color: #4CAF50;
            text-align: center;
            color: white;
        }
    </style>
</head>
<body>
<%@ include file="/WEB-INF/views/header.jsp" %>
<div align="center">
	<h1>Sorting Viewer</h1>
	<div id="visualization" >
	    <c:if test="${not empty data}">
	        <c:forEach var="value" items="${data}">
	            <div class="bar" style="height: ${value * 10}px;">${value}</div>
	        </c:forEach>
	    </c:if>
	    <c:if test="${empty data}">
	        <p>No sorting data available.</p>
	    </c:if>
	</div>
</div>
<%@ include file="/WEB-INF/views/footer.jsp" %>
</body>
</html>
