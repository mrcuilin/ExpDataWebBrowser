<%@page import="experiment.DAO_mine.TunnelDAOs.SensorDataDAO"%>
<%@page import="experiment.DAO_mine.baseDAO.Sensordata"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="user-scaleable=yes, width=device-width" />    
        <title>JSP Page</title>
    </head>
    <%@include file="consts.jspf" %>    
    <%
        String sessionId = request.getParameter("SES");
        Sensordata[] data = ( new SensorDataDAO()).findBySession(sessionId);
    %>
    <body>
        <%
            for( Sensordata d : data ) {
                %>
                <%= d.sampleTime %> : <%= d.d1 %> g ( Tare : <%= d.d2 %> g )<br />
                <%
            }
        %>
    </body>
</html>
