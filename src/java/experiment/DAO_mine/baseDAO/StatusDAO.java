/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package experiment.DAO_mine.baseDAO;

import Generic.HashMap;
import Generic.CUtils;
import Generic.DAOs.ITransactionOperate;
import experiment.RealDAO_Proxy;
import java.sql.Connection;
import java.util.Vector;
/**
 *
 * @author cuilin
 */
public class StatusDAO extends RealDAO_Proxy {
        class transOpt implements ITransactionOperate {
            public String sensorGrpid;
            @Override
            public boolean operate(Connection cn) throws Exception {
                StatusDAO dao = new StatusDAO();
                String SQL = "update `" + dao.tableName + "` set `VALUE`='YES' where `KEY`='RUNNING' and `SGROUP`='" + sensorGrpid + "'";
                boolean success = dao.doSpecialThingWithoutResult( SQL, cn );
                if( ! success  ) return false;
                String sessionId = CUtils.getUniqueId();
                SQL = "update `" + dao.tableName + "` set `VALUE`='" + sessionId + "' where `KEY`='SESSION' and `SGROUP`='" + sensorGrpid + "'"; 
                success = dao.doSpecialThingWithoutResult( SQL, cn );
                if( ! success  ) return false;
                
                DataSessionDAO dao2 = new DataSessionDAO();
                Datasession newDS = new Datasession();
                newDS.sessionid = sessionId;
                newDS.s_sensorGroup = sensorGrpid;
                newDS.s_beginTime = CUtils.getNow();
                success = dao2.insert(newDS, cn );
                if( ! success ) return false;
                return true;
            }
            @Override
            public String getMessage() {
                throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
            }
            
        };
    
    @Override
    protected void setValueObjClass() {
        this.correspondValueObj = Status.class;
    }

    @Override
    protected void setTableName() {
        this.tableName = "status";
    }

    @Override
    protected void setKeyColumns() {
        this.idColumnName = "KEY,SGROUP";
    }
    
    @Deprecated public Status[] findAll_FortestCase() {
        String SQL = " select * from `" + this.tableName + "`";
        Vector<HashMap> rh = this.doSpecialThing(SQL);
        Status[] r = new Status[ rh.size() ];
        r = this.getCValuesFromSpecifiedOpt(rh, r );
        return r;
    }
    @Deprecated public Status[] findByX_For_testcase( String X ) {
        String SQL = " select * from `" + this.tableName + "` where SGROUP='" + X + "'";
        Vector<HashMap> rh = this.doSpecialThing(SQL);
        experiment.DAO_mine.baseDAO.Status[] r = new experiment.DAO_mine.baseDAO.Status[ rh.size() ];
        r = this.getCValuesFromSpecifiedOpt(rh, r );
        return r;
    }    
    
    public Status[] findByConds( String KEY, String sensorGroupId ) {
        String SQL = " select * from `" + this.tableName + "` where SGROUP='" + sensorGroupId + "'";
        if( KEY != null )  SQL = SQL + " and `KEY`='" + KEY + "'";
        Vector<HashMap> rh = this.doSpecialThing(SQL);
        experiment.DAO_mine.baseDAO.Status[] r = new experiment.DAO_mine.baseDAO.Status[ rh.size() ];
        r = this.getCValuesFromSpecifiedOpt(rh, r );
        return r;
    }
    
    public boolean StartSample( String sensorGroupId ) {
        transOpt opt = new transOpt();
        opt.sensorGrpid = sensorGroupId;
        
        boolean operateSuccess = RealDAO_Proxy.transactionOperate(thisCnPool, opt);
        return operateSuccess;
    }
    
    public boolean EndSample( String sensorGroupId ) {
        class transOpt implements ITransactionOperate {
            public String sensorGrpid;
            @Override
            public boolean operate(Connection cn) throws Exception {
                StatusDAO dao = new StatusDAO();
                String SQL = "update `" + dao.tableName + "` set `VALUE`='NO' where `KEY`='RUNNING' and `SGROUP`='" + sensorGrpid + "'";
                boolean success = dao.doSpecialThingWithoutResult( SQL, cn );
                if( ! success  ) return false;

                SQL = "update `" + dao.tableName + "` set `VALUE`='' where `KEY`='SESSION' and `SGROUP`='" + sensorGrpid + "'"; 
                success = dao.doSpecialThingWithoutResult( SQL, cn );
                if( ! success  ) return false;
                return true;
            }
            @Override
            public String getMessage() {
                throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
            }
            
        }
        transOpt opt = new transOpt();
        opt.sensorGrpid = sensorGroupId;
        
        boolean operateSuccess = RealDAO_Proxy.transactionOperate(thisCnPool, opt);
        return operateSuccess;        
    }
    
    public boolean BO_Start( String sensorGroup ) {
        Status[] runstatus = ( new StatusDAO()).findByConds("RUNNING", sensorGroup);
        if( runstatus.length > 0 && runstatus[0].VALUE.equalsIgnoreCase("NO") ) {
            return this.StartSample(sensorGroup);
        }
        else {
            if( runstatus.length == 0 ) 
                return false;
            else 
                return true;
        }
    }
    
    public boolean BO_End( String sensorGroup ) {
        Status[] runstatus = ( new StatusDAO()).findByConds("RUNNING", sensorGroup);
        if( runstatus.length > 0 && runstatus[0].VALUE.equalsIgnoreCase("YES") ) {
            return this.EndSample(sensorGroup);
        }
        else {
            if( runstatus.length == 0 ) 
                return false;
            else 
                return true;
        }
    }    
    
    public static void main(String[] args) {
        //(new StatusDAO()).StartSample("1");
        
        //(new StatusDAO()).EndSample("1");
    }
    
}
