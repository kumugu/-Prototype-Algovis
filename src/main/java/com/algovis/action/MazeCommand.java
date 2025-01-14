package com.algovis.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MazeCommand implements Command {

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        // 간단한 미로 데이터를 생성
        String[][] maze = {
            {"S", "1", "1", "0", "E"},
            {"0", "0", "1", "0", "1"},
            {"1", "1", "1", "1", "1"},
            {"1", "0", "0", "0", "1"},
            {"1", "1", "1", "1", "G"}
        };

        // 미로 데이터를 request에 저장
        request.setAttribute("maze", maze);

        // 결과를 렌더링할 JSP 페이지 경로
        return "WEB-INF/views/algorithm/maze.jsp";
    }
}
