package DAO;

import DAO.connection.MyConnection;
import Model.News;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class NewsDAO {
    private final String SELECT_ALL = "SELECT * FROM news;";
    private final String SELECT_BY_ID = "SELECT * FROM news WHERE ID = ?;";
    private final String INSERT_INTO = "INSERT INTO news (name, description, detail, image) VALUES (?, ?, ?, ?);";

    private Connection connection;

    public NewsDAO() {
        connection = MyConnection.getInstance();
    }

    public List<News> getAllNews() {
        List<News> newsList = new ArrayList<>();
        try (PreparedStatement ps = connection.prepareStatement(SELECT_ALL)) {
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String description = rs.getString("description");
                String detail = rs.getString("detail");
                String image = rs.getString("image");
                newsList.add(new News(id, name, description, detail, image));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return newsList;
    }

    // Add other methods such as findById() and addNews() here
}
