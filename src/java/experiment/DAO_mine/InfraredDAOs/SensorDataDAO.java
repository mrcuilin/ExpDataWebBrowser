/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package experiment.DAO_mine.InfraredDAOs;

import experiment.DAO_mine.TunnelDAOs.*;
import Generic.HashMap;
import experiment.RealDAO_Proxy;
import java.util.Vector;

/**
 *
 * @author cuilin
 */
public class SensorDataDAO extends experiment.DAO_mine.baseDAO.SensorDataDAO  {

    @Override
    protected void setTableName() {
        this.tableName = "sensordata_infr";
    }
    
}
