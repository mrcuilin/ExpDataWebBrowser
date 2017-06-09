<%@page import="experiment.DAO_mine.FluidbedDAOs.datasession"%>
<%@page import="experiment.DAO_mine.FluidbedDAOs.datasessionDAO"%>
<%@page import="java.util.HashMap"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="user-scaleable=yes, width=device-width" />
<title>Session List</title>
</head>
    <%@include file="consts.jspf" %>
    <%
        String DAY = request.getParameter("DAY");
    %>
<body style="margin:0px;padding:4px;">
    <div style="padding:3px;background-color:#EEE;" align='right'><a href="daylist.jsp?YEAR=<%= DAY.substring(0,4)%>">Go Back</a></div>
<div style="padding:10px;background-color:#AAA; border-bottom:1px solid #4D4D4D;">Exist Samples in Day <%= DAY %>:</div>
<%
    HashMap[] sessions = ( new datasessionDAO().listSessions( DAY ));
%>
<ul>
<%
    for( HashMap ds : sessions ) {
        datasession ses = ( datasession )ds.get("SES");
        String Count = (String)ds.get("COUNT");
 %>
 <li><%= ses.sampleTime %>(<%= Count %>)&nbsp;<a target='_blank' href='download.do?SES=<%= ses.sampleTime %>' style="font-size:small; color:darkgreen;">Download</a>&nbsp;
	<a target='_blank' href='showDataTable.jsp?SES=<%= ses.sampleTime %>'  style="font-size:small; color:navy;">SHOW</a>&nbsp;
	<span style="color:#FFF; font-size:4px"><a  style="color:lightgray; font-size:6px" target='_blank' href='SHOWGRAPH.jsp?SES=<%= ses.sampleTime %>'>Graph</a></span></li>
<% } %>
</ul>
</body>
</html>
