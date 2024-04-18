package DAO.testDAO;

import DAO.NewsDAO;
import Model.News;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.util.List;

public class TestNews {

    private NewsDAO newsDAO;

    @BeforeEach
    void setUp() {
        newsDAO = new NewsDAO();
    }

    @Test
    void testGetAllNews() {
        // Gọi phương thức để lấy danh sách tin tức
        List<News> newsList = newsDAO.getAllNews();

        // Kiểm tra xem danh sách tin tức có null hay không
        assertNotNull(newsList, "Danh sách tin tức không được null");

        // Kiểm tra số lượng tin tức lấy được
        // Đây chỉ là một ví dụ và có thể phụ thuộc vào dữ liệu thực tế trong cơ sở dữ liệu của bạn
        // Ví dụ: assertEquals(0, newsList.size(), "Danh sách tin tức không được trống");

        // Kiểm tra dữ liệu của mỗi tin tức
        // Đây chỉ là một ví dụ và có thể phụ thuộc vào dữ liệu thực tế trong cơ sở dữ liệu của bạn
        // Ví dụ: assertEquals("Tiêu đề tin tức 1", newsList.get(0).getName(), "Tên tin tức không chính xác");
        // Ví dụ: assertEquals("Mô tả tin tức 1", newsList.get(0).getDescription(), "Mô tả tin tức không chính xác");
    }

    private void assertNotNull(List<News> newsList, String s) {

    }

    public static void main(String[] args) {
        NewsDAO newsDAO = new NewsDAO();

        // Lấy danh sách tin tức từ cơ sở dữ liệu
        List<News> newsList = newsDAO.getAllNews();

        // Hiển thị dữ liệu tin tức
        for (News news : newsList) {
            System.out.println("ID: " + news.getId());
            System.out.println("Name: " + news.getName());
            System.out.println("Description: " + news.getDescription());
            System.out.println("Detail: " + news.getDetail());
            System.out.println("Image: " + news.getImage());
            System.out.println("----------------------------------");
        }

        System.out.println("Hiện thị dữ liệu là ngon r");
    }
}

