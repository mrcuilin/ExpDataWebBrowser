/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Generic.Pools;

import java.sql.Connection;
import java.sql.SQLException;
import org.apache.ibatis.session.SqlSession;

/**
 *
 * @author cuilin
 */
public interface CAbsConnectionPool {
    public void freePoolItem(Connection ses) throws SQLException;
    public Connection getPoolItem() throws SQLException;
    
}
