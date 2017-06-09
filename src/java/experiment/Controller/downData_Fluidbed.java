/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package experiment.Controller;

import experiment.DAO_mine.FluidbedDAOs.sensordata;
import experiment.DAO_mine.FluidbedDAOs.sensordataDAO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

/**
 *
 * @author cuilin
 */
public class downData_Fluidbed implements Controller {

    @Override
    public ModelAndView handleRequest(HttpServletRequest hsr, HttpServletResponse hsr1) throws Exception {
        /*
      res.setContentType(myExporter.getContentType());
      res.setHeader("Content-disposition", "attachment; filename=\"summary" + CUtils.getNow() + "." + this.fileFormat.toLowerCase() + "\"");
        */
        String SES = hsr.getParameter("SES");
        sensordata[] data = ( new sensordataDAO()).findBySession(SES);
        
        hsr1.setContentType("application/vnd.ms-excel");
        hsr1.setHeader("Content-disposition", "attachment; filename=\"FluidbedDryingData_" + SES + ".csv\"");
        hsr1.getOutputStream().print("Sample from " + SES + "\r\n");
        hsr1.getOutputStream().print("TimePoint, Sensor 1 Temp, Sensor 1 Humidity, Sensor 2 Temp, Sensor 2 Humidity, Sensor 3 Temp, Sensor 3 Humidity\r\n");
        for( sensordata d : data ) {
            hsr1.getOutputStream().print( "" + (d.sampleTimeStamp / 1000f) +"," + d.sensor1 +"," +d.sensor2 +"," + d.sensor3 +"," + d.sensor4 +"," + d.sensor5 +"," + d.sensor6 + "\r\n" );
            hsr1.getOutputStream().flush();
        }
        hsr1.getOutputStream().flush();
        hsr1.getOutputStream().close();
        return null;
    }
    
}
