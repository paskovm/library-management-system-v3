package com.metodipaskov.utils;

import java.sql.*;

public class DatabaseInteractions {

    private static final String HOST = "jdbc:mysql://127.0.0.1:3306/lms";
    private static final String USERNAME = "devuser";
    private static final String PASSWORD = "12345";

    private static final int FAILURE_CODE = -999;

    public static void main(String[] args) {
        int result = createBook("Book Name", "Metodi Paskov", "comedy");
        System.out.println(result);
    }

    public static int createBook(String title, String author, String genre) {
        String sql = "INSERT INTO LMS.BOOK VALUES (0, \"" + title + "\", \"" + author + "\", \"" + genre + "\", false)";

        int result = updateDb(sql);
        if (result == FAILURE_CODE) {
            System.out.println("Problem detected! The book can't be created.");
        } else {
            sql = "SELECT ID FROM LMS.BOOK WHERE title = \"" + title + "\" AND Author = \"" + author + "\"";

            int id = queryDbForId(sql);
            if (id == FAILURE_CODE) {
                System.out.println("Problem detected! The book is not created.");
            }
            return id;
        }
        return result;
    }

    private static int queryDbForId(String sqlStatement) {
        try (Connection connection = DriverManager.getConnection(HOST, USERNAME, PASSWORD);
             Statement statement = connection.createStatement()) {

            ResultSet result = statement.executeQuery(sqlStatement);
            if (result.next()) {
                return result.getInt("ID");
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return FAILURE_CODE;
    }

    private static int updateDb(String sqlStatement) {
        try (Connection connection = DriverManager.getConnection(HOST, USERNAME, PASSWORD);
             Statement statement = connection.createStatement()) {

            return statement.executeUpdate(sqlStatement);

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return FAILURE_CODE;
    }

}
