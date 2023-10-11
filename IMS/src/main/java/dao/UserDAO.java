package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.User;

public class UserDAO {
    private DBContext dbContext;

    public UserDAO() {
        dbContext = new DBContext();
    }

    // User login
    public User login(String email, String password) {
        try (Connection connection = dbContext.getConnection()) {
            String query = "SELECT user_id, full_name, user_role FROM User WHERE email = ? AND password = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, email);
            preparedStatement.setString(2, password);

            ResultSet resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                int userId = resultSet.getInt("user_id");
                String fullName = resultSet.getString("full_name");
                String userRole = resultSet.getString("user_role");

                User user = new User();
                user.setUserId(userId);
                user.setFullName(fullName);
                user.setEmail(email);
                user.setUserRole(userRole);

                return user;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null; // Return null if login fails
    }

    // Register a new user
    public boolean register(User user) {
        try (Connection connection = dbContext.getConnection()) {
            String query = "INSERT INTO User (full_name, email, mobile, password, avatar_image, verification_code, is_verified, user_role) "
                    + "VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, user.getFullName());
            preparedStatement.setString(2, user.getEmail());
            preparedStatement.setString(3, user.getMobile());
            preparedStatement.setString(4, user.getPassword());
            preparedStatement.setString(5, user.getAvatarImage());
            preparedStatement.setString(6, user.getVerificationCode());
            preparedStatement.setBoolean(7, user.isIsVerified());
            preparedStatement.setString(8, user.getUserRole());

            int rowsInserted = preparedStatement.executeUpdate();

            return rowsInserted > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    // Other user-related methods (e.g., fetching user information)
    // ...

    // You can add more methods here for other user-related SQL operations
}
