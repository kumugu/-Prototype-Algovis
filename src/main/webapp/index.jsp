<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Algovis | Home</title>
    <link rel="stylesheet" href="WebContent/css/style.css">
</head>
<body>
    <%@ include file="WEB-INF/views/header.jsp" %>
    
	<div class="container">
	    <h1>Welcome to Algovis</h1>
	    <p>Explore various algorithm visualizations and interactive learning tools!</p>
	
	    <div class="feature-list">
	        <div class="feature">
	            <a href="fractal.do">Fractal Viewer</a>
	            <p>Explore the beauty of fractal geometry through interactive visualization.</p>
	        </div>
	        <div class="feature">
	            <a href="sorting.do">Sorting Visualization</a>
	            <p>Visualize and understand sorting algorithms step-by-step.</p>
	        </div>
	        <div class="feature">
	            <a href="maze.do">Maze Solver</a>
	            <p>Solve mazes using pathfinding algorithms and understand their logic.</p>
	        </div>
	    </div>
	</div>
    
    <%@ include file="WEB-INF/views/footer.jsp" %>
</body>
</html>