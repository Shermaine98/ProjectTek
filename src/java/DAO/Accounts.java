package DAO;


import DB.DBConnectionFactory;
import Model.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Geraldine Atayan
 */
public class Accounts {
    
    /**
     * Register User
     */
    public boolean register(User user) {
        try {
            DBConnectionFactory myFactory = DBConnectionFactory.getInstance();
            Connection conn = myFactory.getConnection();
            String query = "insert into users "
                    + "(division, firstName, lastName, gender, birthdate, email, username, password)"
                    + "values (?,?,?,?,?,?,?,password(?))";
            PreparedStatement pstmt = conn.prepareStatement(query);
            
            pstmt.setString(1, user.getDivision());
            pstmt.setString(2, user.getFirstName());
            pstmt.setString(3, user.getLastName());
            pstmt.setString(4, user.getGender());
            pstmt.setDate(5, user.getBirthdate());
            pstmt.setString(6, user.getEmail());
            pstmt.setString(7, user.getUsername());
            pstmt.setString(8, user.getPassword());
            
            int rows = pstmt.executeUpdate();
            conn.close();
            return rows == 1;
        } catch (SQLException ex) {
            Logger.getLogger(Accounts.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    
    /**
     * Login
     * @param User
     * @return 
     */
    public boolean authenticate(String username, String pass) {
        boolean valid = false;
        try {
            DBConnectionFactory myFactory = DBConnectionFactory.getInstance();
            Connection conn = myFactory.getConnection();

            String query = "select * from users where username = ? and password = ?";
            PreparedStatement pstmt = conn.prepareStatement(query);

            pstmt.setString(1, username);
            pstmt.setString(2, pass);

            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                valid = true;
            }

            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(Accounts.class.getName()).log(Level.SEVERE, null, ex);
        }
        return valid;
    }
    
    public User getUser(String username, String password) throws ParseException {
        User User = new User();

        try {
            DBConnectionFactory myFactory = DBConnectionFactory.getInstance();
            Connection conn = myFactory.getConnection();
            PreparedStatement pstmt = conn.prepareStatement("select * from users where "
                    + "username = ? and password = password(?)");
            pstmt.setString(1, username);
            pstmt.setString(2, password);
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {

                User.setUserID(rs.getInt("userID"));
                User.setDivision(rs.getString("division"));
                User.setFirstName(rs.getString("firstName"));
                User.setLastName(rs.getString("lastName"));
                User.setGender(rs.getString("gender"));
                User.setBirthdate(rs.getDate("birthdate"));
                User.setEmail(rs.getString("email"));
                User.setUsername(rs.getString("username"));
                User.setPassword(rs.getString("password"));
            }

            pstmt.close();
            rs.close();
            conn.close();

            return User;
        } catch (SQLException ex) {
            Logger.getLogger(Accounts.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
}
