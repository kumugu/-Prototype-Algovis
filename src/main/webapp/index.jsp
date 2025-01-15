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
		<h1>AlgoVis Studio</h1>
		<p>알고리즘의 원리를 직관적으로 이해하는 인터랙티브 학습 플랫폼</p>
			
		<div class="feature-list">
			<!-- Fractal Explorer -->
			<div class="feature">
				<a href="fractal.do">
				<h2 class="feature-title">Fractal Explorer</h2>
				</a>
				<p>수학적 아름다움을 담은 프랙탈의 세계를 실시간으로 탐험하세요</p>
			</div>
				
			<!-- Sorting Visualizer -->
			<div class="feature">
				<a href="sorting.do">
				<h2 class="feature-title">Sorting Visualizer</h2>
				</a>
				<p>다양한 정렬 알고리즘의 작동 원리를 시각적으로 비교 분석해보세요</p>
			</div>
			
			<!-- Maze Pathfinder -->
			<div class="feature">
				<a href="maze.do">
				<h2 class="feature-title">Maze Pathfinder</h2>
				</a>
				<p>경로 탐색 알고리즘의 핵심 개념을 게임처럼 쉽게 배워보세요</p>
			</div>
		</div>
	</div>

    
    <%@ include file="WEB-INF/views/footer.jsp" %>
</body>
</html>
