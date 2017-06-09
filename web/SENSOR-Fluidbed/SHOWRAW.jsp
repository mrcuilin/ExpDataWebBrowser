<%@page import="experiment.DAO_mine.FluidbedDAOs.sensordataDAO"%>
<%@page import="experiment.DAO_mine.FluidbedDAOs.sensordata"%>
<%@page import="Generic.CUtils"%>
var D=[
<%
    String sessionId = request.getParameter("SES");
    sensordata[] data = ( new sensordataDAO()).findBySession(sessionId);
    long TM = CUtils.getCalendarByString2(sessionId).getTimeInMillis() ;
    for( int i = 0; i < data.length; i++ ) {
        sensordata row = data[i];        
    	String RAW =  "[" +
        ( Long.valueOf( row.sampleTimeStamp) / 60000.0) +
         "," +
        row.sensor1 +
         "," +
        row.sensor2 +
         "," +
        row.sensor3 +
         "," +
        row.sensor4 +
         "," +
        row.sensor5 +
         "," +
        row.sensor6 +
        "]\r\n";
        
        if( i != 0 ) { %>
            <%= "," %>
        <% } %>
        <%= RAW %>
<%        
    }
%>
   
];
