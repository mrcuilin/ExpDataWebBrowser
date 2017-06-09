/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package experiment.DAO_mine.FluidbedDAOs;

import Generic.HashMap;
import experiment.RealDAO_Proxy;
import java.util.Vector;

/**
 *
 * @author cuilin
 */
public class sensordataDAO extends RealDAO_Proxy{

    @Override
    protected void setValueObjClass() {
        this.correspondValueObj = sensordata.class;
    }

    @Override
    protected void setTableName() {
        this.tableName = "sensordata_fbed";
    }

    @Override
    protected void setKeyColumns() {
        this.idColumnName = "sessionId,sampleTimeStamp";
    }
    public String getTableName() {
        return this.tableName;
    }
    public sensordata[] findBySession( String sessionid ) {
        String SQL = "select * from `" + this.tableName + "` where `sessionid`='" + sessionid + "' order by `sampleTimeStamp`";
        Vector<HashMap> hmr = this.doSpecialThing(SQL);
        sensordata[] r = new sensordata[ hmr.size( ) ];
        r = this.getCValuesFromSpecifiedOpt(hmr, r);
        return r;
    }    
    
}
