/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package experiment.DAO_mine.InfraredDAOs;

import experiment.DAO_mine.TunnelDAOs.*;
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
public class StatusDAO extends experiment.DAO_mine.baseDAO.StatusDAO {

    @Override
    protected void setTableName() {
        this.tableName = "status_infr";
    }

    public static void main(String[] args) {
        //(new StatusDAO()).StartSample("1");
        
        //(new StatusDAO()).EndSample("1");
    }
    
}
