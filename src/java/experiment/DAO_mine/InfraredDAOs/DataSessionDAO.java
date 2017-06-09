/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package experiment.DAO_mine.InfraredDAOs;

import experiment.DAO_mine.TunnelDAOs.*;
import experiment.DAO_mine.baseDAO.*;
import Generic.DAOs.CValue;
import Generic.HashMap;
import experiment.RealDAO_Proxy;
import java.text.Collator;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Map;
import java.util.Vector;

/**
 *
 * @author cuilin
 */
public class DataSessionDAO extends experiment.DAO_mine.baseDAO.DataSessionDAO {

    @Override
    protected void setTableName() {
        this.tableName = "datasession_infr";
    }

    
    public HashMap[] listSessions( String sensorGroupId, String day ) {
        //String SQL = "Select * from `" + this.tableName + "` where `s_sensorGroup`='" + sensorGroupId + "' and sessionid like '" + day + "%'";
        String SQL = "Select A.*, B.sessionid, count(*) as COUNT from `" + this.tableName + "` as A , `" + ( new SensorDataDAO()).getTableName() + "` as B where `s_sensorGroup`='" + sensorGroupId + "' and A.sessionid like '" + day + "%' and A.sessionid = B.sessionid group by B.sessionid ";
        Vector<HashMap> hmr = this.doSpecialThing(SQL);
        Datasession[] r = new Datasession[ hmr.size()];
        r = this.getCValuesFromSpecifiedOpt(hmr, r);
        HashMap[] rr = new HashMap[ r.length ];
        for( int i = 0; i < r.length; i++ ) {
            rr[i] = new HashMap();
            rr[i].put("SES", r[i]);
            rr[i].put("COUNT", String.valueOf( hmr.get(i).get("count")) );
        }
        return rr;
    }
    
}
