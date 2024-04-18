package Controller;

import DAO.NewsDAO;
import Model.News;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "Home", urlPatterns = {"/home"})
public class HomeControl extends HttpServlet {

    private final NewsDAO newsDAO = new NewsDAO();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        findAll(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Xử lý yêu cầu POST ở đây nếu cần thiết
        // Ví dụ: nhận dữ liệu từ biểu mẫu, thêm mới dữ liệu vào cơ sở dữ liệu, sau đó chuyển hướng hoặc hiển thị thông báo thành công
    }

    private void findAll(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        List<News> news = newsDAO.getAllNews();
        req.setAttribute("news", news);
        req.getRequestDispatcher("/index.jsp").forward(req, res);
    }
}
