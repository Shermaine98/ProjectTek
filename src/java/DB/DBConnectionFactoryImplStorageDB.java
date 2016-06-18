/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author shermainesy
 */
public class DBConnectionFactoryImplStorageDB extends DBConnectionFactoryStorageDB {
    
 /**
     *
     * @return
     */
    @Override
    public Connection getConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url, username, password);
            return conn;
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DBConnectionFactoryImplStorageDB.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(DBConnectionFactoryImplStorageDB.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}
