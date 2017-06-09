<%@page import="experiment.DAO_mine.FluidbedDAOs.datasession"%>
<%@page import="experiment.DAO_mine.FluidbedDAOs.datasessionDAO"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="user-scaleable=yes, width=device-width" />
<title>Sample Day List</title>
</head>
<%@include file="consts.jspf" %>
<%
    datasessionDAO dao = new datasessionDAO();
    String[] years = dao.ListSessionYears() ;
%>    
<body style="margin:0px;padding:4px;">
    <div style="padding:3px;background-color:#EEE;" align='right'><a href="../">Go Back</a></div>
<div style="padding:10px;background-color:#AAA; border-bottom:1px solid #4D4D4D;">Exist Sample Years:</div>
<%
    for( String year : years ){
%>
    <li><a href='daylist.jsp?YEAR=<%= year %>'><%= year %></a></li>
<%
    }
%>
</body>
<ul>
</ul>
</body>
</html>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="user-scaleable=yes, width=device-width" />
<title>Sample Day List</title>
</head>


</html>

