/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package experiment.Controller;

import experiment.DAO_mine.InfraredDAOs.SensorDataDAO;
import experiment.DAO_mine.baseDAO.Sensordata;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

/**
 *
 * @author cuilin
 */
public class downData_Infr1 implements Controller {

    @Override
    public ModelAndView handleRequest(HttpServletRequest hsr, HttpServletResponse hsr1) throws Exception {
        /*
      res.setContentType(myExporter.getContentType());
      res.setHeader("Content-disposition", "attachment; filename=\"summary" + CUtils.getNow() + "." + this.fileFormat.toLowerCase() + "\"");
        */
        String SES = hsr.getParameter("SES");
        Sensordata[] data = ( new SensorDataDAO()).findBySession(SES);
        
        hsr1.setContentType("application/vnd.ms-excel");
        hsr1.setHeader("Content-disposition", "attachment; filename=\"InfraredDryingData1_"
                + "" + SES + ".csv\"");
        hsr1.getOutputStream().print("Sample from " + SES + "\r\n");
        hsr1.getOutputStream().print("TimePoint, Sample-Time, Weight(g), Tare(g)\r\n");
        for( Sensordata d : data ) {
            hsr1.getOutputStream().print( "" + d.dataid + "," + d.sampleTime + "," + d.d1 + "," + d.d2 + "\r\n" );
            hsr1.getOutputStream().flush();
        }
        hsr1.getOutputStream().flush();
        hsr1.getOutputStream().close();
        return null;
    }
    
}
