/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DB;

import java.sql.Connection;

/**
 *
 * @author shermainesy
 */
public abstract class  DBConnectionFactoryStorageDB {
     String url = "jdbc:mysql://127.0.0.1:3306/storageDB";
    String username = "root";
    String password = "";

    /**
     *
     * @return
     */
    public static DBConnectionFactoryStorageDB getInstance() {
        return new DBConnectionFactoryImplStorageDB();
    }

    /**
     *
     * @return
     */
    public abstract Connection getConnection();
}
