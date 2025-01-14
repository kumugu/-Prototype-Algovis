<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Algovis | Home</title>
    <link rel="stylesheet" href="WebContent/css/style.css">
    <style type="text/css">
    /* Feature List 스타일 */
.feature-list {
    display: flex;
    justify-content: center;
    gap: 20px;
    margin-top: 30px;
}

.feature {
    background-color: #f9f9f9;
    border: 1px solid #ddd;
    border-radius: 10px;
    padding: 20px;
    width: 250px;
    text-align: center;
    box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
    transition: transform 0.2s ease, box-shadow 0.2s ease;
}

.feature:hover {
    transform: translateY(-5px);
    box-shadow: 0px 6px 10px rgba(0, 0, 0, 0.15);
}

/* 글씨 호버 효과 */
.feature-title {
    font-size: 1.5rem;
    color: #2b572d;
    margin-bottom: 10px;
    transition: color 0.3s ease;
}

.feature-title:hover {
    color: #ff9800;
    text-decoration: underline;
}

.feature p {
    font-size: 0.9rem;
    color: #666;
    margin-top: 10px;
}
    
    </style>
</head>
<body>
    <%@ include file="WEB-INF/views/header.jsp" %>
    
	<div class="container" align="center">
	    <h1>알고리즘의 세계로 초대합니다</h1>
	    <p>직접 체험하고 이해하는 알고리즘 시각화 도구와 함께 학습하세요!</p>
	
	    <div class="feature-list">
	        <!-- 프랙탈 뷰어 -->
	        <div class="feature">
	            <a href="fractal.do">
	                <h2 class="feature-title">프랙탈 뷰어</h2>
	            </a>
	            <p>프랙탈 기하학의 아름다움을 직접 시각화하며 탐구해 보세요.</p>
	        </div>
	
	        <!-- 정렬 알고리즘 시각화 -->
	        <div class="feature">
	            <a href="sorting.do">
	                <h2 class="feature-title">정렬 알고리즘 시각화</h2>
	            </a>
	            <p>정렬 알고리즘을 단계별로 이해하고 효율성을 배워보세요.</p>
	        </div>
	
	        <!-- 미로 솔버 -->
	        <div class="feature">
	            <a href="maze.do">
	                <h2 class="feature-title">미로 솔버</h2>
	            </a>
	            <p>미로를 해결하는 알고리즘을 학습하고 문제 해결 능력을 키워보세요.</p>
	        </div>
	    </div>
	</div>

    
    <%@ include file="WEB-INF/views/footer.jsp" %>
</body>
</html>
