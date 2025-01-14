package com.algovis.action;

import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.util.Base64;
import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FractalCommand implements Command {

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        // 프랙탈 이미지 생성
        BufferedImage fractalImage = generateFractalImage(800, 800, 4);

        // Base64로 변환
        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        ImageIO.write(fractalImage, "png", baos);
        String base64Image = Base64.getEncoder().encodeToString(baos.toByteArray());

        // JSP로 전달
        request.setAttribute("fractalBase64", base64Image);
        return "/WEB-INF/views/algorithm/fractal.jsp";
    }

    private BufferedImage generateFractalImage(int width, int height, int depth) {
        BufferedImage image = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
        Graphics2D g = image.createGraphics();

        // 배경색 설정
        g.setColor(Color.BLACK);
        g.fillRect(0, 0, width, height);

        // 프랙탈 그리기
        g.setColor(Color.WHITE);
        drawFractal(g, 0, 0, width, depth);

        g.dispose();
        return image;
    }

    private void drawFractal(Graphics2D g, int x, int y, int size, int depth) {
        if (depth == 0) {
            g.fillRect(x, y, size, size);
            return;
        }

        int newSize = size / 3;
        for (int dx = 0; dx < 3; dx++) {
            for (int dy = 0; dy < 3; dy++) {
                if (dx == 1 && dy == 1) continue; // 중앙 비우기
                drawFractal(g, x + dx * newSize, y + dy * newSize, newSize, depth - 1);
            }
        }
    }
}
