package com.algovis.controller;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import com.algovis.action.Command;

import java.io.IOException;
import java.util.HashMap;

public class FrontController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private HashMap<String, Command> commandMap = new HashMap<>();

    @Override
    public void init() {
        // 기능 연결 예시
        commandMap.put("/fractal.do", new com.algovis.action.FractalCommand());
        commandMap.put("/sorting.do", new com.algovis.action.SortingCommand());
        commandMap.put("/maze.do", new com.algovis.action.MazeCommand());
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void processRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String path = request.getServletPath();
        Command command = commandMap.get(path);

        if (command != null) {
            String view = command.execute(request, response);
            if (view != null && !view.isEmpty()) {
                RequestDispatcher dispatcher = request.getRequestDispatcher(view);
                dispatcher.forward(request, response);
            }
        } else {
            response.sendError(HttpServletResponse.SC_NOT_FOUND, "Command Not Found");
        }
    }
}