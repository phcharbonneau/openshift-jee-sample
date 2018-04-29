<HTML>
<HEAD>
	<TITLE>Wildfly Max Threads</TITLE>
	<%@ page import="javax.servlet.http.HttpUtils,java.util.Enumeration" %>
	<%@ page import="java.lang.management.*" %>
	<%@ page import="java.util.*" %>
</HEAD>
<BODY>

<H1>Wildfly Max Threads</H1>
<img src="images/jbosscorp_logo.png">

<h2>JVM Memory Monitor Change Worked!</h2>
 
 
<table border="0" width="100%">
 
<tbody>
<tr>
<td colspan="2" align="center">
<h3>Memory MXBean</h3>
</td>
</tr>
 
<tr>
<td width="200">Heap Memory Usage</td>
<td>
<%=ManagementFactory.getMemoryMXBean().getHeapMemoryUsage()%>
</td>
</tr>
 
<tr>
<td>Non-Heap Memory Usage</td>
<td>
<%=ManagementFactory.getMemoryMXBean().getNonHeapMemoryUsage()%>
</td>
</tr>
 
<tr>
<td colspan="2"> </td>
</tr>
 
<tr>
<td colspan="2" align="center">
<h3>Memory Pool MXBeans</h3>
</td>
</tr>
 
</tbody>
</table>
<%
Iterator iter = ManagementFactory.getMemoryPoolMXBeans().iterator();
while (iter.hasNext()) {
MemoryPoolMXBean item = (MemoryPoolMXBean) iter.next();
%>
 
<table style="border: 1px #98AAB1 solid;" border="0" width="100%">
 
<tbody>
<tr>
<td colspan="2" align="center"><strong><%= item.getName() %></strong></td>
</tr>
 
<tr>
<td width="200">Type</td>
<td><%= item.getType() %></td>
</tr>
 
<tr>
<td>Usage</td>
<td><%= item.getUsage() %></td>
</tr>
 
<tr>
<td>Peak Usage</td>
<td><%= item.getPeakUsage() %></td>
</tr>
 
<tr>
<td>Collection Usage</td>
<td><%= item.getCollectionUsage() %></td>
</tr>
 
</tbody>
</table>
 
 


</BODY>
</HTML>