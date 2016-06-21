/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DAODemo.HighestCompletedDAO;
import DB.DBConnectionFactory;
import Model.record;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Shermaine
 */
public class recordDAO {

//    public boolean runRecordDAO(int formID, int year) {
//        try {
//            DBConnectionFactory myFactory = DBConnectionFactory.getInstance();
//            Connection conn = myFactory.getConnection();
//            //check if formID is already there
//            String query = "";
//            record record;
//            PreparedStatement pstmt = null;
//            
//            //if record exist
//            if () {
//                
//                //UPDATE IF ALL ARE TRUE
//                if () {
//                    int rows = pstmt.executeUpdate();
//
//                    //UPDATE IF ALL ARE FALSE     
//                } else {
//
//                }
//
//            } 
//            //if record exist
//            else {  
//                
//            if () {
//                String temp = "INSERT INTO record"
//                        + "(validated,formID,cencusYear,approved,approvedBy) "
//                        + "VALUES (?,?,?,?,?);";
//                pstmt = conn.prepareStatement(query);
//                record = new record();
//                pstmt.setBoolean(1, false);
//                pstmt.setInt(2, formID);
//                pstmt.setInt(3, year);
//                pstmt.setInt(4, 0);
//                pstmt.setInt(5, 0);
//                int rows = pstmt.executeUpdate();
//                //CREATE IF FALSE     
//            } else {
//                String temp = "INSERT INTO record"
//                        + "(validated,formID,cencusYear,approved,approvedBy) "
//                        + "VALUES (?,?,?,?,?);";
//                pstmt = conn.prepareStatement(query);
//                record = new record();
//                pstmt.setBoolean(1, false);
//                pstmt.setInt(2, formID);
//                pstmt.setInt(3, year);
//                pstmt.setInt(4, 0);
//                pstmt.setInt(5, 0);
//                int rows = pstmt.executeUpdate();
//            }
//            }
//            
//            pstmt.close();
//            conn.close();
//            int rows = pstmt.executeUpdate();
//            return rows == 1;
//        } catch (SQLException ex) {
//            Logger.getLogger(HighestCompletedDAO.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        return false;
//    }

}
