<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="user-scaleable=yes, width=device-width">
<style>
.inputD {
    color:#000040;
	font-weight:bold;
	border:none;
	background-color:#EEE;
	border-bottom:solid #888 1px;
	font-size:9pt;
}
.inputL {
    color:blue;
	font-weight:normal;
	font-size:9pt;
}
</style></head>
<%
    String sessionId = request.getParameter("SES");
%>
<script language="javascript" src="../public/dygraph-combined-dev.js"></script>
<script language="javascript" src="SHOWRAW.jsp?SES=<%= sessionId %>"></script>
<body>
<div id=controls class=inputL style='margin-bottom:2px;'>
<B>[Abs Dry]</B> Weight:<input type=text name='MW' id='MW' value='4' size=3 class='inputD'>g&nbsp;
<B>[Difference Offset]</B>:<input type=text name='Offset' id='Offset' value='3' size=3 class='inputD'> Points&nbsp;
<input type=button value=' Recalculate ' onclick='recal()' /><input type=button value=' ZOOM Fit ' onclick='zoomFit()' /><span id='R'></span>
</div>
Drying Curve
<div id="g1" style="width:90%; height:50%; background-color:#F0F0F0;"><div style="text-align: left; position: relative; width: 1887px; height: 1032px;"><canvas width="1887" height="1032" style="position: absolute; width: 1887px; height: 1032px;"></canvas><canvas width="1887" height="1032" style="position: absolute; width: 1887px; height: 1032px;"></canvas><input type="text" size="2" style="display: none; position: absolute; z-index: 10; top: 987px; left: 57px;"><div class="dygraph-legend" style="position: absolute; font-size: 14px; z-index: 10; width: 250px; top: 0px; left: 1631px; line-height: normal; text-align: left; overflow: hidden; background: white;">29.3895166667:<span> <b><span style="color: rgb(128,109,0);">T1</span></b>:&nbsp;35.12</span><span> <b><span style="color: rgb(0,73,128);">H1</span></b>:&nbsp;1.57</span><span> <b><span style="color: rgb(36,128,0);">T2</span></b>:&nbsp;35.34</span><span> <b><span style="color: rgb(36,0,128);">H2</span></b>:&nbsp;1.57</span><span> <b><span style="color: rgb(0,128,73);">T3</span></b>:&nbsp;44.8</span></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 50px; line-height: normal; overflow: hidden; top: 998px; left: 3px; text-align: right;"><div class="dygraph-axis-label dygraph-axis-label-y">0</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 50px; line-height: normal; overflow: hidden; top: 948.778px; left: 3px; text-align: right;"><div class="dygraph-axis-label dygraph-axis-label-y">5</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 50px; line-height: normal; overflow: hidden; top: 892.556px; left: 3px; text-align: right;"><div class="dygraph-axis-label dygraph-axis-label-y">10</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 50px; line-height: normal; overflow: hidden; top: 836.333px; left: 3px; text-align: right;"><div class="dygraph-axis-label dygraph-axis-label-y">15</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 50px; line-height: normal; overflow: hidden; top: 780.111px; left: 3px; text-align: right;"><div class="dygraph-axis-label dygraph-axis-label-y">20</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 50px; line-height: normal; overflow: hidden; top: 723.889px; left: 3px; text-align: right;"><div class="dygraph-axis-label dygraph-axis-label-y">25</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 50px; line-height: normal; overflow: hidden; top: 667.667px; left: 3px; text-align: right;"><div class="dygraph-axis-label dygraph-axis-label-y">30</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 50px; line-height: normal; overflow: hidden; top: 611.444px; left: 3px; text-align: right;"><div class="dygraph-axis-label dygraph-axis-label-y">35</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 50px; line-height: normal; overflow: hidden; top: 555.222px; left: 3px; text-align: right;"><div class="dygraph-axis-label dygraph-axis-label-y">40</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 50px; line-height: normal; overflow: hidden; top: 499px; left: 3px; text-align: right;"><div class="dygraph-axis-label dygraph-axis-label-y">45</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 50px; line-height: normal; overflow: hidden; top: 442.778px; left: 3px; text-align: right;"><div class="dygraph-axis-label dygraph-axis-label-y">50</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 50px; line-height: normal; overflow: hidden; top: 386.556px; left: 3px; text-align: right;"><div class="dygraph-axis-label dygraph-axis-label-y">55</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 50px; line-height: normal; overflow: hidden; top: 330.333px; left: 3px; text-align: right;"><div class="dygraph-axis-label dygraph-axis-label-y">60</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 50px; line-height: normal; overflow: hidden; top: 274.111px; left: 3px; text-align: right;"><div class="dygraph-axis-label dygraph-axis-label-y">65</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 50px; line-height: normal; overflow: hidden; top: 217.889px; left: 3px; text-align: right;"><div class="dygraph-axis-label dygraph-axis-label-y">70</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 50px; line-height: normal; overflow: hidden; top: 161.667px; left: 3px; text-align: right;"><div class="dygraph-axis-label dygraph-axis-label-y">75</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 50px; line-height: normal; overflow: hidden; top: 105.444px; left: 3px; text-align: right;"><div class="dygraph-axis-label dygraph-axis-label-y">80</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 50px; line-height: normal; overflow: hidden; top: 49.2222px; left: 3px; text-align: right;"><div class="dygraph-axis-label dygraph-axis-label-y">85</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 60px; line-height: normal; overflow: hidden; text-align: center; top: 1015px; left: 106.097px;"><div class="dygraph-axis-label dygraph-axis-label-x">2</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 60px; line-height: normal; overflow: hidden; text-align: center; top: 1015px; left: 187.585px;"><div class="dygraph-axis-label dygraph-axis-label-x">4</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 60px; line-height: normal; overflow: hidden; text-align: center; top: 1015px; left: 269.074px;"><div class="dygraph-axis-label dygraph-axis-label-x">6</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 60px; line-height: normal; overflow: hidden; text-align: center; top: 1015px; left: 350.563px;"><div class="dygraph-axis-label dygraph-axis-label-x">8</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 60px; line-height: normal; overflow: hidden; text-align: center; top: 1015px; left: 432.052px;"><div class="dygraph-axis-label dygraph-axis-label-x">10</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 60px; line-height: normal; overflow: hidden; text-align: center; top: 1015px; left: 513.541px;"><div class="dygraph-axis-label dygraph-axis-label-x">12</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 60px; line-height: normal; overflow: hidden; text-align: center; top: 1015px; left: 595.029px;"><div class="dygraph-axis-label dygraph-axis-label-x">14</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 60px; line-height: normal; overflow: hidden; text-align: center; top: 1015px; left: 676.518px;"><div class="dygraph-axis-label dygraph-axis-label-x">16</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 60px; line-height: normal; overflow: hidden; text-align: center; top: 1015px; left: 758.007px;"><div class="dygraph-axis-label dygraph-axis-label-x">18</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 60px; line-height: normal; overflow: hidden; text-align: center; top: 1015px; left: 839.496px;"><div class="dygraph-axis-label dygraph-axis-label-x">20</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 60px; line-height: normal; overflow: hidden; text-align: center; top: 1015px; left: 920.985px;"><div class="dygraph-axis-label dygraph-axis-label-x">22</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 60px; line-height: normal; overflow: hidden; text-align: center; top: 1015px; left: 1002.47px;"><div class="dygraph-axis-label dygraph-axis-label-x">24</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 60px; line-height: normal; overflow: hidden; text-align: center; top: 1015px; left: 1083.96px;"><div class="dygraph-axis-label dygraph-axis-label-x">26</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 60px; line-height: normal; overflow: hidden; text-align: center; top: 1015px; left: 1165.45px;"><div class="dygraph-axis-label dygraph-axis-label-x">28</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 60px; line-height: normal; overflow: hidden; text-align: center; top: 1015px; left: 1246.94px;"><div class="dygraph-axis-label dygraph-axis-label-x">30</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 60px; line-height: normal; overflow: hidden; text-align: center; top: 1015px; left: 1328.43px;"><div class="dygraph-axis-label dygraph-axis-label-x">32</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 60px; line-height: normal; overflow: hidden; text-align: center; top: 1015px; left: 1409.92px;"><div class="dygraph-axis-label dygraph-axis-label-x">34</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 60px; line-height: normal; overflow: hidden; text-align: center; top: 1015px; left: 1491.41px;"><div class="dygraph-axis-label dygraph-axis-label-x">36</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 60px; line-height: normal; overflow: hidden; text-align: center; top: 1015px; left: 1572.89px;"><div class="dygraph-axis-label dygraph-axis-label-x">38</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 60px; line-height: normal; overflow: hidden; text-align: center; top: 1015px; left: 1654.38px;"><div class="dygraph-axis-label dygraph-axis-label-x">40</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 60px; line-height: normal; overflow: hidden; text-align: center; top: 1015px; left: 1735.87px;"><div class="dygraph-axis-label dygraph-axis-label-x">42</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 60px; line-height: normal; overflow: hidden; text-align: center; top: 1015px; left: 1817.36px;"><div class="dygraph-axis-label dygraph-axis-label-x">44</div></div></div></div>
Drying Speed Curve
<div id="g2" style="width:90%; height:50%; background-color:#F0F0F0;"><div style="text-align: left; position: relative; width: 1887px; height: 1032px;"><canvas width="1887" height="1032" style="position: absolute; width: 1887px; height: 1032px;"></canvas><canvas width="1887" height="1032" style="position: absolute; width: 1887px; height: 1032px;"></canvas><input type="text" size="2" style="display: none; position: absolute; z-index: 10; top: 987px; left: 57px;"><div class="dygraph-legend" style="position: absolute; font-size: 14px; z-index: 10; width: 250px; top: 0px; left: 1631px; line-height: normal; text-align: left; overflow: hidden; background: white;">29.3895166667:<span> <b><span style="color: rgb(128,109,0);">T1</span></b>:&nbsp;35.12</span><span> <b><span style="color: rgb(0,73,128);">H1</span></b>:&nbsp;1.57</span><span> <b><span style="color: rgb(36,128,0);">T2</span></b>:&nbsp;35.34</span><span> <b><span style="color: rgb(36,0,128);">H2</span></b>:&nbsp;1.57</span><span> <b><span style="color: rgb(0,128,73);">T3</span></b>:&nbsp;44.8</span></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 50px; line-height: normal; overflow: hidden; top: 998px; left: 3px; text-align: right;"><div class="dygraph-axis-label dygraph-axis-label-y">0</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 50px; line-height: normal; overflow: hidden; top: 948.778px; left: 3px; text-align: right;"><div class="dygraph-axis-label dygraph-axis-label-y">5</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 50px; line-height: normal; overflow: hidden; top: 892.556px; left: 3px; text-align: right;"><div class="dygraph-axis-label dygraph-axis-label-y">10</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 50px; line-height: normal; overflow: hidden; top: 836.333px; left: 3px; text-align: right;"><div class="dygraph-axis-label dygraph-axis-label-y">15</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 50px; line-height: normal; overflow: hidden; top: 780.111px; left: 3px; text-align: right;"><div class="dygraph-axis-label dygraph-axis-label-y">20</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 50px; line-height: normal; overflow: hidden; top: 723.889px; left: 3px; text-align: right;"><div class="dygraph-axis-label dygraph-axis-label-y">25</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 50px; line-height: normal; overflow: hidden; top: 667.667px; left: 3px; text-align: right;"><div class="dygraph-axis-label dygraph-axis-label-y">30</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 50px; line-height: normal; overflow: hidden; top: 611.444px; left: 3px; text-align: right;"><div class="dygraph-axis-label dygraph-axis-label-y">35</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 50px; line-height: normal; overflow: hidden; top: 555.222px; left: 3px; text-align: right;"><div class="dygraph-axis-label dygraph-axis-label-y">40</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 50px; line-height: normal; overflow: hidden; top: 499px; left: 3px; text-align: right;"><div class="dygraph-axis-label dygraph-axis-label-y">45</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 50px; line-height: normal; overflow: hidden; top: 442.778px; left: 3px; text-align: right;"><div class="dygraph-axis-label dygraph-axis-label-y">50</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 50px; line-height: normal; overflow: hidden; top: 386.556px; left: 3px; text-align: right;"><div class="dygraph-axis-label dygraph-axis-label-y">55</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 50px; line-height: normal; overflow: hidden; top: 330.333px; left: 3px; text-align: right;"><div class="dygraph-axis-label dygraph-axis-label-y">60</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 50px; line-height: normal; overflow: hidden; top: 274.111px; left: 3px; text-align: right;"><div class="dygraph-axis-label dygraph-axis-label-y">65</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 50px; line-height: normal; overflow: hidden; top: 217.889px; left: 3px; text-align: right;"><div class="dygraph-axis-label dygraph-axis-label-y">70</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 50px; line-height: normal; overflow: hidden; top: 161.667px; left: 3px; text-align: right;"><div class="dygraph-axis-label dygraph-axis-label-y">75</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 50px; line-height: normal; overflow: hidden; top: 105.444px; left: 3px; text-align: right;"><div class="dygraph-axis-label dygraph-axis-label-y">80</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 50px; line-height: normal; overflow: hidden; top: 49.2222px; left: 3px; text-align: right;"><div class="dygraph-axis-label dygraph-axis-label-y">85</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 60px; line-height: normal; overflow: hidden; text-align: center; top: 1015px; left: 106.097px;"><div class="dygraph-axis-label dygraph-axis-label-x">2</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 60px; line-height: normal; overflow: hidden; text-align: center; top: 1015px; left: 187.585px;"><div class="dygraph-axis-label dygraph-axis-label-x">4</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 60px; line-height: normal; overflow: hidden; text-align: center; top: 1015px; left: 269.074px;"><div class="dygraph-axis-label dygraph-axis-label-x">6</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 60px; line-height: normal; overflow: hidden; text-align: center; top: 1015px; left: 350.563px;"><div class="dygraph-axis-label dygraph-axis-label-x">8</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 60px; line-height: normal; overflow: hidden; text-align: center; top: 1015px; left: 432.052px;"><div class="dygraph-axis-label dygraph-axis-label-x">10</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 60px; line-height: normal; overflow: hidden; text-align: center; top: 1015px; left: 513.541px;"><div class="dygraph-axis-label dygraph-axis-label-x">12</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 60px; line-height: normal; overflow: hidden; text-align: center; top: 1015px; left: 595.029px;"><div class="dygraph-axis-label dygraph-axis-label-x">14</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 60px; line-height: normal; overflow: hidden; text-align: center; top: 1015px; left: 676.518px;"><div class="dygraph-axis-label dygraph-axis-label-x">16</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 60px; line-height: normal; overflow: hidden; text-align: center; top: 1015px; left: 758.007px;"><div class="dygraph-axis-label dygraph-axis-label-x">18</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 60px; line-height: normal; overflow: hidden; text-align: center; top: 1015px; left: 839.496px;"><div class="dygraph-axis-label dygraph-axis-label-x">20</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 60px; line-height: normal; overflow: hidden; text-align: center; top: 1015px; left: 920.985px;"><div class="dygraph-axis-label dygraph-axis-label-x">22</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 60px; line-height: normal; overflow: hidden; text-align: center; top: 1015px; left: 1002.47px;"><div class="dygraph-axis-label dygraph-axis-label-x">24</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 60px; line-height: normal; overflow: hidden; text-align: center; top: 1015px; left: 1083.96px;"><div class="dygraph-axis-label dygraph-axis-label-x">26</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 60px; line-height: normal; overflow: hidden; text-align: center; top: 1015px; left: 1165.45px;"><div class="dygraph-axis-label dygraph-axis-label-x">28</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 60px; line-height: normal; overflow: hidden; text-align: center; top: 1015px; left: 1246.94px;"><div class="dygraph-axis-label dygraph-axis-label-x">30</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 60px; line-height: normal; overflow: hidden; text-align: center; top: 1015px; left: 1328.43px;"><div class="dygraph-axis-label dygraph-axis-label-x">32</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 60px; line-height: normal; overflow: hidden; text-align: center; top: 1015px; left: 1409.92px;"><div class="dygraph-axis-label dygraph-axis-label-x">34</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 60px; line-height: normal; overflow: hidden; text-align: center; top: 1015px; left: 1491.41px;"><div class="dygraph-axis-label dygraph-axis-label-x">36</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 60px; line-height: normal; overflow: hidden; text-align: center; top: 1015px; left: 1572.89px;"><div class="dygraph-axis-label dygraph-axis-label-x">38</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 60px; line-height: normal; overflow: hidden; text-align: center; top: 1015px; left: 1654.38px;"><div class="dygraph-axis-label dygraph-axis-label-x">40</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 60px; line-height: normal; overflow: hidden; text-align: center; top: 1015px; left: 1735.87px;"><div class="dygraph-axis-label dygraph-axis-label-x">42</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 60px; line-height: normal; overflow: hidden; text-align: center; top: 1015px; left: 1817.36px;"><div class="dygraph-axis-label dygraph-axis-label-x">44</div></div></div></div>
Raw Data
<div id="g3" style="width:90%; height:50%; background-color:#F0F0F0;"><div style="text-align: left; position: relative; width: 1887px; height: 1032px;"><canvas width="1887" height="1032" style="position: absolute; width: 1887px; height: 1032px;"></canvas><canvas width="1887" height="1032" style="position: absolute; width: 1887px; height: 1032px;"></canvas><input type="text" size="2" style="display: none; position: absolute; z-index: 10; top: 987px; left: 57px;"><div class="dygraph-legend" style="position: absolute; font-size: 14px; z-index: 10; width: 250px; top: 0px; left: 1631px; line-height: normal; text-align: left; overflow: hidden; background: white;">29.3895166667:<span> <b><span style="color: rgb(128,109,0);">T1</span></b>:&nbsp;35.12</span><span> <b><span style="color: rgb(0,73,128);">H1</span></b>:&nbsp;1.57</span><span> <b><span style="color: rgb(36,128,0);">T2</span></b>:&nbsp;35.34</span><span> <b><span style="color: rgb(36,0,128);">H2</span></b>:&nbsp;1.57</span><span> <b><span style="color: rgb(0,128,73);">T3</span></b>:&nbsp;44.8</span></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 50px; line-height: normal; overflow: hidden; top: 998px; left: 3px; text-align: right;"><div class="dygraph-axis-label dygraph-axis-label-y">0</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 50px; line-height: normal; overflow: hidden; top: 948.778px; left: 3px; text-align: right;"><div class="dygraph-axis-label dygraph-axis-label-y">5</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 50px; line-height: normal; overflow: hidden; top: 892.556px; left: 3px; text-align: right;"><div class="dygraph-axis-label dygraph-axis-label-y">10</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 50px; line-height: normal; overflow: hidden; top: 836.333px; left: 3px; text-align: right;"><div class="dygraph-axis-label dygraph-axis-label-y">15</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 50px; line-height: normal; overflow: hidden; top: 780.111px; left: 3px; text-align: right;"><div class="dygraph-axis-label dygraph-axis-label-y">20</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 50px; line-height: normal; overflow: hidden; top: 723.889px; left: 3px; text-align: right;"><div class="dygraph-axis-label dygraph-axis-label-y">25</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 50px; line-height: normal; overflow: hidden; top: 667.667px; left: 3px; text-align: right;"><div class="dygraph-axis-label dygraph-axis-label-y">30</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 50px; line-height: normal; overflow: hidden; top: 611.444px; left: 3px; text-align: right;"><div class="dygraph-axis-label dygraph-axis-label-y">35</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 50px; line-height: normal; overflow: hidden; top: 555.222px; left: 3px; text-align: right;"><div class="dygraph-axis-label dygraph-axis-label-y">40</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 50px; line-height: normal; overflow: hidden; top: 499px; left: 3px; text-align: right;"><div class="dygraph-axis-label dygraph-axis-label-y">45</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 50px; line-height: normal; overflow: hidden; top: 442.778px; left: 3px; text-align: right;"><div class="dygraph-axis-label dygraph-axis-label-y">50</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 50px; line-height: normal; overflow: hidden; top: 386.556px; left: 3px; text-align: right;"><div class="dygraph-axis-label dygraph-axis-label-y">55</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 50px; line-height: normal; overflow: hidden; top: 330.333px; left: 3px; text-align: right;"><div class="dygraph-axis-label dygraph-axis-label-y">60</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 50px; line-height: normal; overflow: hidden; top: 274.111px; left: 3px; text-align: right;"><div class="dygraph-axis-label dygraph-axis-label-y">65</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 50px; line-height: normal; overflow: hidden; top: 217.889px; left: 3px; text-align: right;"><div class="dygraph-axis-label dygraph-axis-label-y">70</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 50px; line-height: normal; overflow: hidden; top: 161.667px; left: 3px; text-align: right;"><div class="dygraph-axis-label dygraph-axis-label-y">75</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 50px; line-height: normal; overflow: hidden; top: 105.444px; left: 3px; text-align: right;"><div class="dygraph-axis-label dygraph-axis-label-y">80</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 50px; line-height: normal; overflow: hidden; top: 49.2222px; left: 3px; text-align: right;"><div class="dygraph-axis-label dygraph-axis-label-y">85</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 60px; line-height: normal; overflow: hidden; text-align: center; top: 1015px; left: 106.097px;"><div class="dygraph-axis-label dygraph-axis-label-x">2</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 60px; line-height: normal; overflow: hidden; text-align: center; top: 1015px; left: 187.585px;"><div class="dygraph-axis-label dygraph-axis-label-x">4</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 60px; line-height: normal; overflow: hidden; text-align: center; top: 1015px; left: 269.074px;"><div class="dygraph-axis-label dygraph-axis-label-x">6</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 60px; line-height: normal; overflow: hidden; text-align: center; top: 1015px; left: 350.563px;"><div class="dygraph-axis-label dygraph-axis-label-x">8</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 60px; line-height: normal; overflow: hidden; text-align: center; top: 1015px; left: 432.052px;"><div class="dygraph-axis-label dygraph-axis-label-x">10</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 60px; line-height: normal; overflow: hidden; text-align: center; top: 1015px; left: 513.541px;"><div class="dygraph-axis-label dygraph-axis-label-x">12</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 60px; line-height: normal; overflow: hidden; text-align: center; top: 1015px; left: 595.029px;"><div class="dygraph-axis-label dygraph-axis-label-x">14</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 60px; line-height: normal; overflow: hidden; text-align: center; top: 1015px; left: 676.518px;"><div class="dygraph-axis-label dygraph-axis-label-x">16</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 60px; line-height: normal; overflow: hidden; text-align: center; top: 1015px; left: 758.007px;"><div class="dygraph-axis-label dygraph-axis-label-x">18</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 60px; line-height: normal; overflow: hidden; text-align: center; top: 1015px; left: 839.496px;"><div class="dygraph-axis-label dygraph-axis-label-x">20</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 60px; line-height: normal; overflow: hidden; text-align: center; top: 1015px; left: 920.985px;"><div class="dygraph-axis-label dygraph-axis-label-x">22</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 60px; line-height: normal; overflow: hidden; text-align: center; top: 1015px; left: 1002.47px;"><div class="dygraph-axis-label dygraph-axis-label-x">24</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 60px; line-height: normal; overflow: hidden; text-align: center; top: 1015px; left: 1083.96px;"><div class="dygraph-axis-label dygraph-axis-label-x">26</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 60px; line-height: normal; overflow: hidden; text-align: center; top: 1015px; left: 1165.45px;"><div class="dygraph-axis-label dygraph-axis-label-x">28</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 60px; line-height: normal; overflow: hidden; text-align: center; top: 1015px; left: 1246.94px;"><div class="dygraph-axis-label dygraph-axis-label-x">30</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 60px; line-height: normal; overflow: hidden; text-align: center; top: 1015px; left: 1328.43px;"><div class="dygraph-axis-label dygraph-axis-label-x">32</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 60px; line-height: normal; overflow: hidden; text-align: center; top: 1015px; left: 1409.92px;"><div class="dygraph-axis-label dygraph-axis-label-x">34</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 60px; line-height: normal; overflow: hidden; text-align: center; top: 1015px; left: 1491.41px;"><div class="dygraph-axis-label dygraph-axis-label-x">36</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 60px; line-height: normal; overflow: hidden; text-align: center; top: 1015px; left: 1572.89px;"><div class="dygraph-axis-label dygraph-axis-label-x">38</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 60px; line-height: normal; overflow: hidden; text-align: center; top: 1015px; left: 1654.38px;"><div class="dygraph-axis-label dygraph-axis-label-x">40</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 60px; line-height: normal; overflow: hidden; text-align: center; top: 1015px; left: 1735.87px;"><div class="dygraph-axis-label dygraph-axis-label-x">42</div></div><div style="position: absolute; font-size: 14px; z-index: 10; color: black; width: 60px; line-height: normal; overflow: hidden; text-align: center; top: 1015px; left: 1817.36px;"><div class="dygraph-axis-label dygraph-axis-label-x">44</div></div></div></div>

<script language="javascript">
	function $( ID ) {
		return self.document.getElementById( ID );
	}
	function V( ID ) {
		var X = $( ID ).value;
		return parseFloat( X );
	}
        
  function calculateStandardAirFlow() {   // UNIT L/min 
	var K_Rol = 1.017; //For N2;
	var K_P = Math.sqrt((V("AP")*1e6 + 101325 )/101325);	
	var K_T = Math.sqrt( 293.15 / ( V("AT") + 273.15 ));
	return V("AF") * K_Rol * K_P * K_T;
  }
  
  function calculateOutletAirFlow( AF, T ) {
	return AF * ( T + 273.15 )/ 293.15;
  }
  
  function AbsHumidity( H, T ) { //UNIT g/m3
	var AH = H * 0.01 * 6.11 * 100 * 
	         Math.pow(10,(7.5*T/(T + 237.3)))
			 * 1000 / (461.52* ( T +273.15 ));
	return AH;
  }
  
  function AbsWaterLoss( AH, AF, t ) {	
	//UNIT  g/m3 , L / min, ms
	//Output Unit g
	return t / 1000 / 60 * AF / 1000 * AH;
  }
  
  function calculateDringCurve() {		
	var OutD = [];
	var DryWeight = V("MW");
        for( var i = 0; i < D.length-1; i++ ) {
		var DH = ( D[i][1] - DryWeight) / DryWeight;

                OutD[i] = [];
		OutD[i][0] = D[i+1][0];
		OutD[i][1] = DH;
	}
	return OutD;
  }
  
  function calculateDryingSpeedCurve() {
	var OutD = [];
	var offset = V("Offset");
	var DryWeight = V("MW");
	var ind = 0;
    for( var i = 0; i < D.length-offset; i++ ) {
		if( D[i][1] == -200 || D[i+offset][1]==-200) continue;
		var TimeInterval = D[i+offset][0]-D[i][0] ;
		var W = D[i+offset][1];
		var WLoss = D[i+offset][1] - D[i][1];
		var DSpeed = - WLoss / TimeInterval;
        var DH = ( W - DryWeight ) / DryWeight;
                
        OutD[ind] = [];
		OutD[ind][0] = DH;
		OutD[ind][1] = DSpeed;
		ind++;
	}  
	
	OutD.sort( function( a, b ) {
		return a[0]-b[0];
	} );
	return OutD;
  }
 
 function recal() {
	 var HT_Curve = calculateDringCurve();
	 var DST_Curve = calculateDryingSpeedCurve();
	 //for( var i = 0; i < GraphData.length; i++ ) { GraphData[i][0] = GraphData[i][0] / 60000.0 }
	 var g1 = new Dygraph( document.getElementById("g1"),
		  HT_Curve,
		  { 
			  labels: ["Time(m)","Water-Content"],
			  visibility:[true,true],
			  valueRange:[0,2],
		  }
		 );
		 
	 var g2 = new Dygraph( document.getElementById("g2"),
		  DST_Curve,
		  { 
			  labels: ["Water-Content","Drying Speed"],
			  visibility:[true],
			  valueRange:[0,0.5],
		  }
		 );	 
 }
 
 function zoomFit() {
    var HT_Curve = calculateDringCurve();
    var DST_Curve = calculateDryingSpeedCurve();
    var localD = D;
    
    var HT_Min = HT_Curve[0][1];
    var HT_Max = HT_Curve[0][1];
    for( var i = 0; i < HT_Curve.length; i++  ) {
        if( HT_Min > HT_Curve[i][1] ) HT_Min = HT_Curve[i][1];
        if( HT_Max < HT_Curve[i][1] ) HT_Max = HT_Curve[i][1];
    }
    HT_Min = HT_Min - ( HT_Max - HT_Min ) * 0.1;
    HT_Max = HT_Max + ( HT_Max - HT_Min ) * 0.1;
    
    var DST_Min = DST_Curve[0][1];
    var DST_Max = DST_Curve[0][1];
    for( var i = 0; i < DST_Curve.length; i++  ) {
        if( DST_Min > DST_Curve[i][1] ) DST_Min = DST_Curve[i][1];
        if( DST_Max < DST_Curve[i][1] ) DST_Max = DST_Curve[i][1];
    }
    DST_Min = DST_Min - ( DST_Max - DST_Min ) * 0.1;
    DST_Max = DST_Max + ( DST_Max - DST_Min ) * 0.1;

    var D_Min = localD[0][1];
    var D_Max = localD[0][1];
    for( var i = 0; i < localD.length; i++  ) {
        if( D_Min > localD[i][1] ) D_Min = localD[i][1];
        if( D_Max < localD[i][1] ) D_Max = localD[i][1];
    }
    D_Min = D_Min - ( D_Max - D_Min ) * 0.1;
    D_Max = D_Max + ( D_Max - D_Min ) * 0.1;

    
	 var g1 = new Dygraph( document.getElementById("g1"),
		  HT_Curve,
		  { 
			  labels: ["Time(m)","Water-Content"],
			  visibility:[true,true],
			  valueRange:[HT_Min,HT_Max],
		  }
		 );
		 
	 var g2 = new Dygraph( document.getElementById("g2"),
		  DST_Curve,
		  { 
			  labels: ["Water-Content","Drying Speed"],
			  visibility:[true],
			  valueRange:[DST_Min, DST_Max],
		  }
		 );    
  var g3 = new Dygraph( document.getElementById("g3"),
	  D,
      { 
	      labels: ["Time(m)","Weight"],
		  visibility:[true ],
		  valueRange:[D_Min, D_Max],
      }
	 );         

}
    
    
  var g3 = new Dygraph( document.getElementById("g3"),
	  D,
      { 
	      labels: ["Time(m)","Weight"],
		  visibility:[true ],
		  valueRange:[0,15],
      }
	 );
 recal();
</script>
</body></html>