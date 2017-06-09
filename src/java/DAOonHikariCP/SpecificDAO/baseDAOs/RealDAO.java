package DAOonHikariCP.SpecificDAO.baseDAOs;

import DAOonHikariCP.Generic.DAOs_HikariCP.CDao;
import DAOonHikariCP.SpecificDAO.ConnectionPools.RealConnectionPool;

/**
 * Project               :PSSR检查表开发
 * Create DateTime       :2011-12-12 10:46:34
 * Author                :Wangjx(wangjinxu@macrosafety.com)
 * Description           : PSSR基础Dao
 * Version               :1.0
 * 
 */
public abstract class RealDAO extends CDao {
    protected void getCnPool() {
        this.thisCnPool = RealConnectionPool.getInstance() ;
    }
    
}
