/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAODemo;

import DB.DBConnectionFactory;
import ModelDemo.MaritalStatus;
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
public class MaritalStatusDAO {
    
    public ArrayList<MaritalStatus> ViewMaritalStatus() throws ParseException {
        try {
            DBConnectionFactory myFactory = DBConnectionFactory.getInstance();
            ArrayList<MaritalStatus> ArrMaritalStatus = new ArrayList<MaritalStatus>();
            Connection conn = myFactory.getConnection();
            PreparedStatement pstmt = conn.prepareStatement("SELECT * marital_status");
            ResultSet rs = pstmt.executeQuery();

            while (rs.next()) {
                MaritalStatus temp = new MaritalStatus();
                 temp.setAgeGroup(rs.getString("ageGroup"));
                 temp.setYear(rs.getInt("censusYear"));
                 temp.setMaleCount(rs.getInt("totalMale"));
                 temp.setFemaleCount(rs.getInt("totalFemale"));
                 temp.setMaritalStatus(rs.getString("maritalStatus"));
                 temp.setApproved(rs.getBoolean("approved"));
                ArrMaritalStatus.add(temp);
            }
            pstmt.close();
            conn.close();
            return ArrMaritalStatus;
        } catch (SQLException ex) {
            Logger.getLogger(MaritalStatusDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

     public boolean EncodeMaritalStatus(MaritalStatus newMaritalStatus) {
        try {
            DBConnectionFactory myFactory = DBConnectionFactory.getInstance();
            Connection conn = myFactory.getConnection();
            String query = "INSERT INTO marital_status"
                    + "(censusYear,ageGroup,martialStatus,totalMale,totalFemale,approved) "
                    + "VALUES (?,?,?,?,?,?);";
            PreparedStatement pstmt = conn.prepareStatement(query);

            pstmt.setInt(1, newMaritalStatus.getYear());
            pstmt.setString(2, newMaritalStatus.getAgeGroup());
            pstmt.setInt(3, newMaritalStatus.getMaleCount());
            pstmt.setInt(4, newMaritalStatus.getMaleCount());
            pstmt.setInt(5, newMaritalStatus.getFemaleCount());
            pstmt.setBoolean(6, newMaritalStatus.isApproved());

            int rows = pstmt.executeUpdate();
            pstmt.close();
            conn.close();

            return rows == 1;
        } catch (SQLException ex) {
            Logger.getLogger(MaritalStatusDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    
}
