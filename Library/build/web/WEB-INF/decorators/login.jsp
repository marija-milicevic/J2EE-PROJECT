<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
 <head>
 <title><decorator:title default="Welcome to the Library"/></title>
 <link rel="stylesheet" href="css/tempCSS/960.css" type="text/css" media="screen" charset="utf-8" />
 <link rel="stylesheet" href="css/tempCSS/template.css" type="text/css" media="screen" charset="utf-8" />
 <link rel="stylesheet" href="css/tempCSS/colour.css" type="text/css" media="screen" charset="utf-8" />
 <decorator:head/>
 </head>
 <body>
 
 	<div id="head" align="center">
 		<img src="<c:url value="/img/library.gif"/>"/>
 	</div>
 	
 	<div id="content" class="container_16 clearfix">
	 	<table>
		<tr>
			<td>
				<p><decorator:body /></p>
			</td> 
		</tr>
		</table>
	</div>
	
	<div id="foot" align="center">				
		<a href="http://www.uib.es/">
		<img src="<c:url value="/img/copyright.gif"/>" width="15px" height="15px"/>
		UIB
		</a>
	</div>
	
 </body>
</html>