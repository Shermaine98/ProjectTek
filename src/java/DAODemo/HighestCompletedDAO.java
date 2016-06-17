/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAODemo;

import DB.DBConnectionFactory;
import ModelDemo.HighestCompleted;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author shermainesy
 */
public class HighestCompletedDAO {
     public ArrayList<HighestCompleted> ViewHighestCompleted() throws ParseException {
        try {
            DBConnectionFactory myFactory = DBConnectionFactory.getInstance();
            ArrayList<HighestCompleted> ArrHighestCompleted = new ArrayList<HighestCompleted>();
            Connection conn = myFactory.getConnection();
            PreparedStatement pstmt = conn.prepareStatement("SELECT * highest_completed");
            ResultSet rs = pstmt.executeQuery();

            while (rs.next()) {
                HighestCompleted temp = new HighestCompleted();
                 temp.setAgeGroup(rs.getString("ageGroup"));
                 temp.setYear(rs.getInt("censusYear"));
                 temp.setMaleCount(rs.getInt("totalMale"));
                 temp.setFemaleCount(rs.getInt("totalFemale"));
                 temp.setHighestCompleted(rs.getString("highestCompleted"));
                 temp.setApproved(rs.getBoolean("approved"));
                ArrHighestCompleted.add(temp);
            }
            pstmt.close();
            conn.close();
            return ArrHighestCompleted;
        } catch (SQLException ex) {
            Logger.getLogger(HighestCompletedDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

     public boolean EncodeMaritalStatus(HighestCompleted newHighestCompleted) {
        try {
            DBConnectionFactory myFactory = DBConnectionFactory.getInstance();
            Connection conn = myFactory.getConnection();
            String query = "INSERT INTO highest_completed"
                    + "(censusYear,ageGroup,highestCompleted,totalMale,totalFemale,approved) "
                    + "VALUES (?,?,?,?,?,?);";
            PreparedStatement pstmt = conn.prepareStatement(query);

            pstmt.setInt(1, newHighestCompleted.getYear());
            pstmt.setString(2, newHighestCompleted.getAgeGroup());
            pstmt.setString(3, newHighestCompleted.getHighestCompleted());
            pstmt.setInt(4, newHighestCompleted.getMaleCount());
            pstmt.setInt(5, newHighestCompleted.getFemaleCount());
            pstmt.setBoolean(6, newHighestCompleted.isApproved());

            int rows = pstmt.executeUpdate();
            pstmt.close();
            conn.close();

            return rows == 1;
        } catch (SQLException ex) {
            Logger.getLogger(HighestCompletedDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    
}
