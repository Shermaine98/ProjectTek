/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAODemo;

import DB.DBConnectionFactoryStorageDB;
import Model.record;
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
            DBConnectionFactoryStorageDB myFactory = DBConnectionFactoryStorageDB.getInstance();
            ArrayList<ByAgeGroupSex> ArrByAgeGroupSex = new ArrayList<ByAgeGroupSex>();
            Connection conn = myFactory.getConnection();
            PreparedStatement pstmt = conn.prepareStatement("SELECT * age_group");
            ResultSet rs = pstmt.executeQuery();

            while (rs.next()) {
                ByAgeGroupSex temp = new ByAgeGroupSex();
                 temp.setFormID(rs.getInt("formID"));
                 temp.setAgeGroup(rs.getString("ageGroup"));
                 temp.setYear(rs.getInt("censusYear"));
                 temp.setBarangay(rs.getString("location"));
                 temp.setMaleCount(rs.getInt("totalMale"));
                 temp.setFemaleCount(rs.getInt("totalFemale"));
                     temp.setValidation(rs.getBoolean("validation"));
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
    
    public ArrayList<record> GetAllValidated() throws ParseException {
        try {
            DBConnectionFactoryStorageDB myFactory = DBConnectionFactoryStorageDB.getInstance();
            Connection conn = myFactory.getConnection();
            ArrayList<record> records = new ArrayList<record>();
            PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM record where formID >=20000 && `validation` =1;");
            ResultSet rs = pstmt.executeQuery();
            
            while (rs.next()) {
                 record temp = new record();
                 temp.setFormName(rs.getString("formID"));
                 temp.setCensusYear(rs.getInt("censusYear"));
                 temp.setValidation(rs.getBoolean("validation"));
                 temp.setApproved(rs.getBoolean("approved"));
                 records.add(temp);
            }
            pstmt.close();
            conn.close();
            return records;
        } catch (SQLException ex) {
            Logger.getLogger(byAgeGroupSexDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    

     public boolean EncodeByAgeGroupSex(ArrayList<ByAgeGroupSex> newByAgeGroupSex) {
        try {
           
            DBConnectionFactoryStorageDB myFactory = DBConnectionFactoryStorageDB.getInstance();
            Connection conn = myFactory.getConnection();
            String query = " INSERT INTO age_group "
                    + " (formID,censusYear,location,ageGroup,totalMale,totalFemale,validation) "
                    + " VALUES (?,?,?,?,?,?,?); ";
            PreparedStatement pstmt = conn.prepareStatement(query);
            int i=0;
            for(ByAgeGroupSex object: newByAgeGroupSex ){
             pstmt.setInt(1, object.getFormID());  
             pstmt.setInt(2, object.getYear());
             pstmt.setString(3, object.getBarangay());
             pstmt.setString(4, object.getAgeGroup());
             pstmt.setInt(5, object.getMaleCount());
             pstmt.setInt(6, object.getFemaleCount());
             pstmt.setBoolean(7, object.isvalidated());

               pstmt.addBatch();
               i++;
            }
            
               if(i%1000==0 || i== newByAgeGroupSex.size()){
               pstmt.executeBatch();
               }
                
            pstmt.close();
            conn.close();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(byAgeGroupSexDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    
     public Integer getFormID() throws SQLException {
        DBConnectionFactoryStorageDB myFactory = DBConnectionFactoryStorageDB.getInstance();
        Integer i;
        try (Connection conn = myFactory.getConnection()) {
            i = 0;
            String query = "SELECT MAX(formID) from age_group";
            PreparedStatement pstmt = conn.prepareStatement(query);
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                i = rs.getInt("MAX(formID)");
            }
            if (i == 0) {
                i = 200000000;
            } else if (i == 299999999) {
                i = -1;
            } else {
                i += 1;
            }
            conn.close();
            pstmt.close();
            rs.close();
        }
        return i;
    }
    
}
