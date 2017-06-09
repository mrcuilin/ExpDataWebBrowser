/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package experiment.DAO_mine.baseDAO;

import Generic.HashMap;
import experiment.RealDAO_Proxy;
import java.util.Vector;

/**
 *
 * @author cuilin
 */
public class SensorDataDAO extends RealDAO_Proxy {

    @Override
    protected void setValueObjClass() {
        this.correspondValueObj = Sensordata.class;
    }

    @Override
    protected void setTableName() {
        this.tableName = "sensordata";
    }

    @Override
    protected void setKeyColumns() {
        this.idColumnName = "dataid,sessionid";
    }
    public String getTableName() {
        return this.tableName;
    }
    public Sensordata[] findBySession( String sessionid ) {
        String SQL = "select * from `" + this.tableName + "` where `sessionid`='" + sessionid + "' order by `dataid`";
        Vector<HashMap> hmr = this.doSpecialThing(SQL);
        Sensordata[] r = new Sensordata[ hmr.size( ) ];
        r = this.getCValuesFromSpecifiedOpt(hmr, r);
        return r;
    }
    
    public Sensordata[] getRecentData( String sessionid ) {
        String SQL = "select * from `" + this.tableName + "` where `sessionid`='" + sessionid + "' order by `dataid` DESC limit 0, 10";
        Vector<HashMap> hmr = this.doSpecialThing(SQL);
        Sensordata[] r = new Sensordata[ hmr.size( ) ];
        r = this.getCValuesFromSpecifiedOpt(hmr, r);
        return r;
    }
    
    public Sensordata[] BO_ListRecent( String grpId ) {
        Status[] ses = (new StatusDAO()).findByConds( "SESSION", grpId );
        if( ses.length > 0 && (!ses[0].VALUE.equals("")) ) {
            return this.getRecentData( ses[0].VALUE );
        }
        else {
            return new Sensordata[0];
        }
    }
    
}
