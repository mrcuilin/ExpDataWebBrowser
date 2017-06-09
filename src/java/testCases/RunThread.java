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
public class RunThread extends Thread {

    public void testCase2() {
        StatusDAO sm = new StatusDAO();
        Status[] countStatus = sm.findByX_For_testcase(String.valueOf( Math.random() ));
        //for( CValue cm : countStatus ) {
            System.out.println( countStatus.length );
        //}
    }       
    
    public void testCase1() {
        StatusDAO sm = new StatusDAO();
        Status[] countStatus = sm.findByX_For_testcase(String.valueOf( Math.random() ));
        System.out.println( countStatus.length );
   
    }      
    @Override
    public void run() {
        super.run(); //To change body of generated methods, choose Tools | Templates.
        this.testCase2();
    }
    
    public static void main( String[] args ) {
        for( int i = 0 ;i < 30; i++ ) {
            RunThread ru = new RunThread();
            ru.start();
            System.out.println( "RUN Thread " + i );
        }
        System.out.print(true);
    }
    
}
