<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Maze Solver</title>
    <link rel="stylesheet" href="WebContent/css/style.css">
</head>
<body>
<%@ include file="/WEB-INF/views/header.jsp" %>
<div>
<h1>Maze Solver</h1>
<table border="1">
    <c:forEach var="row" items="${maze}">
        <tr>
            <c:forEach var="cell" items="${row}">
                <td>${cell}</td>
            </c:forEach>
        </tr>
    </c:forEach>
</table>
</div>
<%@ include file="/WEB-INF/views/footer.jsp" %>
</body>
</html>
