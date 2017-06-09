<%@page import="experiment.DAO_mine.FluidbedDAOs.sensordataDAO"%>
<%@page import="experiment.DAO_mine.FluidbedDAOs.sensordata"%>
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
        sensordata[] data = ( new sensordataDAO()).findBySession(sessionId);
    %>
    <body>
        <%
            for( sensordata d : data ) {
                %>
                <%= d.sampleTimeStamp / 1000f %> : Sensor 1:<%= d.sensor1 %> C <%=d.sensor2 %>%;  Sensor 2 : <%= d.sensor3 %> C  <%= d.sensor4 %>%  sensor 3: <%= d.sensor5 %> C <%= d.sensor6 %>% <br />
                <%
            }
        %>
    </body>
</html>
