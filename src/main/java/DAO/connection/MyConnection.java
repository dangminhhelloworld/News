package DAO.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MyConnection {
    public static Connection connection;
    private static final String URL = "jdbc:mysql://localhost:3306/dbNews";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "root";

    public static synchronized Connection getInstance() {
        if (connection == null) {
            connection = createConnection();
        }
        return connection;
    }

    private static Connection createConnection() {
        Connection conn = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            // Có thể xử lý ngoại lệ ở đây
        }
        return conn;
    }

    public static synchronized void closeConnection() {
        if (connection != null) {
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
                // Có thể xử lý ngoại lệ ở đây
            } finally {
                connection = null;
            }
        }
    }
}
