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
                 temp.setYear(rs.getInt("cencusYear"));
                 temp.setLocation(rs.getString("location"));
                 temp.setAgeGroup(rs.getString("ageGroup"));
                 temp.setSex(rs.getString("sex"));
                 temp.setSingle(rs.getInt("single"));
                 temp.setMarried(rs.getInt("married"));
                  temp.setWidowed(rs.getInt("widowed"));
                 temp.setDivorcedSeparated(rs.getInt("divorcedSeparated"));
                 temp.setCommonLawLiveIn(rs.getInt("commononLawLiveIn"));
                 temp.setUnknown(rs.getInt("unkown"));
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

     public boolean EncodeMaritalStatus(ArrayList<MaritalStatus> newMaritalStatus) {
        try {
            DBConnectionFactory myFactory = DBConnectionFactory.getInstance();
            Connection conn = myFactory.getConnection();
             int rows = 0;
            String query = "INSERT INTO marital_status"
                    + "(censusYear,location,ageGroup,sex, single, married, widowed, divorcedSeparated, commonLawLiveIn, unkown, approved) "
                    + "VALUES (?,?,?,?,?,?,?,?,?,?,?);";
            PreparedStatement pstmt = conn.prepareStatement(query);
           int i=0;
            for(MaritalStatus object: newMaritalStatus ){
          
            pstmt.setInt(1, object.getYear());
            pstmt.setString(2, object.getLocation());
            pstmt.setString(3, object.getAgeGroup());
            pstmt.setString(4, object.getsex());
            pstmt.setInt(5, object.getSingle());
            pstmt.setInt(6, object.getMarried());
            pstmt.setInt(7, object.getWidowed());
            pstmt.setInt(8, object.getDivorcedSeparated());
            pstmt.setInt(9, object.getCommonLawLiveIn());
            pstmt.setInt(10, object.getUnknown());
            pstmt.setBoolean(11, object.isApproved());

             pstmt.addBatch();
               i++;
            }
            
            if(i%1000==0 || i== newMaritalStatus.size()){
               pstmt.executeBatch();
               }
                
            pstmt.close();
            conn.close();

             return true;
        } catch (SQLException ex) {
            Logger.getLogger(MaritalStatusDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    
}
