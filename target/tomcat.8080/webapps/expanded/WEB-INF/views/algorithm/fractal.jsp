<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Fractal Viewer</title>
    <link rel="stylesheet" href="WebContent/css/style.css">
    <style type="text/css">
    #visualization img {
        border: 2px solid #ffffff;
        margin-top: 20px;
        max-width: 80%;
        height: auto;
    }
    </style>
</head>
<body>
<%@ include file="/WEB-INF/views/header.jsp" %>
<div align="center">
<h1>Fractal Viewer</h1>
<div id="visualization" style="text-align: center;">
    <c:if test="${not empty fractalBase64}">
        <img src="data:image/png;base64,${fractalBase64}" alt="Generated Fractal" />
    </c:if>
    <c:if test="${empty fractalBase64}">
        <p>No fractal data available.</p>
    </c:if>
</div>
</div>
<%@ include file="/WEB-INF/views/footer.jsp" %>
</body>
</html>
