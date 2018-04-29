<HTML>
<HEAD>
	<TITLE>Wildfly Max Threads</TITLE>
	<%@ page import="javax.servlet.http.HttpUtils,java.util.Enumeration" %>
	<%@ page import="java.lang.management.*" %>
	<%@ page import="java.util.*" %>
</HEAD>
<BODY>

<H1>Wildfly Thread about to sleep...</H1>
<img src="images/jbosscorp_logo.png">

<%

 try {
			Thread.sleep(60000);
		}
 catch (Throwable ignore){}

%>
 
 <H2>Completed!</H2>
 

 
 


</BODY>
</HTML>