/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package testCases;

import experiment.DAO_mine.baseDAO.Status;
import experiment.DAO_mine.baseDAO.StatusDAO;

/**
 *
 * @author cuilin
 */
public class testCaseMineDAO {
    public static void testCase1() {
        StatusDAO sm = new StatusDAO();
        experiment.DAO_mine.baseDAO.Status[] countStatus = sm.findAll_FortestCase();
        for( Status cm : countStatus ) {
            System.out.println( ((experiment.DAO_mine.baseDAO.Status)cm).VALUE );
        }
   
    }    
    
    public static void testCase2() {
        StatusDAO sm = new StatusDAO();
        Status[] countStatus = sm.findAll_FortestCase();
        //for( CValue cm : countStatus ) {
            System.out.println( countStatus.length );
        //}
    }      
    public static void main(String[] args) {
        for( int i = 0; i < 8; i ++ )
            testCase2();
    }
}
