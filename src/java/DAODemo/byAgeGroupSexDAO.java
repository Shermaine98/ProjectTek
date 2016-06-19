/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAODemo;

import DB.DBConnectionFactoryStorageDB;
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
                 temp.setAgeGroup(rs.getString("ageGroup"));
                 temp.setYear(rs.getInt("censusYear"));
                 temp.setBarangay(rs.getString("location"));
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
    
    public ArrayList<Integer> GetAllCensusYear() throws ParseException {
        try {
            DBConnectionFactoryStorageDB myFactory = DBConnectionFactoryStorageDB.getInstance();
            ArrayList<Integer> censusYear = new ArrayList<Integer>();
            Connection conn = myFactory.getConnection();
            PreparedStatement pstmt = conn.prepareStatement("SELECT censusYear from age_group group by censusYear;");
            ResultSet rs = pstmt.executeQuery();

            while (rs.next()) {
             int i =0;
              i =  rs.getInt("censusYear");
                censusYear.add(i);
            }
            pstmt.close();
            conn.close();
            return censusYear;
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
                    + " (censusYear,location,ageGroup,totalMale,totalFemale,approved) "
                    + " VALUES (?,?,?,?,?,?); ";
            PreparedStatement pstmt = conn.prepareStatement(query);
            int i=0;
            for(ByAgeGroupSex object: newByAgeGroupSex ){
             
             pstmt.setInt(1, object.getYear());
             pstmt.setString(2, object.getBarangay());
            pstmt.setString(3, object.getAgeGroup());
            pstmt.setInt(4, object.getMaleCount());
            pstmt.setInt(5, object.getFemaleCount());
            pstmt.setBoolean(6, object.isApproved());

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
    
    
}
