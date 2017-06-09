/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package experiment.DAO_mine.baseDAO;

import Generic.HashMap;
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
public class DataSessionDAO extends RealDAO_Proxy {

    @Override
    protected void setValueObjClass() {
        this.correspondValueObj = Datasession.class;
    }

    @Override
    protected void setTableName() {
        this.tableName = "datasession";
    }

    @Override
    protected void setKeyColumns() {
        this.idColumnName = "sessionid";
    }
    
    public String[] ListSessionYears( String sensorGroupId ){
        String SQL = "select sessionid from `" + this.tableName + "` where `s_sensorGroup`='" + sensorGroupId + "'";
        Vector<HashMap> sesids = this.doSpecialThing(SQL);
        HashSet<String> Years = new HashSet<String>();
        for( HashMap hm : sesids ) {
            String name = (String)hm.get("sessionid");
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

    public String[] ListSessionDays( String sensorGroupId, String year ){
        
        String SQL = "Select sessionid from `" + this.tableName + "` where `s_sensorGroup`='" + sensorGroupId + "' and sessionid like '" + year + "%'";
        Vector<HashMap> sesids = this.doSpecialThing(SQL);
        HashSet<String> Days = new HashSet<String>();
        for( HashMap hm : sesids ) {
            String name = (String)hm.get("sessionid");
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
    
    
    
    public static void main(String[] args) {
        /*
        String[] ListSessionYears = (new DataSessionDAO()).ListSessionYears("1");
        for( String i : ListSessionYears ) System.out.println(i);
        */
        
        /*
        Datasession[] l2 = ( new DataSessionDAO()).listSessions("1", "2007");
        for( Datasession i : l2 ) System.out.println(i.sessionid);
        */
        
        /*
        CValue fs = (new DataSessionDAO()).findById_Single("200712039013");
        System.out.println( ((Datasession)fs).s_beginTime );
        */
    }
}
