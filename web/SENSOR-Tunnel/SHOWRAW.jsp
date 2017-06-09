<%@page import="Generic.CUtils"%>
<%@page import="experiment.DAO_mine.TunnelDAOs.SensorDataDAO"%>
<%@page import="experiment.DAO_mine.baseDAO.Sensordata"%>
var D=[
<%
    String sessionId = request.getParameter("SES");
    Sensordata[] data = ( new SensorDataDAO()).findBySession(sessionId);
    long TM = CUtils.getCalendarByString2(sessionId).getTimeInMillis() ;
    for( int i = 0; i < data.length; i++ ) {
        Sensordata d = data[i];        
        String RAW = "[" + (( ( Double.parseDouble(d.dataid ) * 1000f - TM ) / 60.0f ) / 1000.0f ) + ","
                    + d.d1 + "]";
        if( i != 0 ) { %>
            <%= "," %>
        <% } %>
        <%= RAW %>
<%        
    }
%>
];
