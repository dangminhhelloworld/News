package DAO.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.ResultSet;

public class TestConnection {
    public static void main(String[] args) {
        // Lấy đối tượng kết nối từ lớp MyConnection
        Connection conn = MyConnection.getInstance();

        // Kiểm tra kết nối
        try {
            if (conn != null) {
                System.out.println("Kết nối đã được thiết lập.");

                // Thực hiện một truy vấn đơn giản
                Statement stmt = conn.createStatement();
                ResultSet rs = stmt.executeQuery("SELECT 1");
                while (rs.next()) {
                    int result = rs.getInt(1);
                    System.out.println("Kết quả truy vấn: " + result);
                }
            } else {
                System.out.println("Không thể thiết lập kết nối.");
            }
        } catch (SQLException e) {
            System.out.println("Lỗi khi thực hiện truy vấn: " + e.getMessage());
        } finally {
            // Đóng kết nối sau khi sử dụng
            MyConnection.closeConnection();
            System.out.println("Kết nối đã đóng.");
            System.out.println("Hiện như này là ngon rồi.");

        }
    }
}
