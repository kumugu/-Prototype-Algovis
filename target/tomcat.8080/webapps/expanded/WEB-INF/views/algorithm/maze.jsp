<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Maze Solver</title>
    <link rel="stylesheet" href="WebContent/css/style.css">
    <style type="text/css">/* 테이블 스타일 */
table {
    border-collapse: collapse;
    margin: 20px auto;
    background-color: #fff;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
}

td {
    width: 40px; /* 셀의 크기 */
    height: 40px;
    text-align: center;
    vertical-align: middle;
    font-size: 1rem;
    border: 1px solid #ddd; /* 셀 테두리 */
}

/* 셀 색상 지정 */
td {
    background-color: #fff; /* 기본 셀 색상 */
}

td.wall {
    background-color: #333; /* 벽 */
    color: #fff; /* 벽의 텍스트 색상 */
}

td.start {
    background-color: #4CAF50; /* 시작점 */
    color: #fff;
    font-weight: bold;
}

td.end {
    background-color: #ff9800; /* 도착점 */
    color: #fff;
    font-weight: bold;
}

td.path {
    background-color: #87ceeb; /* 경로 */
}
</style>
</head>
	<body>
	<%@ include file="/WEB-INF/views/header.jsp" %>
	<div align="center">
	    <h1>Maze Solver</h1>
	    <table border="1">
	        <c:forEach var="row" items="${maze}">
	            <tr>
	                <c:forEach var="cell" items="${row}">
	                    <td class="<c:choose>
	                                  <c:when test='${cell == "W"}'>wall</c:when>
	                                  <c:when test='${cell == "S"}'>start</c:when>
	                                  <c:when test='${cell == "E"}'>end</c:when>
	                                  <c:when test='${cell == "P"}'>path</c:when>
	                                  <c:otherwise>default</c:otherwise>
	                                </c:choose>">${cell}</td>
	                </c:forEach>
	            </tr>
	        </c:forEach>
	    </table>
	</div>
	<%@ include file="/WEB-INF/views/footer.jsp" %>
	</body>
</html>
