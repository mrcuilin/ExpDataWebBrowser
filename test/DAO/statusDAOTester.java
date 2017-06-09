/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import experiment.DAO_mine.baseDAO.Status;
import experiment.DAO_mine.baseDAO.StatusDAO;

/**
 *
 * @author cuilin
 */
public class statusDAOTester {

    public static void testFindByConds() {
        Status[] findByConds = (new StatusDAO()).findByConds("ENABLE", "1");
        System.out.println( findByConds[0].VALUE );        
    }
    
    public static void main(String[] args) {
        testFindByConds();
    }
}
