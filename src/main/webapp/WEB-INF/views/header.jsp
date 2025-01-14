<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
/* 헤더 스타일 */
header {
    background-color: #4CAF50;
    color: white;
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 10px 20px;
    position: relative;
}

header .logo {
    font-size: 1.8rem;
    font-weight: bold;
    color: white;
    text-decoration: none;
    letter-spacing: 1px;
}

header .logo:hover {
    color: #ff9800; /* 로고 호버 시 색상 */
}

header nav ul.nav-list {
    list-style: none;
    display: flex;
    gap: 20px;
    margin: 0;
    padding: 0;
}

header nav ul.nav-list li a {
    color: white;
    font-weight: bold;
    text-decoration: none;
    transition: color 0.3s ease;
}

header nav ul.nav-list li a:hover {
    color: #ff9800; /* 네비게이션 호버 시 색상 */
}


</style>

</head>
<body>
<header>
    <div class="header-container" align="left">
        <!-- 로고 -->
        <a href="index.jsp" class="logo">Algovis</a>
    </div>   
        <!-- 네비게이션 메뉴 -->
        
    <div align="right">
        <nav>
            <ul class="nav-list">
                <li><a href="about.jsp">About</a></li>
                <li><a href="contact.jsp">Contact</a></li>
                <li><a href="login.jsp">Login</a></li>
            </ul>
        </nav>
	</div>
</header>


</body>
</html>