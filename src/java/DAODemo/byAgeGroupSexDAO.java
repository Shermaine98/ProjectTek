/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAODemo;

import DB.DBConnectionFactory;
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
            DBConnectionFactory myFactory = DBConnectionFactory.getInstance();
            ArrayList<ByAgeGroupSex> ArrByAgeGroupSex = new ArrayList<ByAgeGroupSex>();
            Connection conn = myFactory.getConnection();
            PreparedStatement pstmt = conn.prepareStatement("");
            ResultSet rs = pstmt.executeQuery();

            while (rs.next()) {
                ByAgeGroupSex temp = new ByAgeGroupSex();
               
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

     public boolean EncodeByAgeGroupSex(byAgeGroupSexDAO newByAgeGroupSexDAO) {
        try {
            DBConnectionFactory myFactory = DBConnectionFactory.getInstance();
            Connection conn = myFactory.getConnection();
            String query = "INSERT INTO _"
                    + "(_) "
                    + "VALUES (_);";
            PreparedStatement pstmt = conn.prepareStatement(query);

//            pstmt.setInt(1, newByAgeGroupSexDAO);
//            pstmt.setDouble(2, newByAgeGroupSexDAO.());
//            pstmt.setDouble(3, newByAgeGroupSexDAO.());

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
