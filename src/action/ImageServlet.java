package action;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ImageServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// ����
		response.setHeader("Pragma", "No-cache");
		response.setHeader("Cache-Control", "no-cache");
		response.setDateHeader("Expires", 0);
		// ͼ��
		int width = 60, height = 20;
		BufferedImage image = new BufferedImage(width, height,
				BufferedImage.TYPE_INT_RGB);
		// ��ȡͼ��
		Graphics g = image.getGraphics();
		// �����
		Random random = new Random();
		// ��ɫ
		g.setColor(new Color(120, 125, 100));
		g.fillRect(0, 0, width, height);
		// ����
		g.setFont(new Font("Times New Roman", Font.PLAIN, 18));
		// ������
		for (int i = 0; i < 200; i++) {
			int x = random.nextInt(width);
			int y = random.nextInt(height);
			int x1 = random.nextInt(12);
			int y1 = random.nextInt(12);
			g.drawLine(x, y, x + x1, y + y1);

		}
		// ȡ�����
		String sRand = "";
		for (int i = 0; i < 4; i++) {
			String rand = String.valueOf(random.nextInt(10));
			sRand += rand;
			// ��ʾ��ͼ��
			g.setColor(new Color(30 + random.nextInt(160), 40 + random
					.nextInt(170), 40 + random.nextInt(180)));
			g.drawString(rand, 13 * i + 6, 16);

		}
		// ���浽session
		request.getSession().setAttribute("yzm", sRand);
		g.dispose();
		// ���ͼ��ҳ��
		ImageIO.write(image, "JPEG", response.getOutputStream());
	}

	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doGet(req, resp);
	}
}
