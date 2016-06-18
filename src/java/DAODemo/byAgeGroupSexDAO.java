/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAODemo;

import DB.DBConnectionFactory;
import DB.DBConnectionFactoryStorage;
import ModelDemo.ByAgeGroupSex;
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
public class byAgeGroupSexDAO {
    
    public ArrayList<ByAgeGroupSex> ViewByAgeGroupSex() throws ParseException {
        try {
            DBConnectionFactoryStorage myFactory = DBConnectionFactoryStorage.getInstance();
            ArrayList<ByAgeGroupSex> ArrByAgeGroupSex = new ArrayList<ByAgeGroupSex>();
            Connection conn = myFactory.getConnection();
            PreparedStatement pstmt = conn.prepareStatement("SELECT * age_group");
            ResultSet rs = pstmt.executeQuery();

            while (rs.next()) {
                ByAgeGroupSex temp = new ByAgeGroupSex();
                 temp.setAgeGroup(rs.getString("ageGroup"));
                 temp.setYear(rs.getInt("censusYear"));
                 temp.setMaleCount(rs.getInt("totalMale"));
                 temp.setFemaleCount(rs.getInt("totalFemale"));
                 temp.setApproved(rs.getBoolean("approved"));
                ArrByAgeGroupSex.add(temp);
            }
            pstmt.close();
            conn.close();
            return ArrByAgeGroupSex;
        } catch (SQLException ex) {
            Logger.getLogger(byAgeGroupSexDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

     public boolean EncodeByAgeGroupSex(ByAgeGroupSex newByAgeGroupSex) {
        try {
            DBConnectionFactoryStorage myFactory = DBConnectionFactoryStorage.getInstance();
            Connection conn = myFactory.getConnection();
            String query = "INSERT INTO age_group"
                    + "(censusYear,ageGroup,totalMale,totalFemale,approved) "
                    + "VALUES (?,?,?,?,?);";
            PreparedStatement pstmt = conn.prepareStatement(query);

            pstmt.setInt(1, newByAgeGroupSex.getYear());
            pstmt.setString(2, newByAgeGroupSex.getAgeGroup());
            pstmt.setInt(3, newByAgeGroupSex.getMaleCount());
            pstmt.setInt(4, newByAgeGroupSex.getFemaleCount());
            pstmt.setBoolean(5, newByAgeGroupSex.isApproved());

            int rows = pstmt.executeUpdate();
            pstmt.close();
            conn.close();

            return rows == 1;
        } catch (SQLException ex) {
            Logger.getLogger(byAgeGroupSexDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    
    
}
