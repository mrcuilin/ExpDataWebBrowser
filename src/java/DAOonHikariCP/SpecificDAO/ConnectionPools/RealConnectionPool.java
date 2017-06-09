package DAOonHikariCP.SpecificDAO.ConnectionPools;

import Generic.Pools.CAbsConnectionPool;
import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;
import java.sql.Connection;
import java.sql.SQLException;

/**
 * Project               :PSSR检查表开发
 * Create DateTime       :2011-12-12 10:38:03
 * Author                :Wangjx(wangjinxu@macrosafety.com)
 * Description           :
 * Version               :1.0
 * 
 */
public class RealConnectionPool implements CAbsConnectionPool {
    private static RealConnectionPool pssrInstance = new  RealConnectionPool();
    private static HikariConfig config;
    private static HikariDataSource ds;
    
    static {
        config = new HikariConfig("/DAOonHikariCP/conf/ConnPool.properties");
        ds = new HikariDataSource(config);
    }    
    
    private RealConnectionPool(){}
    
    public static RealConnectionPool getInstance(){
        if( RealConnectionPool.pssrInstance == null ){
            RealConnectionPool.pssrInstance = new RealConnectionPool();
        }
        return RealConnectionPool.pssrInstance;
    }

    
    
    @Override
    public void freePoolItem(Connection conn ) throws SQLException{
        conn.close();
    }

    @Override
    public Connection getPoolItem() throws SQLException {
        return ds.getConnection( );
    }
}
