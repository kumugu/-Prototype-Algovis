package com.algovis.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Arrays;

public class SortingCommand implements Command {

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        // 샘플 데이터
        int[] data = {5, 3, 8, 1, 2, 7};

        // 정렬 알고리즘 실행
        Arrays.sort(data);
        request.setAttribute("data", data);

        // 결과를 렌더링할 JSP 페이지 경로
        return "WEB-INF/views/algorithm/sorting.jsp";
    }
}
