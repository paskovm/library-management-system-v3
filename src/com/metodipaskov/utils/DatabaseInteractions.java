package com.metodipaskov.utils;

import java.sql.*;

public class DatabaseInteractions {

    private static final String HOST = "jdbc:mysql://127.0.0.1:3306/lms";
    private static final String USERNAME = "devuser";
    private static final String PASSWORD = "12345";
    private static final int FAILURE_CODE = -999;

    public static void main(String[] args) {
//        int result = createBook("Book Name", "Metodi Paskov", "comedy");
//        System.out.println(result);
//        removeBook(1011);
//        int result = createPerson("Metodi", "Paskov", "Sofia", 23412412, "m@p.com", "123",
//                0, 12, 3000);

    }

    public static int createPerson(String fName, String lName, String address, long phone, String email, String password,
                                   int office, int desk, double salary) {

        String sql = "INSERT INTO LMS.PERSON VALUES (0, \"" + fName + "\", \"" + lName + "\", \"" + address + "\", " + phone +
                     ", \"" + email + "\", \"" + password + "\")";
        int result = updateDb(sql);

        if (result == 1) {
            sql = "SELECT ID FROM LMS.PERSON WHERE FirstName = \"" + fName + "\" AND LastName = \"" + lName +
                  "\" AND Email = \"" + email + "\"";
            int id = queryDbForId(sql);

            if (id > 0) {
                if (salary > 0) {
                    sql = "INSERT INTO LMS.STAFF VALUES (" + id + ", " + salary + ")";
                    result = updateDb(sql);

                    if (result == 1) {
                        if (office > 0) {   // This must be Librarian
                            sql = "INSERT INTO LMS.LIBRARIAN VALUES (" + id + ", " + office + ")";
                            result = updateDb(sql);
                            if (result == 1) {
                                return id;
                            }

                        } else if (desk > 0) {  //This must be Clerk
                            sql = "INSERT INTO LMS.CLERK VALUES (" + id + ", " + desk + ")";
                            result = updateDb(sql);
                            if (result == 1) {
                                return id;
                            }

                        } else {
                            System.out.println("Can't determine what kind of staff you are trying to add to the system.");
                            System.out.println("Please, verify input info and have the administrator correct the db tables -> lms.person & lms.staff");
                        }
                    }

                } else {    // The user is Borrower type. Return the newly created user id
                    return id;
                }

            } else {
                System.out.println("Problem detected! User not created into Database.");
            }

        } else {
            System.out.println("Problem detected! User not inserted into Database.");
        }

        return FAILURE_CODE;
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

    public static int removeBook(int id) {
        String sql = "DELETE FROM LMS.BOOK WHERE ID = " + id;

        int result = updateDb(sql);
        if (result == FAILURE_CODE) {
            System.out.println("Problem detected! The book can't be deleted.");
        } else if (result == 0) {
            System.out.println("No book with id: " + id + ", found to delete.");
        } else {
            sql = "SELECT * FROM LMS.BOOK WHERE ID = " + id;

            result = queryDbForId(sql);
            if (result != FAILURE_CODE) {
                System.out.println("Problem detected! The book is not deleted.");
            }
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
