/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package experiment.DAO_mine.FluidbedDAOs;

import Generic.HashMap;
import experiment.DAO_mine.baseDAO.Datasession;
import experiment.DAO_mine.baseDAO.SensorDataDAO;
import experiment.RealDAO_Proxy;
import java.text.Collator;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Vector;

/**
 *
 * @author cuilin
 */
public class datasessionDAO extends RealDAO_Proxy {

    @Override
    protected void setValueObjClass() {
        this.correspondValueObj = datasession.class;
    }

    @Override
    protected void setTableName() {
        this.tableName = "datasession_fbed";
    }

    @Override
    protected void setKeyColumns() {
        this.idColumnName = "sampleTime";
    }
    
    public String[] ListSessionYears( ){
        String SQL = "select sampleTime from `" + this.tableName + "`";
        Vector<HashMap> sesids = this.doSpecialThing(SQL);
        HashSet<String> Years = new HashSet<String>();
        for( HashMap hm : sesids ) {
            String name = (String)hm.get("sampleTime");
            Years.add( name.substring(0,4) );
        }
        String[] YearsR = new String[ Years.size() ];
        YearsR = Years.toArray(YearsR);
        Arrays.sort(YearsR, new Comparator<String>() {
            @Override
            public int compare(String o1, String o2) {
                return Collator.getInstance().compare(o2, o1);
            }
        } );
        return YearsR;
    }

    public String[] ListSessionDays( String year ){
        
        String SQL = "Select sampleTime from `" + this.tableName + "` where sampleTime like '" + year + "%'";
        Vector<HashMap> sesids = this.doSpecialThing(SQL);
        HashSet<String> Days = new HashSet<String>();
        for( HashMap hm : sesids ) {
            String name = (String)hm.get("sampleTime");
            Days.add( name.substring(0,8) );
        }
        String[] DaysR = new String[ Days.size() ];
        DaysR = Days.toArray(DaysR);
        Arrays.sort(DaysR, new Comparator<String>() {
            @Override
            public int compare(String o1, String o2) {
                return Collator.getInstance().compare(o2, o1);
            }
        } );
        return DaysR;
    }
    
    
    public HashMap[] listSessions( String day ) {
        //String SQL = "Select * from `" + this.tableName + "` where `s_sensorGroup`='" + sensorGroupId + "' and sessionid like '" + day + "%'";
        String SQL = "Select A.*, B.sessionid, count(*) as COUNT from `" + this.tableName + "` as A , `" + ( new sensordataDAO()).getTableName() + "` as B where "
                + "A.sampleTime like '" + day + "%' and A.sampleTime = B.sessionid group by B.sessionid ";
        Vector<HashMap> hmr = this.doSpecialThing(SQL);
        datasession[] r = new datasession[ hmr.size()];
        r = this.getCValuesFromSpecifiedOpt(hmr, r);
        HashMap[] rr = new HashMap[ r.length ];
        for( int i = 0; i < r.length; i++ ) {
            rr[i] = new HashMap();
            rr[i].put("SES", r[i]);
            rr[i].put("COUNT", String.valueOf( hmr.get(i).get("count")) );
        }
        return rr;
    }
    
    public static void main( String[] args ) {
        datasessionDAO d = new datasessionDAO();
        HashMap[] ys = d.listSessions("20170606");
        for( HashMap y : ys ) {
            System.out.println( ((datasession)y.get("SES")).sampleTime + ":" + y.get("COUNT") );
        }
    }
        
}
